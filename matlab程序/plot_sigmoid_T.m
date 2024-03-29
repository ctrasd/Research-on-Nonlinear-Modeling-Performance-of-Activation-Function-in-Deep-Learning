x=[-10:0.1:10];
plot(x,sigmoid(x,1),'LineWidth',3);
hold on;
plot(x,sigmoid(x,0.5),'LineWidth',3);
hold on;
plot(x,sigmoid(x,0.2),'LineWidth',3);
hold on;
plot(x,sigmoid(x,0.1),'LineWidth',3);
legend('T=1','T=0.5','T=0.2','T=0.1');
xlabel('x');
ylabel('f(x,T)');

plot(x,(1-sigmoid(x,1)).*sigmoid(x,1),'LineWidth',3);
hold on;
plot(x,2*(1-sigmoid(x,0.5)).*sigmoid(x,0.5),'LineWidth',3);
hold on;
plot(x,5*(1-sigmoid(x,0.2)).*sigmoid(x,0.2),'LineWidth',3);
hold on;
plot(x,10*(1-sigmoid(x,0.1)).*sigmoid(x,0.1),'LineWidth',3);
legend('T=1','T=0.5','T=0.2','T=0.1');
xlabel('x');