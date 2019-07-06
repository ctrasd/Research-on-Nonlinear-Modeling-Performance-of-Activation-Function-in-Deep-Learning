import torch.nn as nn
import torch as t
import torch.nn.functional as F
from torch.autograd import Variable
import torch.optim as optim
from torchvision.datasets import MNIST
import torchvision
import numpy as np
from tensorboardX import SummaryWriter
import cv2

class Net(nn.Module):
	"""docstring for Net"""
	def __init__(self):
		super(Net, self).__init__()
		self.conv1=nn.Conv2d(1,6,5)
		self.conv2=nn.Conv2d(6,16,5)
		# 全连接层 
		self.fc1=nn.Linear(16*5*5,120)
		self.fc2=nn.Linear(120,84)
		self.fc3=nn.Linear(84,10)

	def forward(self,x):
		x=F.max_pool2d(F.relu(self.conv1(x)),(2,2))
		x=F.max_pool2d(F.relu(self.conv2(x)),2)
		x=x.view(x.size()[0],-1)
		x=F.relu(self.fc1(x))
		x=F.relu(self.fc2(x))
		x=self.fc3(x)
		return x

if __name__ == '__main__':

	batch_size=64

	trans_img = transforms.ToTensor()
	trainset = MNIST('./data', train=True, transform=trans_img)
	testset = MNIST('./data', train=False, transform=trans_img)
	trainloader = DataLoader(trainset, batch_size=batch_size, shuffle=True, num_workers=4)
	testloader = DataLoader(testset, batch_size=batch_size, shuffle=False, num_workers=4)
	writer=SummaryWriter(comment='lenet_mnist_relu')
	net=Net()
	print(type(net))
	print(net)
	params=list(net.parameters())
	criterion = nn.CrossEntropyLoss() # 交叉熵损失函数
	optimizer = optim.SGD(net.parameters(), lr=0.01, momentum=0.02)
	print('start!')
	for i in xrange(1,10):
		pass