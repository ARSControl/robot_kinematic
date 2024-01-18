function J = compute_UR5e_jacobian_1(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

J(1,1) = 0.425*cos(q1)*sin(q0);

J(1,2) = 0.425*cos(q0)*sin(q1);

J(2,1) = -0.425*cos(q0)*cos(q1);

J(2,2) = 0.425*sin(q0)*sin(q1);

J(3,1) = 0;

J(3,2) = -0.425*cos(q1);

J(4,1) = 0;

J(4,2) = 1.0*cos(q1)^2*sin(q0) + 1.0*sin(q0)*sin(q1)^2;

J(5,1) = 0;

J(5,2) = - 1.0*cos(q0)*cos(q1)^2 - 1.0*cos(q0)*sin(q1)^2;

J(6,1) = 1.0*sin(q0)^2 + cos(q0)^2*cos(q1)^2 + 1.0*cos(q0)^2*sin(q1)^2;

J(6,2) = 0;

