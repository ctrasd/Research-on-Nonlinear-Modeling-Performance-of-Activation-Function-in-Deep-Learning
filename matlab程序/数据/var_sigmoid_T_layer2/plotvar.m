data=zeros(15,30);
for i=1:15
    file=['\����\var_sigmoid_T_layer2\',num2str(i),'.csv'];
    data(i,1:30)=xlsread(file,'A1:A30');
end
pp=zeros(1,30);
for i=1:30
    pp(1,i)=var(data(:,i));
end
plot([1:2:60],pp,'LineWidth',3);
xlabel('ѵ������');
ylabel('15�����ݲ���׼ȷ�ʷ���');
%title('ʹ��sigmoid\_T����15������60�ֲ���׼ȷ�ʷ�������ͼ')