data=zeros(3,30);
data(1,:)=xlsread('����_layer2.xlsx','A1:A30');
data(2,:)=xlsread('����_layer2.xlsx','B1:B30');
data(3,:)=xlsread('����_layer2.xlsx','C1:C30');

plot([1:2:60],data(1,:),'LineWidth',3);
hold on;
plot([1:2:60],data(2,:),'LineWidth',3);
hold on;
plot([1:2:60],data(3,:),'LineWidth',3);
xlabel('ѵ������');
ylabel('15�����ݲ���׼ȷ�ʷ���');
%title('���ּ������15������60��ѵ���²���׼ȷ�ʷ�������ͼ');
legend('sigmoid','relu','tanh');