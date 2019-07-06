x=[-10:0.01:10];
plot(x,sigmoid(x).*(1.-sigmoid(x)),'LineWidth',3);
hold on;
plot(x,1.-tan_h(x).^2,'LineWidth',3);
hold on;

y(find(x>0))=1;
y(1001)=nan;
plot(x,y,'LineWidth',3);
text(x(990),0,'o','color','b');
hold on;

y(find(x>0))=1;

y(find(x<=0))=0.1;
y(1001)=nan;
plot(x,y,'LineWidth',3);
text(x(990),0.1,'o','color','b');

plot(x,y,'m');
%hold on;
xlabel('x');
legend('dsigmoid(x)/dx','dtanh(x)/dx','drelu(x)/dx','dleaky\_relu(x)/dx');