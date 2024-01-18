function J_dot = compute_UR10e_jacobian_dot_2(q, dq)

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

J_dot(1,1) = 0.6127*dq0*cos(q0)*cos(q1) - 0.6127*dq1*sin(q0)*sin(q1) + 0.57155*dq0*cos(q0)*cos(q1)*cos(q2) - 0.57155*dq0*cos(q0)*sin(q1)*sin(q2) - 0.57155*dq1*cos(q1)*sin(q0)*sin(q2) - 0.57155*dq1*cos(q2)*sin(q0)*sin(q1) - 0.57155*dq2*cos(q1)*sin(q0)*sin(q2) - 0.57155*dq2*cos(q2)*sin(q0)*sin(q1);

J_dot(1,2) = 0.6127*dq1*cos(q0)*cos(q1) - 0.6127*dq0*sin(q0)*sin(q1) + 0.57155*dq1*cos(q0)*cos(q1)*cos(q2) + 0.57155*dq2*cos(q0)*cos(q1)*cos(q2) - 0.57155*dq0*cos(q1)*sin(q0)*sin(q2) - 0.57155*dq0*cos(q2)*sin(q0)*sin(q1) - 0.57155*dq1*cos(q0)*sin(q1)*sin(q2) - 0.57155*dq2*cos(q0)*sin(q1)*sin(q2);

J_dot(1,3) = 0.57155*dq1*cos(q0)*cos(q1)*cos(q2) + 0.57155*dq2*cos(q0)*cos(q1)*cos(q2) - 0.57155*dq0*cos(q1)*sin(q0)*sin(q2) - 0.57155*dq0*cos(q2)*sin(q0)*sin(q1) - 0.57155*dq1*cos(q0)*sin(q1)*sin(q2) - 0.57155*dq2*cos(q0)*sin(q1)*sin(q2);

J_dot(2,1) = 0.6127*dq0*cos(q1)*sin(q0) + 0.6127*dq1*cos(q0)*sin(q1) + 0.57155*dq0*cos(q1)*cos(q2)*sin(q0) + 0.57155*dq1*cos(q0)*cos(q1)*sin(q2) + 0.57155*dq1*cos(q0)*cos(q2)*sin(q1) + 0.57155*dq2*cos(q0)*cos(q1)*sin(q2) + 0.57155*dq2*cos(q0)*cos(q2)*sin(q1) - 0.57155*dq0*sin(q0)*sin(q1)*sin(q2);

J_dot(2,2) = 0.6127*dq0*cos(q0)*sin(q1) + 0.6127*dq1*cos(q1)*sin(q0) + 0.57155*dq0*cos(q0)*cos(q1)*sin(q2) + 0.57155*dq0*cos(q0)*cos(q2)*sin(q1) + 0.57155*dq1*cos(q1)*cos(q2)*sin(q0) + 0.57155*dq2*cos(q1)*cos(q2)*sin(q0) - 0.57155*dq1*sin(q0)*sin(q1)*sin(q2) - 0.57155*dq2*sin(q0)*sin(q1)*sin(q2);

J_dot(2,3) = 0.57155*dq0*cos(q0)*cos(q1)*sin(q2) + 0.57155*dq0*cos(q0)*cos(q2)*sin(q1) + 0.57155*dq1*cos(q1)*cos(q2)*sin(q0) + 0.57155*dq2*cos(q1)*cos(q2)*sin(q0) - 0.57155*dq1*sin(q0)*sin(q1)*sin(q2) - 0.57155*dq2*sin(q0)*sin(q1)*sin(q2);

J_dot(3,1) = 0;

J_dot(3,2) = 0.6127*dq1*sin(q1) + 0.57155*dq1*cos(q1)*sin(q2) + 0.57155*dq1*cos(q2)*sin(q1) + 0.57155*dq2*cos(q1)*sin(q2) + 0.57155*dq2*cos(q2)*sin(q1);

J_dot(3,3) = 0.57155*dq1*cos(q1)*sin(q2) + 0.57155*dq1*cos(q2)*sin(q1) + 0.57155*dq2*cos(q1)*sin(q2) + 0.57155*dq2*cos(q2)*sin(q1);

