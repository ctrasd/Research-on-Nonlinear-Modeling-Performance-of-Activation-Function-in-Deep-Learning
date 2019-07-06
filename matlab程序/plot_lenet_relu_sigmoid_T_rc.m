relu_running_correct=xlsread('\数据\对比卷积relu_rc_0.01.csv','C2:C506');
sigmoid_T_running_correct=xlsread('\数据\对比卷积sigmoid_T_rc_0.01.csv','C2:C506');
plot([1:505],relu_running_correct);
hold on;
plot([1:505],sigmoid_T_running_correct);
legend('relu','sigmoid\_T');
xlabel('训练轮数');
ylabel('训练集上准确率');
title('步长为0.01时lenet卷积网络中relu函数与sigmoid\_T函数训练准确率曲线图');