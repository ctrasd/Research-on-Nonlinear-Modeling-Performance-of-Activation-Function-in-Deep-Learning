data=zeros(15,20);
for i=1:15
    file=['\����\',num2str(i),'.csv'];
    data(i,1:15)=xlsread(file,'C2:C16');
end
pp=zeros(1,15);
for i=1:15
    pp(1,i)=var(data(:,i));
end
plot([1:2:30],pp);
xlabel('ѵ������');
ylabel('15�����ݲ���׼ȷ�ʷ���');
%title('sigmoid\_T����15�����ݲ���׼ȷ�ʷ�������ͼ')