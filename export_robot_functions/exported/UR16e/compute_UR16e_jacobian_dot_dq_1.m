function J_dot_dq = compute_UR16e_jacobian_dot_dq_1(q, dq)

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

J_dot_dq(1,1) = dq0*(0.4784*dq0*cos(q0)*cos(q1) - 0.4784*dq1*sin(q0)*sin(q1)) + dq1*(0.4784*dq1*cos(q0)*cos(q1) - 0.4784*dq0*sin(q0)*sin(q1));

J_dot_dq(2,1) = dq0*(0.4784*dq0*cos(q1)*sin(q0) + 0.4784*dq1*cos(q0)*sin(q1)) + dq1*(0.4784*dq0*cos(q0)*sin(q1) + 0.4784*dq1*cos(q1)*sin(q0));

J_dot_dq(3,1) = 0.4784*dq1^2*sin(q1);

J_dot_dq(4,1) = dq1*(1.0*dq0*cos(q0)*cos(q1)^2 + 1.0*dq0*cos(q0)*sin(q1)^2);

J_dot_dq(5,1) = dq1*(1.0*dq0*cos(q1)^2*sin(q0) + 1.0*dq0*sin(q0)*sin(q1)^2);

J_dot_dq(6,1) = -dq0*(2*dq0*cos(q0)*cos(q1)^2*sin(q0) - 2.0*dq0*cos(q0)*sin(q0) + 2.0*dq0*cos(q0)*sin(q0)*sin(q1)^2);

