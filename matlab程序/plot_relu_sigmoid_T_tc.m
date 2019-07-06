relu_running_correct=xlsread('\数据\对比relu_tc_0.05.csv','C2:C16');
sigmoid_T_running_correct=xlsread('\数据\对比sigmoid_tc_0.05.csv','C2:C16');
plot([1:2:30],relu_running_correct);
hold on;
plot([1:2:30],sigmoid_T_running_correct);
legend('relu','sigmoid\_T');
xlabel('训练轮数');
ylabel('测试集上准确率');
title('步长为0.05时双隐藏层网络中relu函数与sigmoid\_T函数测试准确率曲线图');