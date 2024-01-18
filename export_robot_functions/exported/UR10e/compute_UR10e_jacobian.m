function J = compute_UR10e_jacobian(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

J(1,1) = 0.17415*cos(q0) + 0.11655*cos(q0)*cos(q4) - 0.11985*sin(q1 + q2 + q3)*sin(q0) + 0.00005*sin(q0)*(11431.0*cos(q1 + q2) + 12254.0*cos(q1)) + 0.11655*cos(q1 + q2 + q3)*sin(q0)*sin(q4);

J(1,2) = (cos(q0)*(2397.0*cos(q1 + q2 + q3) + 11431.0*sin(q1 + q2) + 12254.0*sin(q1) + 2331.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J(1,3) = (cos(q0)*(2397.0*cos(q1 + q2 + q3) + 11431.0*sin(q1 + q2) + 2331.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J(1,4) = (3*cos(q0)*(799.0*cos(q1 + q2 + q3) + 777.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J(1,5) = - 0.11655*sin(q0)*sin(q4) - 0.11655*cos(q1 + q2 + q3)*cos(q0)*cos(q4);

J(1,6) = 0;

J(2,1) = 0.17415*sin(q0) + 0.11655*cos(q4)*sin(q0) + 0.11985*sin(q1 + q2 + q3)*cos(q0) - 0.00005*cos(q0)*(11431.0*cos(q1 + q2) + 12254.0*cos(q1)) - 0.11655*cos(q1 + q2 + q3)*cos(q0)*sin(q4);

J(2,2) = (sin(q0)*(2397.0*cos(q1 + q2 + q3) + 11431.0*sin(q1 + q2) + 12254.0*sin(q1) + 2331.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J(2,3) = (sin(q0)*(2397.0*cos(q1 + q2 + q3) + 11431.0*sin(q1 + q2) + 2331.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J(2,4) = (3*sin(q0)*(799.0*cos(q1 + q2 + q3) + 777.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J(2,5) = 0.11655*cos(q0)*sin(q4) - 0.11655*cos(q1 + q2 + q3)*cos(q4)*sin(q0);

J(2,6) = 0;

J(3,1) = 0;

J(3,2) = 0.11985*sin(q1 + q2 + q3) - 0.57155*cos(q1 + q2) - 0.6127*cos(q1) - 0.11655*cos(q1 + q2 + q3)*sin(q4);

J(3,3) = 0.11985*sin(q1 + q2 + q3) - 0.57155*cos(q1 + q2) - 0.11655*cos(q1 + q2 + q3)*sin(q4);

J(3,4) = 0.11985*sin(q1 + q2 + q3) - 0.11655*cos(q1 + q2 + q3)*sin(q4);

J(3,5) = -0.11655*sin(q1 + q2 + q3)*cos(q4);

J(3,6) = 0;

J(4,1) = 0;

J(4,2) = sin(q0);

J(4,3) = sin(q0);

J(4,4) = sin(q0);

J(4,5) = sin(q1 + q2 + q3)*cos(q0);

J(4,6) = cos(q4)*sin(q0) - cos(q1 + q2 + q3)*cos(q0)*sin(q4);

J(5,1) = 0;

J(5,2) = -1.0*cos(q0);

J(5,3) = -1.0*cos(q0);

J(5,4) = -1.0*cos(q0);

J(5,5) = sin(q1 + q2 + q3)*sin(q0);

J(5,6) = - cos(q0)*cos(q4) - cos(q1 + q2 + q3)*sin(q0)*sin(q4);

J(6,1) = (cos(q4)*sin(q0) - cos(q1 + q2 + q3)*cos(q0)*sin(q4))^2 + (cos(q5)*sin(q0)*sin(q4) - 1.0*sin(q1 + q2 + q3)*cos(q0)*sin(q5) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)*cos(q5))^2 + (sin(q0)*sin(q4)*sin(q5) + sin(q1 + q2 + q3)*cos(q0)*cos(q5) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)*sin(q5))^2;

J(6,2) = 0;

J(6,3) = 0;

J(6,4) = 0;

J(6,5) = (cos(q0)*sin(q4) - cos(q1 + q2 + q3)*cos(q4)*sin(q0))*(cos(q4)*sin(q0) - cos(q1 + q2 + q3)*cos(q0)*sin(q4)) - 1.0*cos(q5)*(1.0*cos(q0)*cos(q4) + 1.0*cos(q1 + q2 + q3)*sin(q0)*sin(q4))*(cos(q5)*(sin(q0)*sin(q4) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)) - 1.0*sin(q1 + q2 + q3)*cos(q0)*sin(q5)) - sin(q5)*(1.0*cos(q0)*cos(q4) + 1.0*cos(q1 + q2 + q3)*sin(q0)*sin(q4))*(1.0*sin(q5)*(sin(q0)*sin(q4) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)) + 1.0*sin(q1 + q2 + q3)*cos(q0)*cos(q5));

J(6,6) = -sin(q1 + q2 + q3)*sin(q4);

