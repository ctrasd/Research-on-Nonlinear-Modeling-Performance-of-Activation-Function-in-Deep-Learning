data=zeros(15,20);
for i=1:15
    file=['\����\var_relu_layer2\',num2str(i),'.csv'];
    data(i,1:30)=xlsread(file,'B1:B30');
end
pp=zeros(1,30);
for i=1:30
    pp(1,i)=var(data(:,i));
end
plot([1:2:60],pp);
xlabel('ѵ������');
ylabel('15�����ݲ���׼ȷ�ʷ���');
title('relu����15������60��ѵ���²���׼ȷ�ʷ�������ͼ');