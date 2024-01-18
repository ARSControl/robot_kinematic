function J = compute_UR5_jacobian(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

J(1,1) = 0.10915*cos(q0) + 0.0823*cos(q0)*cos(q4) - 0.09465*sin(q1 + q2 + q3)*sin(q0) + 0.00025*sin(q0)*(1569.0*cos(q1 + q2) + 1700.0*cos(q1)) + 0.0823*cos(q1 + q2 + q3)*sin(q0)*sin(q4);

J(1,2) = (cos(q0)*(1893.0*cos(q1 + q2 + q3) + 7845.0*sin(q1 + q2) + 8500.0*sin(q1) + 1646.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J(1,3) = (cos(q0)*(1893.0*cos(q1 + q2 + q3) + 7845.0*sin(q1 + q2) + 1646.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J(1,4) = (cos(q0)*(1893.0*cos(q1 + q2 + q3) + 1646.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J(1,5) = - 0.0823*sin(q0)*sin(q4) - 0.0823*cos(q1 + q2 + q3)*cos(q0)*cos(q4);

J(1,6) = 0;

J(2,1) = 0.10915*sin(q0) + 0.0823*cos(q4)*sin(q0) + 0.09465*sin(q1 + q2 + q3)*cos(q0) - 0.00025*cos(q0)*(1569.0*cos(q1 + q2) + 1700.0*cos(q1)) - 0.0823*cos(q1 + q2 + q3)*cos(q0)*sin(q4);

J(2,2) = (sin(q0)*(1893.0*cos(q1 + q2 + q3) + 7845.0*sin(q1 + q2) + 8500.0*sin(q1) + 1646.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J(2,3) = (sin(q0)*(1893.0*cos(q1 + q2 + q3) + 7845.0*sin(q1 + q2) + 1646.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J(2,4) = (sin(q0)*(1893.0*cos(q1 + q2 + q3) + 1646.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J(2,5) = 0.0823*cos(q0)*sin(q4) - 0.0823*cos(q1 + q2 + q3)*cos(q4)*sin(q0);

J(2,6) = 0;

J(3,1) = 0;

J(3,2) = 0.09465*sin(q1 + q2 + q3) - 0.39225*cos(q1 + q2) - 0.425*cos(q1) - 0.0823*cos(q1 + q2 + q3)*sin(q4);

J(3,3) = 0.09465*sin(q1 + q2 + q3) - 0.39225*cos(q1 + q2) - 0.0823*cos(q1 + q2 + q3)*sin(q4);

J(3,4) = 0.09465*sin(q1 + q2 + q3) - 0.0823*cos(q1 + q2 + q3)*sin(q4);

J(3,5) = -0.0823*sin(q1 + q2 + q3)*cos(q4);

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

