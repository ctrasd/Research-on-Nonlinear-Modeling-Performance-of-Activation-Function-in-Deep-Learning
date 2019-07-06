data=zeros(15,20);
for i=1:15
    file=['\数据\var_tanh_layer2\',num2str(i),'.csv'];
    data(i,1:30)=xlsread(file,'B1:B30');
end
pp=zeros(1,30);
for i=1:30
    pp(1,i)=var(data(:,i));
end
plot([1:2:60],pp);
xlabel('训练轮数');
ylabel('15组数据测试准确率方差');
title('tanh函数15组数据60轮训练下测试准确率方差曲线图');