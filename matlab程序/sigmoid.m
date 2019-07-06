function y=sigmoid(x,T)
    y=1./(1.+exp(-x./T));
end