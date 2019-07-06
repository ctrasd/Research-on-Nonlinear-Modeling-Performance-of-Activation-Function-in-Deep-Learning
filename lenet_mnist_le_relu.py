import torch.nn as nn
import torch as t
import torch.nn.functional as F
from torch.autograd import Variable
import torch.optim as optim
from torchvision.transforms import ToPILImage
import matplotlib.pyplot as plt
from torchvision.datasets import MNIST
from torch.utils.data import DataLoader
import torchvision
import numpy as np
from tensorboardX import SummaryWriter
import cv2
import torchvision as tv
import torchvision.transforms as transforms
from torch.autograd import Variable as V

def imshow(img):
		img = img / 2 + 0.5
		npimg = img.numpy()
		plt.imshow(np.transpose(npimg, (1, 2, 0)))



class Net(nn.Module):
	"""docstring for Net"""
    # 28*28
	def __init__(self):
		super(Net, self).__init__()
		self.fc1=nn.Linear(784,100)
		self.fc2=nn.Linear(100,100)
		self.fc3=nn.Linear(100,10)

	def sigmoid(self,x):
		#print(type(x))
		#print(x.size())
		#rt=1 / (1 + t.exp(-x/self.T))
		rt=1/(1+t.exp(-x)/0.2)
		return rt
	

	def forward(self,x):
		x=x.view(x.size()[0],-1)
		x=F.leaky_relu(self.fc1(x),0.1)
		x=F.leaky_relu(self.fc2(x),0.1)
		x=self.fc3(x)
		return x

if __name__ == '__main__':

	epoch_num=60
	learning_rate=0.01
	batch_size=64
	trans_img = transforms.ToTensor()
	trainset = MNIST('./data', train=True, transform=trans_img,download=True)
	testset = MNIST('./data', train=False, transform=trans_img,download=True)
	trainloader = DataLoader(trainset, batch_size=batch_size, shuffle=True, num_workers=0)
	testloader = DataLoader(testset, batch_size=batch_size, shuffle=False, num_workers=0)
	
	(data, label) = trainset[0]
	print(data.size())
	print(label)
	print(type(torchvision.utils.make_grid(data)))
	imshow(torchvision.utils.make_grid(data))
	plt.show()

	writer=SummaryWriter(comment='layer2_mnist_leaky_relu')
	net=Net()
	print(type(net))
	print(net)

	params=list(net.parameters())
	#print(net.named_parameters)
	#for k in net.named_parameters():
	#	print(k)
	
	criterion = nn.CrossEntropyLoss() # 交叉熵损失函数
	optimizer = optim.SGD(net.parameters(), lr=learning_rate, momentum=0.02)
	print('start!')
	idx=0
	idc=0
	total=0
	for epoch in range(epoch_num):
		correct=0
		total=0
		running_loss=0
		for i,data in enumerate(trainloader, 0):
			
			inputs, labels = data
			optimizer.zero_grad()
        
        # forward + backward 
			outputs = net(inputs)
			loss = criterion(outputs, labels)
			running_loss += loss.item()
			loss.backward()   
			_, predicted = t.max(outputs, 1)
			correct += (predicted == labels).sum()
			total+=labels.size(0)
        # 更新参数 
			optimizer.step()
        
			# 打印log信息
        # loss 是一个scalar,需要使用loss.item()来获取数值，不能使用loss[0]
			idx=idx+1
			if i % 50 == 49: # 每50个batch打印一下训练状态
				print('[%d, %5d] loss: %.3f' \
					 % (epoch+1, i+1, running_loss))
				writer.add_scalar('scalar/leaky_relu_running_loss',running_loss, idx)
				running_loss = 0.0
				print('准确率为： %.2f %%'%(100*correct/total))
				writer.add_scalar('scalar/leaky_relu_running_correct',(100.0*correct/total), idx)
				correct = 0 
				total = 0
				#print('T:',net.T)
		total=0
		correct=0
		if epoch%2==0:
			idc=idc+1
			#t.save(net.state_dict(), 'model_dict_zheng.pkl')
			#print(epoch,' saved')
			with t.no_grad():
				for data in testloader:
					images, labels = data
					outputs = net(images)
					_, predicted = t.max(outputs, 1)
					total += labels.size(0)
					correct += (predicted == labels).sum()
				print('测试准确率为： %.2f %%'%(100*correct/total))
				writer.add_scalar('scalar/leaky_relu_test_correct',(100.0*correct/total), idc)
	print('Finished Training')

	dataiter = iter(testloader)
	images, labels = dataiter.next() # 一个batch返回2张图片
	print(type(images))
	print(images.size())
	print('实际的label: ', ' '.join(\
			'%08s'%labels[j] for j in range(64)))
	imshow(tv.utils.make_grid(images))
	plt.show()

	# 计算图片在每个类别上的分数
	outputs = net(images)
	# 得分最高的那个类
	_, predicted = t.max(outputs.data, 1)

	print('预测结果: ', ' '.join('%5s'\
		% predicted[j] for j in range(64)))
	total=0
	correct=0
	with t.no_grad():
		for data in testloader:
			images, labels = data
			outputs = net(images)
			_, predicted = t.max(outputs, 1)
			total += labels.size(0)
			correct += (predicted == labels).sum()

	print('10000张测试集中的准确率为: %.2f %%' % (100 * correct / total))
	