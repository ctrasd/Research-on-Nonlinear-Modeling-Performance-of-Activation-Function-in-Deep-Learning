relu_running_correct=xlsread('\����\�ԱȾ��relu_tc_0.01.csv','C2:C16');
sigmoid_T_running_correct=xlsread('\����\�ԱȾ��sigmoid_T_tc_0.01.csv','C2:C16');
plot([1:2:30],relu_running_correct);
hold on;
plot([1:2:30],sigmoid_T_running_correct);
legend('relu','sigmoid\_T');
xlabel('ѵ������');
ylabel('���Լ���׼ȷ��');
title('����Ϊ0.01ʱlenet���������relu������sigmoid\_T��������׼ȷ������ͼ');