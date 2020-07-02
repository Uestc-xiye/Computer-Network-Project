clear all;
clc;
for n=1:6
    Z=2.^n;
    x=0:8;
    for i=1:length(x)
        xSNR=x(i);
        sim('MQAM2');
        y(i)=mean(xErrorRate);
    end
    plot(x,y,'r');
    hold on;
    legend('������');
    xlabel('�����');
    ylabel('������');
end