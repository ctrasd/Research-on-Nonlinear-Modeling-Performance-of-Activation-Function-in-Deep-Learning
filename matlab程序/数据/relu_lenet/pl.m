% rc=zeros(3,2000);
% rl=zeros(3,2000);
% tc=zeros(3,2000);
% tl=zeros(3,2000);
name='\relu_lenet\';
rc(1,:)=xlsread(['\����',name,'rc_0.01.csv'],'C2:C541');
rc(2,:)=xlsread(['\����',name,'rc_0.05.csv'],'C2:C541');
rc(3,:)=xlsread(['\����',name,'rc_0.1.csv'],'C2:C541');
rl(1,:)=xlsread(['\����',name,'rl_0.01.csv'],'C2:C541');
rl(2,:)=xlsread(['\����',name,'rl_0.05.csv'],'C2:C541');
rl(3,:)=xlsread(['\����',name,'rl_0.1.csv'],'C2:C541');
tc(1,:)=xlsread(['\����',name,'tc_0.01.csv'],'C2:C16');
tc(2,:)=xlsread(['\����',name,'tc_0.05.csv'],'C2:C16');
tc(3,:)=xlsread(['\����',name,'tc_0.1.csv'],'C2:C16');
tl(1,:)=xlsread(['\����',name,'tl_0.01.csv'],'C2:C16');
tl(2,:)=xlsread(['\����',name,'tl_0.05.csv'],'C2:C16');
tl(3,:)=xlsread(['\����',name,'tl_0.1.csv'],'C2:C16');
subplot(2,2,1);
for i=1:3
    plot([1:30],rc(i,1:16:480)/100,'LineWidth',2.2);
    if i==1 || i==2
        hold on;
    end;
end
legend('ѧϰ��=0.01','ѧϰ��=0.05','ѧϰ��=0.1');
xlabel('ѵ������');
ylabel('ѵ����׼ȷ��');
title('ѵ��׼ȷ������ͼ');
%print(gcf,'-dpng','rl.png');
subplot(2,2,2);
for i=1:3
    plot([1:30],rl(i,1:16:480),'LineWidth',2.2);
   if i==1 || i==2
        hold on;
    end;

end
legend('ѧϰ��=0.01','ѧϰ��=0.05','ѧϰ��=0.1');
xlabel('ѵ������');
ylabel('ѵ�������');
title('ѵ���������ͼ');
subplot(2,2,3);
for i=1:3
    plot([1:15]*2,tc(i,:)/100,'LineWidth',2.2);
    if i==1 || i==2
        hold on;
    end;
end
legend('ѧϰ��=0.01','ѧϰ��=0.05','ѧϰ��=0.1');
xlabel('ѵ������');
ylabel('���Լ�׼ȷ��');
title('����׼ȷ������ͼ');
subplot(2,2,4);
for i=1:3
    plot([1:15]*2,tl(i,:),'LineWidth',2.2);
   if i==1 || i==2
        hold on;
    end;

end
legend('ѧϰ��=0.01','ѧϰ��=0.05','ѧϰ��=0.1');
xlabel('ѵ������');
ylabel('���Լ����');
title('�����������ͼ');
