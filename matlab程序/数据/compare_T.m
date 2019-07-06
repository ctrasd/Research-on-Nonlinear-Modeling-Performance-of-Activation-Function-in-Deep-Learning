tc_sigmoid_T(1,:)=xlsread(['D:\毕业设计\matlab程序\数据\sigmoid_T_layer2\','tc_0.01.csv'],'C2:C31');
tc_sigmoid_T(2,:)=xlsread(['D:\毕业设计\matlab程序\数据\sigmoid_T_layer2\','tc_0.05.csv'],'C2:C31');
tc_sigmoid_T(3,:)=xlsread(['D:\毕业设计\matlab程序\数据\sigmoid_T_layer2\','tc_0.1.csv'],'C2:C31');
tc_relu(1,:)=xlsread(['D:\毕业设计\matlab程序\数据\relu_layer2\','tc_0.01.csv'],'C2:C31');
tc_relu(2,:)=xlsread(['D:\毕业设计\matlab程序\数据\relu_layer2\','tc_0.05.csv'],'C2:C31');
tc_relu(3,:)=xlsread(['D:\毕业设计\matlab程序\数据\relu_layer2\','tc_0.1.csv'],'C2:C31');

subplot(2,3,1);
plot(2*[1:30],tc_sigmoid_T(1,:)/100,'LineWidth',3);
hold on;
plot(2*[1:30],tc_relu(1,:)/100,'LineWidth',3);
title('双隐藏层BP网络学习率为0.01时测试集准确率图');
ylabel('准确率');
xlabel('训练步数');
legend('sigmoid\_T','relu');

subplot(2,3,2);
plot(2*[1:30],tc_sigmoid_T(2,:)/100,'LineWidth',3);
hold on;
plot(2*[1:30],tc_relu(2,:)/100,'LineWidth',3);
title('双隐藏层BP网络学习率为0.05时测试集准确率图');
ylabel('准确率');
xlabel('训练步数');
legend('sigmoid\_T','relu');


subplot(2,3,3);
plot(2*[1:30],tc_sigmoid_T(3,:)/100,'LineWidth',3);
hold on;
plot(2*[1:30],tc_relu(3,:)/100,'LineWidth',3);
title('双隐藏层网BP络学习率为0.1时测试集准确率图');
ylabel('准确率');
xlabel('训练步数');
legend('sigmoid\_T','relu');

tc_sigmoid_T=zeros(3,15);
tc_relu=zeros(3,15);
tc_sigmoid_T(1,:)=xlsread(['D:\毕业设计\matlab程序\数据\sigmod_T_lenet\','tc_0.01.csv'],'C2:C16');
tc_sigmoid_T(2,:)=xlsread(['D:\毕业设计\matlab程序\数据\sigmod_T_lenet\','tc_0.05.csv'],'C2:C16');
tc_sigmoid_T(3,:)=xlsread(['D:\毕业设计\matlab程序\数据\sigmod_T_lenet\','tc_0.1.csv'],'C2:C16');
tc_relu(1,:)=xlsread(['D:\毕业设计\matlab程序\数据\relu_lenet\','tc_0.01.csv'],'C2:C16');
tc_relu(2,:)=xlsread(['D:\毕业设计\matlab程序\数据\relu_lenet\','tc_0.05.csv'],'C2:C16');
tc_relu(3,:)=xlsread(['D:\毕业设计\matlab程序\数据\relu_lenet\','tc_0.1.csv'],'C2:C16');

subplot(2,3,4);
plot(2*[1:15],tc_sigmoid_T(1,:)/100,'LineWidth',3);
hold on;
plot(2*[1:15],tc_relu(1,:)/100,'LineWidth',3);
title('lenet卷积网络学习率为0.01时测试集准确率图');
ylabel('准确率');
xlabel('训练步数');
legend('sigmoid\_T','relu');

subplot(2,3,5);
plot(2*[1:15],tc_sigmoid_T(2,:)/100,'LineWidth',3);
hold on;
plot(2*[1:15],tc_relu(2,:)/100,'LineWidth',3);
title('lenet卷积网络学习率为0.05时测试集准确率图');
ylabel('准确率');
xlabel('训练步数');
legend('sigmoid\_T','relu');


subplot(2,3,6);
plot(2*[1:15],tc_sigmoid_T(3,:)/100,'LineWidth',3);
hold on;
plot(2*[1:15],tc_relu(3,:)/100,'LineWidth',3);
title('lenet卷积网络学习率为0.1时测试集准确率图');
ylabel('准确率');
xlabel('训练步数');
legend('sigmoid\_T','relu');
