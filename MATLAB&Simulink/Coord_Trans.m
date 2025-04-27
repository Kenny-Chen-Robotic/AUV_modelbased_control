function qdot=Coord_Trans(u) % ROV运动学方程
%% 速度V与首摇角psi赋值
V=zeros(2,1);
V(1)=u(1);
V(2)=u(2);

psi=u(3);

%% 坐标变换矩阵J
J=[cos(psi) -sin(psi);
   sin(psi)  cos(psi)];

%% 解运动方程学方程qdot=J*V
qdot=J*V
end