J_dot(4,1) = 0;

J_dot(4,2) = (1.0*sin(q0)*sin(q1)*sin(q2) - cos(q1)*cos(q2)*sin(q0))*(1.0*dq1*cos(q1)*sin(q2) + 1.0*dq1*cos(q2)*sin(q1) + 1.0*dq2*cos(q1)*sin(q2) + 1.0*dq2*cos(q2)*sin(q1)) + (1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1))*(1.0*dq0*cos(q0)*cos(q1)*sin(q2) + 1.0*dq0*cos(q0)*cos(q2)*sin(q1) + 1.0*dq1*cos(q1)*cos(q2)*sin(q0) + 1.0*dq2*cos(q1)*cos(q2)*sin(q0) - 1.0*dq1*sin(q0)*sin(q1)*sin(q2) - 1.0*dq2*sin(q0)*sin(q1)*sin(q2)) + (1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1))*(1.0*dq1*cos(q1)*cos(q2) + 1.0*dq2*cos(q1)*cos(q2) - 1.0*dq1*sin(q1)*sin(q2) - 1.0*dq2*sin(q1)*sin(q2)) - (1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2))*(1.0*dq0*cos(q0)*sin(q1)*sin(q2) - dq0*cos(q0)*cos(q1)*cos(q2) + 1.0*dq1*cos(q1)*sin(q0)*sin(q2) + dq1*cos(q2)*sin(q0)*sin(q1) + dq2*cos(q1)*sin(q0)*sin(q2) + 1.0*dq2*cos(q2)*sin(q0)*sin(q1));

J_dot(4,3) = (1.0*sin(q0)*sin(q1)*sin(q2) - cos(q1)*cos(q2)*sin(q0))*(1.0*dq1*cos(q1)*sin(q2) + 1.0*dq1*cos(q2)*sin(q1) + 1.0*dq2*cos(q1)*sin(q2) + 1.0*dq2*cos(q2)*sin(q1)) + (1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1))*(1.0*dq0*cos(q0)*cos(q1)*sin(q2) + 1.0*dq0*cos(q0)*cos(q2)*sin(q1) + 1.0*dq1*cos(q1)*cos(q2)*sin(q0) + 1.0*dq2*cos(q1)*cos(q2)*sin(q0) - 1.0*dq1*sin(q0)*sin(q1)*sin(q2) - 1.0*dq2*sin(q0)*sin(q1)*sin(q2)) + (1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1))*(1.0*dq1*cos(q1)*cos(q2) + 1.0*dq2*cos(q1)*cos(q2) - 1.0*dq1*sin(q1)*sin(q2) - 1.0*dq2*sin(q1)*sin(q2)) - (1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2))*(1.0*dq0*cos(q0)*sin(q1)*sin(q2) - dq0*cos(q0)*cos(q1)*cos(q2) + 1.0*dq1*cos(q1)*sin(q0)*sin(q2) + dq1*cos(q2)*sin(q0)*sin(q1) + dq2*cos(q1)*sin(q0)*sin(q2) + 1.0*dq2*cos(q2)*sin(q0)*sin(q1));

J_dot(5,1) = (1.0*sin(q0)*sin(q1)*sin(q2) - cos(q1)*cos(q2)*sin(q0))*(1.0*dq1*cos(q1)*cos(q2) + 1.0*dq2*cos(q1)*cos(q2) - 1.0*dq1*sin(q1)*sin(q2) - 1.0*dq2*sin(q1)*sin(q2)) + (1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2))*(1.0*dq0*cos(q0)*cos(q1)*sin(q2) + 1.0*dq0*cos(q0)*cos(q2)*sin(q1) + 1.0*dq1*cos(q1)*cos(q2)*sin(q0) + 1.0*dq2*cos(q1)*cos(q2)*sin(q0) - 1.0*dq1*sin(q0)*sin(q1)*sin(q2) - 1.0*dq2*sin(q0)*sin(q1)*sin(q2)) - (1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1))*(1.0*dq1*cos(q1)*sin(q2) + 1.0*dq1*cos(q2)*sin(q1) + 1.0*dq2*cos(q1)*sin(q2) + 1.0*dq2*cos(q2)*sin(q1)) + (1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1))*(1.0*dq0*cos(q0)*sin(q1)*sin(q2) - dq0*cos(q0)*cos(q1)*cos(q2) + 1.0*dq1*cos(q1)*sin(q0)*sin(q2) + dq1*cos(q2)*sin(q0)*sin(q1) + dq2*cos(q1)*sin(q0)*sin(q2) + 1.0*dq2*cos(q2)*sin(q0)*sin(q1));

