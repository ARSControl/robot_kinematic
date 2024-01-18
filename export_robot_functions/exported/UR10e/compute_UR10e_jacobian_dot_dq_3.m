function J_dot_dq = compute_UR10e_jacobian_dot_dq_3(q, dq)

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

J_dot_dq(1,1) = dq2*(0.57155*cos(q1 + q2)*cos(q0)*(dq1 + dq2) - 0.57155*dq0*sin(q1 + q2)*sin(q0)) + dq1*(0.00005*cos(q0)*(11431.0*cos(q1 + q2)*(dq1 + dq2) + 12254.0*dq1*cos(q1)) - 0.00005*dq0*sin(q0)*(11431.0*sin(q1 + q2) + 12254.0*sin(q1))) - dq0*(0.00005*sin(q0)*(11431.0*sin(q1 + q2)*(dq1 + dq2) + 12254.0*dq1*sin(q1)) + 0.17415*dq0*sin(q0) - 0.00005*dq0*cos(q0)*(11431.0*cos(q1 + q2) + 12254.0*cos(q1)));

J_dot_dq(2,1) = dq0*(0.00005*cos(q0)*(11431.0*sin(q1 + q2)*(dq1 + dq2) + 12254.0*dq1*sin(q1)) + 0.17415*dq0*cos(q0) + 0.00005*dq0*sin(q0)*(11431.0*cos(q1 + q2) + 12254.0*cos(q1))) + dq2*(0.57155*cos(q1 + q2)*sin(q0)*(dq1 + dq2) + 0.57155*dq0*sin(q1 + q2)*cos(q0)) + dq1*(0.00005*sin(q0)*(11431.0*cos(q1 + q2)*(dq1 + dq2) + 12254.0*dq1*cos(q1)) + 0.00005*dq0*cos(q0)*(11431.0*sin(q1 + q2) + 12254.0*sin(q1)));

J_dot_dq(3,1) = dq1*(0.57155*sin(q1 + q2)*(dq1 + dq2) + 0.6127*dq1*sin(q1)) + 0.57155*dq2*sin(q1 + q2)*(dq1 + dq2);

J_dot_dq(4,1) = dq0*cos(q0)*(dq1 + dq2 + dq3);

J_dot_dq(5,1) = dq0*sin(q0)*(dq1 + dq2 + dq3);

J_dot_dq(6,1) = 0;

