function J_dot_dq = compute_UR5_jacobian_dot_dq_4(q, dq)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

dq0 = dq(1);
dq1 = dq(2);
dq2 = dq(3);
dq3 = dq(4);
dq4 = dq(5);
dq5 = dq(6);

J_dot_dq(1,1) = - dq1*(0.00025*dq0*sin(q0)*(1569.0*sin(q1 + q2) + 1700.0*sin(q1)) - 0.00025*cos(q0)*(1569.0*cos(q1 + q2)*(dq1 + dq2) + 1700.0*dq1*cos(q1)) + 0.09465*dq0*cos(q1 + q2 + q3)*sin(q0) + 0.09465*sin(q1 + q2 + q3)*cos(q0)*(dq1 + dq2 + dq3)) - dq0*(0.00025*sin(q0)*(1569.0*sin(q1 + q2)*(dq1 + dq2) + 1700.0*dq1*sin(q1)) + 0.10915*dq0*sin(q0) + 0.09465*dq0*sin(q1 + q2 + q3)*cos(q0) + 0.09465*cos(q1 + q2 + q3)*sin(q0)*(dq1 + dq2 + dq3) - 0.00025*dq0*cos(q0)*(1569.0*cos(q1 + q2) + 1700.0*cos(q1))) - dq3*(0.09465*dq0*cos(q1 + q2 + q3)*sin(q0) + 0.09465*sin(q1 + q2 + q3)*cos(q0)*(dq1 + dq2 + dq3)) - dq2*((3*cos(q0)*(631.0*sin(q1 + q2 + q3)*(dq1 + dq2 + dq3) - 2615.0*cos(q1 + q2)*(dq1 + dq2)))/20000 + (3*dq0*sin(q0)*(631.0*cos(q1 + q2 + q3) + 2615.0*sin(q1 + q2)))/20000);

J_dot_dq(2,1) = dq1*(0.00025*sin(q0)*(1569.0*cos(q1 + q2)*(dq1 + dq2) + 1700.0*dq1*cos(q1)) + 0.00025*dq0*cos(q0)*(1569.0*sin(q1 + q2) + 1700.0*sin(q1)) + 0.09465*dq0*cos(q1 + q2 + q3)*cos(q0) - 0.09465*sin(q1 + q2 + q3)*sin(q0)*(dq1 + dq2 + dq3)) + dq0*(0.00025*cos(q0)*(1569.0*sin(q1 + q2)*(dq1 + dq2) + 1700.0*dq1*sin(q1)) + 0.10915*dq0*cos(q0) + 0.00025*dq0*sin(q0)*(1569.0*cos(q1 + q2) + 1700.0*cos(q1)) - 0.09465*dq0*sin(q1 + q2 + q3)*sin(q0) + 0.09465*cos(q1 + q2 + q3)*cos(q0)*(dq1 + dq2 + dq3)) + dq3*(0.09465*dq0*cos(q1 + q2 + q3)*cos(q0) - 0.09465*sin(q1 + q2 + q3)*sin(q0)*(dq1 + dq2 + dq3)) - dq2*((3*sin(q0)*(631.0*sin(q1 + q2 + q3)*(dq1 + dq2 + dq3) - 2615.0*cos(q1 + q2)*(dq1 + dq2)))/20000 - (3*dq0*cos(q0)*(631.0*cos(q1 + q2 + q3) + 2615.0*sin(q1 + q2)))/20000);

J_dot_dq(3,1) = dq2*(0.09465*cos(q1 + q2 + q3)*(dq1 + dq2 + dq3) + 0.39225*sin(q1 + q2)*(dq1 + dq2)) + dq1*(0.09465*cos(q1 + q2 + q3)*(dq1 + dq2 + dq3) + 0.39225*sin(q1 + q2)*(dq1 + dq2) + 0.425*dq1*sin(q1)) + 0.09465*dq3*cos(q1 + q2 + q3)*(dq1 + dq2 + dq3);

J_dot_dq(4,1) = dq0*dq1*cos(q0) - dq4*(dq0*sin(q1 + q2 + q3)*sin(q0) - cos(q1 + q2 + q3)*cos(q0)*(dq1 + dq2 + dq3)) + dq0*dq2*cos(q0) + dq0*dq3*cos(q0);

J_dot_dq(5,1) = dq4*(dq0*sin(q1 + q2 + q3)*cos(q0) + cos(q1 + q2 + q3)*sin(q0)*(dq1 + dq2 + dq3)) + dq0*dq1*sin(q0) + dq0*dq2*sin(q0) + dq0*dq3*sin(q0);

J_dot_dq(6,1) = dq4*sin(q1 + q2 + q3)*(dq1 + dq2 + dq3);

