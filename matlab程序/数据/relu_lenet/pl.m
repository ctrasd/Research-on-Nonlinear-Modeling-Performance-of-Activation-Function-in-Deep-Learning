% rc=zeros(3,2000);
% rl=zeros(3,2000);
% tc=zeros(3,2000);
% tl=zeros(3,2000);
name='\relu_lenet\';
rc(1,:)=xlsread(['\数据',name,'rc_0.01.csv'],'C2:C541');
rc(2,:)=xlsread(['\数据',name,'rc_0.05.csv'],'C2:C541');
rc(3,:)=xlsread(['\数据',name,'rc_0.1.csv'],'C2:C541');
rl(1,:)=xlsread(['\数据',name,'rl_0.01.csv'],'C2:C541');
rl(2,:)=xlsread(['\数据',name,'rl_0.05.csv'],'C2:C541');
rl(3,:)=xlsread(['\数据',name,'rl_0.1.csv'],'C2:C541');
tc(1,:)=xlsread(['\数据',name,'tc_0.01.csv'],'C2:C16');
tc(2,:)=xlsread(['\数据',name,'tc_0.05.csv'],'C2:C16');
tc(3,:)=xlsread(['\数据',name,'tc_0.1.csv'],'C2:C16');
tl(1,:)=xlsread(['\数据',name,'tl_0.01.csv'],'C2:C16');
tl(2,:)=xlsread(['\数据',name,'tl_0.05.csv'],'C2:C16');
tl(3,:)=xlsread(['\数据',name,'tl_0.1.csv'],'C2:C16');
subplot(2,2,1);
for i=1:3
    plot([1:30],rc(i,1:16:480)/100,'LineWidth',2.2);
    if i==1 || i==2
        hold on;
    end;
end
legend('学习率=0.01','学习率=0.05','学习率=0.1');
xlabel('训练步数');
ylabel('训练集准确率');
title('训练准确率曲线图');
%print(gcf,'-dpng','rl.png');
subplot(2,2,2);
for i=1:3
    plot([1:30],rl(i,1:16:480),'LineWidth',2.2);
   if i==1 || i==2
        hold on;
    end;

end
legend('学习率=0.01','学习率=0.05','学习率=0.1');
xlabel('训练步数');
ylabel('训练集误差');
title('训练误差曲线图');
subplot(2,2,3);
for i=1:3
    plot([1:15]*2,tc(i,:)/100,'LineWidth',2.2);
    if i==1 || i==2
        hold on;
    end;
end
legend('学习率=0.01','学习率=0.05','学习率=0.1');
xlabel('训练步数');
ylabel('测试集准确率');
title('测试准确率曲线图');
subplot(2,2,4);
for i=1:3
    plot([1:15]*2,tl(i,:),'LineWidth',2.2);
   if i==1 || i==2
        hold on;
    end;

end
legend('学习率=0.01','学习率=0.05','学习率=0.1');
xlabel('训练步数');
ylabel('测试集误差');
title('测试误差曲线图');
