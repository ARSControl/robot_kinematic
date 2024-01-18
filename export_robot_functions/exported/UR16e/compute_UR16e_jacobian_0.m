function J = compute_UR16e_jacobian_0(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

J(1,1) = 0;

J(2,1) = 0;

J(3,1) = 0;

J(4,1) = 0;

J(5,1) = 0;

J(6,1) = cos(q0)^2 + 1.0*sin(q0)^2;

