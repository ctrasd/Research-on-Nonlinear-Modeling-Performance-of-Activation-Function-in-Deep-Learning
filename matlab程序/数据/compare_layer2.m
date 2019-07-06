tc_sigmoid(1,:)=xlsread(['D:\毕业设计\matlab程序\数据\sigmoid_layer2\','tc_0.01.csv'],'C2:C31');
tc_sigmoid(2,:)=xlsread(['D:\毕业设计\matlab程序\数据\sigmoid_layer2\','tc_0.05.csv'],'C2:C31');
tc_sigmoid(3,:)=xlsread(['D:\毕业设计\matlab程序\数据\sigmoid_layer2\','tc_0.1.csv'],'C2:C31');
tc_relu(1,:)=xlsread(['D:\毕业设计\matlab程序\数据\relu_layer2\','tc_0.01.csv'],'C2:C31');
tc_relu(2,:)=xlsread(['D:\毕业设计\matlab程序\数据\relu_layer2\','tc_0.05.csv'],'C2:C31');
tc_relu(3,:)=xlsread(['D:\毕业设计\matlab程序\数据\relu_layer2\','tc_0.1.csv'],'C2:C31');
tc_tanh(1,:)=xlsread(['D:\毕业设计\matlab程序\数据\tanh_layer2\','tc_0.01.csv'],'C2:C31');
tc_tanh(2,:)=xlsread(['D:\毕业设计\matlab程序\数据\tanh_layer2\','tc_0.05.csv'],'C2:C31');
tc_tanh(3,:)=xlsread(['D:\毕业设计\matlab程序\数据\tanh_layer2\','tc_0.1.csv'],'C2:C31');

subplot(1,3,1);
plot(2*[1:30],tc_sigmoid(1,:)/100,'LineWidth',3);
hold on;
plot(2*[1:30],tc_relu(1,:)/100,'LineWidth',3);
hold on;
plot(2*[1:30],tc_tanh(1,:)/100,'LineWidth',3);
%title('学习率为0.01时使用三种激活函数测试集上准确率曲线图');
ylabel('准确率');
xlabel('训练步数');
legend('sigmoid','relu','tanh');

subplot(1,3,2);
plot(2*[1:30],tc_sigmoid(2,:)/100,'LineWidth',3);
hold on;
plot(2*[1:30],tc_relu(2,:)/100,'LineWidth',3);
hold on;
plot(2*[1:30],tc_tanh(2,:)/100,'LineWidth',3);
%title('学习率为0.05时使用三种激活函数测试集上准确率曲线图');
ylabel('准确率');
xlabel('训练步数');
legend('sigmoid','relu','tanh');

subplot(1,3,3);
plot(2*[1:30],tc_sigmoid(3,:)/100,'LineWidth',3);
hold on;
plot(2*[1:30],tc_relu(3,:)/100,'LineWidth',3);
hold on;
plot(2*[1:30],tc_tanh(3,:)/100,'LineWidth',3);
%title('学习率为0.1时使用三种激活函数测试集上准确率曲线图');
ylabel('准确率');
xlabel('训练步数');
legend('sigmoid','relu','tanh');