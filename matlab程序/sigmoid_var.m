data=zeros(15,20);
for i=1:15
    file=['\数据\',num2str(i),'.csv'];
    data(i,1:15)=xlsread(file,'C2:C16');
end
pp=zeros(1,15);
for i=1:15
    pp(1,i)=var(data(:,i));
end
plot([1:2:30],pp);
xlabel('训练步数');
ylabel('15组数据测试准确率方差');
%title('sigmoid\_T函数15组数据测试准确率方差曲线图')