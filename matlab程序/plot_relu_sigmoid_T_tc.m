relu_running_correct=xlsread('\����\�Ա�relu_tc_0.05.csv','C2:C16');
sigmoid_T_running_correct=xlsread('\����\�Ա�sigmoid_tc_0.05.csv','C2:C16');
plot([1:2:30],relu_running_correct);
hold on;
plot([1:2:30],sigmoid_T_running_correct);
legend('relu','sigmoid\_T');
xlabel('ѵ������');
ylabel('���Լ���׼ȷ��');
title('����Ϊ0.05ʱ˫���ز�������relu������sigmoid\_T��������׼ȷ������ͼ');