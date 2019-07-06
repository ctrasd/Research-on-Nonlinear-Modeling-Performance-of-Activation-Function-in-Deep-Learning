data=zeros(15,30);
for i=1:15
    file=['\数据\var_sigmoid_T_layer2\',num2str(i),'.csv'];
    data(i,1:30)=xlsread(file,'A1:A30');
end
pp=zeros(1,30);
for i=1:30
    pp(1,i)=var(data(:,i));
end
plot([1:2:60],pp,'LineWidth',3);
xlabel('训练步数');
ylabel('15组数据测试准确率方差');
%title('使用sigmoid\_T函数15组数据60轮测试准确率方差曲线图')