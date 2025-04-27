function Vdot=DynMoEqu(u) % ROV����ѧ����
%% �ٶ�V�������tau��ֵ
%�ٶȸ�ֵ,����Ϊu,v,w,r��
V = zeros(4,1);
for n=1:4 
    V(n)=u(n);
end

%��������ֵ,����ΪFx,Fy,Fz,Mr��
tau =zeros(4,1);
for n=1:4
    tau(n)=u(n+4);
end

%% ����ѧ�����и�����ֵM_RB, M_A, C_RB, C_A, D
%�������в�����ֵ��
m=128;
xG=0; yG=0; zG=0.054;
Iz=14.213;
Xudot=-33.48; Yvdot=-110.89; Zwdot=-147.58; Nrdot=-12.75;
Xu=-4.9217; Yv=-3.0591; Zw=-4.4132; Nr=-1.3881;
Xuu=-139.8007; Yvv=-350.2618; Zww=-327.2375 ;Nrr=-51.1709;


%���Ծ���
M_RB=[m      0    0 -m*yG;
      0      m    0  m*xG;
      0      0    m     0;
      -m*yG  m*xG 0    Iz];

%������������
M_A=-[Xudot 0 0 0;
      0 Yvdot 0 0;
      0 0 Zwdot 0;
      0 0 0 Nrdot];

%������Ͼ���
C_RB=[0                0                0 -m*(xG*V(4)+V(2));
      0                0                0 -m*(yG*V(4)-V(1));
      0                0                0                 0;
      m*(xG*V(4)+V(2)) m*(yG*V(4)-V(1)) 0                 0];
  
%�����������Ͼ���
C_A=[0           0          0  Yvdot*V(2);
     0           0          0 -Xudot*V(1);
     0           0          0           0;
     -Yvdot*V(2) Xudot*V(1) 0           0];
 
%����������
D=-[Xu+Xuu*abs(V(1)) 0 0 0;
    0 Yv+Yvv*abs(V(2)) 0 0;
    0 0 Zw+Zww*abs(V(3)) 0;
    0 0 0 Nr+Nrr*abs(V(4))];

%�ָ�������gΪȫΪ0���ʺ��ԡ�

%% �⶯��ѧ���̣�M_RB+M_A��*Vdot+[C_RB+C_A]*V+D*V=tau,�ó�Vdot���ʽ��
M=M_RB+M_A;
C=C_RB+C_A;
Vdot=inv(M)*(tau-D*V-C*V);
end