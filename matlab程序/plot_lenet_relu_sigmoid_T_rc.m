relu_running_correct=xlsread('\����\�ԱȾ��relu_rc_0.01.csv','C2:C506');
sigmoid_T_running_correct=xlsread('\����\�ԱȾ��sigmoid_T_rc_0.01.csv','C2:C506');
plot([1:505],relu_running_correct);
hold on;
plot([1:505],sigmoid_T_running_correct);
legend('relu','sigmoid\_T');
xlabel('ѵ������');
ylabel('ѵ������׼ȷ��');
title('����Ϊ0.01ʱlenet���������relu������sigmoid\_T����ѵ��׼ȷ������ͼ');