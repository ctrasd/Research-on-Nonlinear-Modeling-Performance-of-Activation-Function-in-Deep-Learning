data=zeros(3,1159);
data(1,1:1148)=xlsread('\����\T.csv','A1:A1148');
data(2,1:1159)=xlsread('\����\T.csv','B1:B1159');
data(3,1:1148)=xlsread('\����\T.csv','C1:C1148');

plot(2*[1:1159],data(2,:)/100,'LineWidth',1.2);
xlabel('ѵ��batch��');
ylabel('ѵ������׼ȷ��');
%title('ʹ�û����¶ȵ���sigmoid����ѵ��׼ȷ������ͼ')
 data(1,1149:1159)=NaN;
 plot(2*[1:1159],data(3,:),'LineWidth',2);
 xlabel('ѵ��batch��');
 ylabel('Tֵ');
 %title('ʹ�û����¶ȵ���sigmoid����ѵ��ʱTֵ����ͼ')