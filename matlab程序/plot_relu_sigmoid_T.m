relu_running_correct=xlsread('\数据\对比relu.csv','C2:C499');
sigmoid_T_running_correct=xlsread('\数据\对比sigmod_T.csv','C2:C499');
plot([1:498],relu_running_correct);
hold on;
plot([1:498],sigmoid_T_running_correct);
legend('relu','sigmoid\_T');