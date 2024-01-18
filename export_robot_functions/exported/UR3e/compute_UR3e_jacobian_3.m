function J = compute_UR3e_jacobian_3(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

J(1,1) = 0.13105*cos(q0) + 0.24355*cos(q1)*sin(q0) - 0.2132*sin(q0)*sin(q1)*sin(q2) + 0.2132*cos(q1)*cos(q2)*sin(q0);

J(1,2) = 0.24355*cos(q0)*sin(q1) + 0.2132*cos(q0)*cos(q1)*sin(q2) + 0.2132*cos(q0)*cos(q2)*sin(q1);

J(1,3) = 0.2132*cos(q0)*cos(q1)*sin(q2) + 0.2132*cos(q0)*cos(q2)*sin(q1);

J(1,4) = 0;

J(2,1) = 0.13105*sin(q0) - 0.24355*cos(q0)*cos(q1) - 0.2132*cos(q0)*cos(q1)*cos(q2) + 0.2132*cos(q0)*sin(q1)*sin(q2);

J(2,2) = 0.24355*sin(q0)*sin(q1) + 0.2132*cos(q1)*sin(q0)*sin(q2) + 0.2132*cos(q2)*sin(q0)*sin(q1);

J(2,3) = 0.2132*cos(q1)*sin(q0)*sin(q2) + 0.2132*cos(q2)*sin(q0)*sin(q1);

J(2,4) = 0;

J(3,1) = 0;

J(3,2) = 0.2132*sin(q1)*sin(q2) - 0.2132*cos(q1)*cos(q2) - 0.24355*cos(q1);

J(3,3) = 0.2132*sin(q1)*sin(q2) - 0.2132*cos(q1)*cos(q2);

J(3,4) = 0;

J(4,1) = 0;

J(4,2) = (1.0*cos(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)) + sin(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)))*(cos(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1)) - 1.0*sin(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0))) - (1.0*cos(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0)) + 1.0*sin(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1)))*(cos(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)) - sin(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)));

J(4,3) = (1.0*cos(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)) + sin(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)))*(cos(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1)) - 1.0*sin(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0))) - (1.0*cos(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0)) + 1.0*sin(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1)))*(cos(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)) - sin(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)));

J(4,4) = (cos(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)) + 1.0*sin(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)))*(cos(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1)) - 1.0*sin(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0))) - (1.0*cos(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0)) + 1.0*sin(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1)))*(cos(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)) - sin(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)));

J(5,1) = (1.0*sin(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1)) + cos(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - cos(q1)*cos(q2)*sin(q0)))*(cos(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)) + sin(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2))) + (1.0*cos(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)) - sin(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)))*(cos(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1)) - sin(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - cos(q1)*cos(q2)*sin(q0)));

J(5,2) = (sin(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + cos(q0)*cos(q2)*sin(q1)) - cos(q3)*(1.0*cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)))*(1.0*cos(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)) - sin(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1))) - (cos(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + cos(q0)*cos(q2)*sin(q1)) + 1.0*sin(q3)*(1.0*cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)))*(cos(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)) + sin(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)));

J(5,3) = (sin(q3)*(cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)) - cos(q3)*(1.0*cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)))*(1.0*cos(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)) - sin(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1))) - (cos(q3)*(cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)) + 1.0*sin(q3)*(1.0*cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)))*(cos(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)) + sin(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)));

J(5,4) = - (sin(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) + 1.0*cos(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)))*(cos(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)) + sin(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2))) - (cos(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) - sin(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)))*(1.0*cos(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)) - sin(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)));

J(6,1) = 1.0*sin(q0)^2 + (cos(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) - 1.0*sin(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)))*(1.0*cos(q3)*(1.0*cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) - 1.0*sin(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1))) + (sin(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) + cos(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)))*(cos(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)) + 1.0*sin(q3)*(1.0*cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)));

J(6,2) = - (sin(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) + cos(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)))*(cos(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0)) + 1.0*sin(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1))) - (1.0*cos(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1)) - 1.0*sin(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0)))*(cos(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) - 1.0*sin(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)));

J(6,3) = - (sin(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) + cos(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)))*(cos(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0)) + 1.0*sin(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1))) - (1.0*cos(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1)) - 1.0*sin(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0)))*(cos(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) - 1.0*sin(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)));

J(6,4) = - (sin(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) + cos(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)))*(1.0*cos(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0)) + sin(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1))) - (1.0*cos(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1)) - 1.0*sin(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0)))*(cos(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) - 1.0*sin(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)));

