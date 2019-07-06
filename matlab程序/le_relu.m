function rt=le_relu(x)
    a=0.1;
    l=size(x);
    for i=1:l(2)
        if x(i)>0
            rt(i)=x(i);
        else
            rt(i)=a*x(i);
        end
    end
end