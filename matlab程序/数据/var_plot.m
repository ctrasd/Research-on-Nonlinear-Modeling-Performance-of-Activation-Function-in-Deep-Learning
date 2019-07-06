data=zeros(3,30);
data(1,:)=xlsread('方差_layer2.xlsx','A1:A30');
data(2,:)=xlsread('方差_layer2.xlsx','B1:B30');
data(3,:)=xlsread('方差_layer2.xlsx','C1:C30');

plot([1:2:60],data(1,:),'LineWidth',3);
hold on;
plot([1:2:60],data(2,:),'LineWidth',3);
hold on;
plot([1:2:60],data(3,:),'LineWidth',3);
xlabel('训练步数');
ylabel('15组数据测试准确率方差');
%title('三种激活函数下15组数据60轮训练下测试准确率方差曲线图');
legend('sigmoid','relu','tanh');