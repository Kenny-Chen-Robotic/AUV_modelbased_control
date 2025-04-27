function y=sat(s,phi) %定义饱和函数，滑动模态方法引入边界层用到。
d=abs(s/phi);
if d>1
    y=sign(s);
else 
    y=s/phi;
end