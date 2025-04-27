a=ones(4000,1);
b=ones(4000,1);
for i=1:4000
    s=0.001*i-2;
    if s<=-1
       u=-1;
    else if s>-1&&s<=1
            u=s;
        else
            u=1;
        end
    end
    a(i)=s;
    b(i)=u;
end

plot(a,b)
grid on
xlabel('s')
ylabel('sigmoid')