J_dot(5,2) = (1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2))*(1.0*dq0*cos(q1)*cos(q2)*sin(q0) + 1.0*dq1*cos(q0)*cos(q1)*sin(q2) + 1.0*dq1*cos(q0)*cos(q2)*sin(q1) + 1.0*dq2*cos(q0)*cos(q1)*sin(q2) + 1.0*dq2*cos(q0)*cos(q2)*sin(q1) - 1.0*dq0*sin(q0)*sin(q1)*sin(q2)) - (1.0*cos(q0)*cos(q1)*sin(q2) + cos(q0)*cos(q2)*sin(q1))*(1.0*dq1*cos(q1)*cos(q2) + 1.0*dq2*cos(q1)*cos(q2) - 1.0*dq1*sin(q1)*sin(q2) - 1.0*dq2*sin(q1)*sin(q2)) + (1.0*cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2))*(1.0*dq1*cos(q1)*sin(q2) + 1.0*dq1*cos(q2)*sin(q1) + 1.0*dq2*cos(q1)*sin(q2) + 1.0*dq2*cos(q2)*sin(q1)) + (1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1))*(1.0*dq0*cos(q1)*sin(q0)*sin(q2) - 1.0*dq2*cos(q0)*cos(q1)*cos(q2) - dq1*cos(q0)*cos(q1)*cos(q2) + dq0*cos(q2)*sin(q0)*sin(q1) + 1.0*dq1*cos(q0)*sin(q1)*sin(q2) + dq2*cos(q0)*sin(q1)*sin(q2));

J_dot(5,3) = (1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2))*(1.0*dq0*cos(q1)*cos(q2)*sin(q0) + 1.0*dq1*cos(q0)*cos(q1)*sin(q2) + 1.0*dq1*cos(q0)*cos(q2)*sin(q1) + 1.0*dq2*cos(q0)*cos(q1)*sin(q2) + 1.0*dq2*cos(q0)*cos(q2)*sin(q1) - 1.0*dq0*sin(q0)*sin(q1)*sin(q2)) - (cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1))*(1.0*dq1*cos(q1)*cos(q2) + 1.0*dq2*cos(q1)*cos(q2) - 1.0*dq1*sin(q1)*sin(q2) - 1.0*dq2*sin(q1)*sin(q2)) + (1.0*cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2))*(1.0*dq1*cos(q1)*sin(q2) + 1.0*dq1*cos(q2)*sin(q1) + 1.0*dq2*cos(q1)*sin(q2) + 1.0*dq2*cos(q2)*sin(q1)) + (1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1))*(dq0*cos(q1)*sin(q0)*sin(q2) - dq2*cos(q0)*cos(q1)*cos(q2) - 1.0*dq1*cos(q0)*cos(q1)*cos(q2) + 1.0*dq0*cos(q2)*sin(q0)*sin(q1) + dq1*cos(q0)*sin(q1)*sin(q2) + 1.0*dq2*cos(q0)*sin(q1)*sin(q2));

J_dot(6,1) = 2.0*dq0*cos(q0)*sin(q0) - 2*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1))*(1.0*dq0*cos(q1)*sin(q0)*sin(q2) - 1.0*dq2*cos(q0)*cos(q1)*cos(q2) - 1.0*dq1*cos(q0)*cos(q1)*cos(q2) + 1.0*dq0*cos(q2)*sin(q0)*sin(q1) + 1.0*dq1*cos(q0)*sin(q1)*sin(q2) + 1.0*dq2*cos(q0)*sin(q1)*sin(q2)) - 2*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2))*(dq0*cos(q1)*cos(q2)*sin(q0) + 1.0*dq1*cos(q0)*cos(q1)*sin(q2) + dq1*cos(q0)*cos(q2)*sin(q1) + dq2*cos(q0)*cos(q1)*sin(q2) + 1.0*dq2*cos(q0)*cos(q2)*sin(q1) - 1.0*dq0*sin(q0)*sin(q1)*sin(q2));

