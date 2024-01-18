function J_dot = compute_UR3_jacobian_dot_3(q, dq)

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

J_dot(1,1) = 0.00005*dq0*cos(q0)*(4265.0*cos(q1 + q2) + 4873.0*cos(q1)) - 0.11235*dq0*sin(q0) - 0.00005*sin(q0)*(4265.0*sin(q1 + q2)*(dq1 + dq2) + 4873.0*dq1*sin(q1));

J_dot(1,2) = 0.00005*cos(q0)*(4265.0*cos(q1 + q2)*(dq1 + dq2) + 4873.0*dq1*cos(q1)) - 0.00005*dq0*sin(q0)*(4265.0*sin(q1 + q2) + 4873.0*sin(q1));

J_dot(1,3) = 0.21325*cos(q1 + q2)*cos(q0)*(dq1 + dq2) - 0.21325*dq0*sin(q1 + q2)*sin(q0);

J_dot(1,4) = 0;

J_dot(2,1) = 0.00005*cos(q0)*(4265.0*sin(q1 + q2)*(dq1 + dq2) + 4873.0*dq1*sin(q1)) + 0.11235*dq0*cos(q0) + 0.00005*dq0*sin(q0)*(4265.0*cos(q1 + q2) + 4873.0*cos(q1));

J_dot(2,2) = 0.00005*sin(q0)*(4265.0*cos(q1 + q2)*(dq1 + dq2) + 4873.0*dq1*cos(q1)) + 0.00005*dq0*cos(q0)*(4265.0*sin(q1 + q2) + 4873.0*sin(q1));

J_dot(2,3) = 0.21325*cos(q1 + q2)*sin(q0)*(dq1 + dq2) + 0.21325*dq0*sin(q1 + q2)*cos(q0);

J_dot(2,4) = 0;

J_dot(3,1) = 0;

J_dot(3,2) = 0.21325*sin(q1 + q2)*(dq1 + dq2) + 0.24365*dq1*sin(q1);

J_dot(3,3) = 0.21325*sin(q1 + q2)*(dq1 + dq2);

J_dot(3,4) = 0;

J_dot(4,1) = 0;

J_dot(4,2) = dq0*cos(q0);

J_dot(4,3) = dq0*cos(q0);

J_dot(4,4) = dq0*cos(q0);

J_dot(5,1) = 0;

J_dot(5,2) = dq0*sin(q0);

J_dot(5,3) = dq0*sin(q0);

J_dot(5,4) = dq0*sin(q0);

J_dot(6,1) = 0;

J_dot(6,2) = 0;

J_dot(6,3) = 0;

J_dot(6,4) = 0;

