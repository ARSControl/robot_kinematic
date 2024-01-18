function J_dot_dq = compute_UR10e_jacobian_dot_dq_1(q, dq)

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

J_dot_dq(1,1) = (6127*dq0^2*cos(q0)*cos(q1))/10000 + (6127*dq1^2*cos(q0)*cos(q1))/10000 - 1.2254*dq0*dq1*sin(q0)*sin(q1);

J_dot_dq(2,1) = (6127*dq0^2*cos(q1)*sin(q0))/10000 + (6127*dq1^2*cos(q1)*sin(q0))/10000 + 1.2254*dq0*dq1*cos(q0)*sin(q1);

J_dot_dq(3,1) = 0.6127*dq1^2*sin(q1);

J_dot_dq(4,1) = dq0*dq1*cos(q0);

J_dot_dq(5,1) = dq0*dq1*sin(q0);

J_dot_dq(6,1) = 0;