J_dot(6,2) = (1.0*cos(q1)*sin(q0)*sin(q2) + cos(q2)*sin(q0)*sin(q1))*(dq0*cos(q1)*cos(q2)*sin(q0) + 1.0*dq1*cos(q0)*cos(q1)*sin(q2) + dq1*cos(q0)*cos(q2)*sin(q1) + dq2*cos(q0)*cos(q1)*sin(q2) + 1.0*dq2*cos(q0)*cos(q2)*sin(q1) - 1.0*dq0*sin(q0)*sin(q1)*sin(q2)) - (cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2))*(1.0*dq0*cos(q0)*cos(q1)*sin(q2) + dq0*cos(q0)*cos(q2)*sin(q1) + dq1*cos(q1)*cos(q2)*sin(q0) + 1.0*dq2*cos(q1)*cos(q2)*sin(q0) - 1.0*dq1*sin(q0)*sin(q1)*sin(q2) - dq2*sin(q0)*sin(q1)*sin(q2)) - (1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1))*(1.0*dq0*cos(q0)*sin(q1)*sin(q2) - 1.0*dq0*cos(q0)*cos(q1)*cos(q2) + 1.0*dq1*cos(q1)*sin(q0)*sin(q2) + 1.0*dq1*cos(q2)*sin(q0)*sin(q1) + 1.0*dq2*cos(q1)*sin(q0)*sin(q2) + 1.0*dq2*cos(q2)*sin(q0)*sin(q1)) + (1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0))*(1.0*dq0*cos(q1)*sin(q0)*sin(q2) - 1.0*dq2*cos(q0)*cos(q1)*cos(q2) - 1.0*dq1*cos(q0)*cos(q1)*cos(q2) + 1.0*dq0*cos(q2)*sin(q0)*sin(q1) + 1.0*dq1*cos(q0)*sin(q1)*sin(q2) + 1.0*dq2*cos(q0)*sin(q1)*sin(q2));

J_dot(6,3) = (cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1))*(dq0*cos(q1)*cos(q2)*sin(q0) + 1.0*dq1*cos(q0)*cos(q1)*sin(q2) + dq1*cos(q0)*cos(q2)*sin(q1) + dq2*cos(q0)*cos(q1)*sin(q2) + 1.0*dq2*cos(q0)*cos(q2)*sin(q1) - 1.0*dq0*sin(q0)*sin(q1)*sin(q2)) - (cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2))*(dq0*cos(q0)*cos(q1)*sin(q2) + 1.0*dq0*cos(q0)*cos(q2)*sin(q1) + 1.0*dq1*cos(q1)*cos(q2)*sin(q0) + dq2*cos(q1)*cos(q2)*sin(q0) - dq1*sin(q0)*sin(q1)*sin(q2) - 1.0*dq2*sin(q0)*sin(q1)*sin(q2)) - (1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1))*(1.0*dq0*cos(q0)*sin(q1)*sin(q2) - 1.0*dq0*cos(q0)*cos(q1)*cos(q2) + 1.0*dq1*cos(q1)*sin(q0)*sin(q2) + 1.0*dq1*cos(q2)*sin(q0)*sin(q1) + 1.0*dq2*cos(q1)*sin(q0)*sin(q2) + 1.0*dq2*cos(q2)*sin(q0)*sin(q1)) + (1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0))*(1.0*dq0*cos(q1)*sin(q0)*sin(q2) - 1.0*dq2*cos(q0)*cos(q1)*cos(q2) - 1.0*dq1*cos(q0)*cos(q1)*cos(q2) + 1.0*dq0*cos(q2)*sin(q0)*sin(q1) + 1.0*dq1*cos(q0)*sin(q1)*sin(q2) + 1.0*dq2*cos(q0)*sin(q1)*sin(q2));

