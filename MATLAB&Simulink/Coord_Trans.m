function qdot=Coord_Trans(u) % ROV�˶�ѧ����
%% �ٶ�V����ҡ��psi��ֵ
V=zeros(2,1);
V(1)=u(1);
V(2)=u(2);

psi=u(3);

%% ����任����J
J=[cos(psi) -sin(psi);
   sin(psi)  cos(psi)];

%% ���˶�����ѧ����qdot=J*V
qdot=J*V
end
