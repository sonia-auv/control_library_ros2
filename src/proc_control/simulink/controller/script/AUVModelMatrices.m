function [M,C,D,Gq] = AUVModelMatrices(in1,in2)
%AUVModelMatrices
%    [M,C,D,Gq] = AUVModelMatrices(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 9.1.
%    12-Jul-2022 16:58:53

CD_L1 = in2(:,19);
CD_L2 = in2(:,20);
CD_L3 = in2(:,21);
CD_L4 = in2(:,22);
CD_L5 = in2(:,23);
CD_L6 = in2(:,24);
CD_Q1 = in2(:,25);
CD_Q2 = in2(:,26);
CD_Q3 = in2(:,27);
CD_Q4 = in2(:,28);
CD_Q5 = in2(:,29);
CD_Q6 = in2(:,30);
I1_1 = in2(:,4);
I1_2 = in2(:,5);
I1_3 = in2(:,6);
I2_1 = in2(:,7);
I2_2 = in2(:,8);
I2_3 = in2(:,9);
I3_1 = in2(:,10);
I3_2 = in2(:,11);
I3_3 = in2(:,12);
K_p_dot = in2(:,34);
M_q_dot = in2(:,35);
N_r_dot = in2(:,36);
RB1 = in2(:,16);
RB2 = in2(:,17);
RB3 = in2(:,18);
RG1 = in2(:,13);
RG2 = in2(:,14);
RG3 = in2(:,15);
X_u_dot = in2(:,31);
Y_v_dot = in2(:,32);
Z_w_dot = in2(:,33);
epsilon1 = in1(5,:);
epsilon2 = in1(6,:);
epsilon3 = in1(7,:);
eta = in1(4,:);
g = in2(:,38);
m = in2(:,1);
p = in1(11,:);
q = in1(12,:);
r = in1(13,:);
rho = in2(:,37);
u = in1(8,:);
v = in1(9,:);
volume = in2(:,2);
w = in1(10,:);
t2 = I1_1.*p;
t3 = I2_1.*p;
t4 = I3_1.*p;
t5 = I1_2.*q;
t6 = I2_2.*q;
t7 = I3_2.*q;
t8 = I1_3.*r;
t9 = I2_3.*r;
t10 = I3_3.*r;
t11 = K_p_dot.*p;
t12 = M_q_dot.*q;
t13 = RG1.*m;
t14 = RG2.*m;
t15 = RG3.*m;
t16 = N_r_dot.*r;
t17 = RG1.*p;
t18 = RG2.*p;
t19 = RG3.*p;
t20 = RG1.*q;
t21 = RG2.*q;
t22 = RG3.*q;
t23 = RG1.*r;
t24 = RG2.*r;
t25 = RG3.*r;
t26 = X_u_dot.*u;
t27 = Y_v_dot.*v;
t28 = Z_w_dot.*w;
t29 = rho.*volume;
t30 = epsilon1.^2;
t31 = epsilon2.^2;
t32 = epsilon1.*epsilon3.*2.0;
t33 = epsilon2.*epsilon3.*2.0;
t34 = epsilon1.*eta.*2.0;
t35 = epsilon2.*eta.*2.0;
t36 = -t13;
t37 = -t14;
t38 = -t15;
M = reshape([-X_u_dot+m,0.0,0.0,0.0,t15,t37,0.0,-Y_v_dot+m,0.0,t38,0.0,t13,0.0,0.0,-Z_w_dot+m,t14,t36,0.0,0.0,t38,t14,I1_1-K_p_dot,I2_1,I3_1,t15,0.0,t36,I1_2,I2_2-M_q_dot,I3_2,t37,t13,0.0,I1_3,I2_3,I3_3-N_r_dot],[6,6]);
if nargout > 1
    t39 = -t19;
    t40 = -t20;
    t41 = -t24;
    t42 = t30.*2.0;
    t43 = t31.*2.0;
    t44 = -t35;
    t45 = -t26;
    t46 = -t27;
    t47 = -t28;
    t48 = -t29;
    t49 = t22+u;
    t50 = t18+w;
    t51 = t23+v;
    t53 = t17+t21;
    t54 = t17+t25;
    t55 = t21+t25;
    t65 = t33+t34;
    t66 = -m.*(t19-v);
    t67 = -m.*(t24-u);
    t68 = -m.*(t20-w);
    t52 = m+t48;
    t56 = m.*t49;
    t57 = m.*t50;
    t58 = m.*t51;
    t59 = t39+v;
    t60 = t41+u;
    t61 = t40+w;
    t62 = m.*t53;
    t63 = m.*t54;
    t64 = m.*t55;
    C = reshape([0.0,0.0,0.0,-t64,t28+m.*(t20-w),t46+t58,0.0,0.0,0.0,t47+t57,-t63,t26+m.*(t24-u),0.0,0.0,0.0,t27+m.*(t19-v),t45+t56,-t62,t64,t28-t57,t46+t66,0.0,-t4-t7-t10+t16,t3+t6+t9-t12,t47+t68,t63,t26-t56,t4+t7+t10-t16,0.0,-t2-t5-t8+t11,t27-t58,t45+t67,t62,-t3-t6-t9+t12,t2+t5+t8-t11,0.0],[6,6]);
end
if nargout > 2
    D = reshape([CD_L1+CD_Q1.*abs(u),0.0,0.0,0.0,0.0,0.0,0.0,CD_L2+CD_Q2.*abs(v),0.0,0.0,0.0,0.0,0.0,0.0,CD_L3+CD_Q3.*abs(w),0.0,0.0,0.0,0.0,0.0,0.0,CD_L4+CD_Q4.*abs(p),0.0,0.0,0.0,0.0,0.0,0.0,CD_L5+CD_Q5.*abs(q),0.0,0.0,0.0,0.0,0.0,0.0,CD_L6+CD_Q6.*abs(r)],[6,6]);
end
if nargout > 3
    t69 = t32+t44;
    t70 = t42+t43-1.0;
    Gq = [g.*t52.*(epsilon1.*epsilon3-epsilon2.*eta).*-2.0;g.*t52.*(epsilon2.*epsilon3+epsilon1.*eta).*-2.0;g.*t52.*t70;g.*t15.*t65+g.*t14.*t70+RB3.*g.*t48.*t65+RB2.*g.*t48.*t70;g.*t36.*t70+g.*t38.*t69+RB1.*g.*t29.*t70+RB3.*g.*t29.*t69;g.*t14.*t69+g.*t36.*t65+RB1.*g.*t29.*t65+RB2.*g.*t48.*t69];
end
