data=zeros(3,1159);
data(1,1:1148)=xlsread('\数据\T.csv','A1:A1148');
data(2,1:1159)=xlsread('\数据\T.csv','B1:B1159');
data(3,1:1148)=xlsread('\数据\T.csv','C1:C1148');

plot(2*[1:1159],data(2,:)/100,'LineWidth',1.2);
xlabel('训练batch数');
ylabel('训练集上准确率');
%title('使用基于温度的类sigmoid函数训练准确率曲线图')
 data(1,1149:1159)=NaN;
 plot(2*[1:1159],data(3,:),'LineWidth',2);
 xlabel('训练batch数');
 ylabel('T值');
 %title('使用基于温度的类sigmoid函数训练时T值曲线图')