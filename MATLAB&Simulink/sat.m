function y=sat(s,phi) %���履�ͺ���������ģ̬��������߽���õ���
d=abs(s/phi);
if d>1
    y=sign(s);
else 
    y=s/phi;
end