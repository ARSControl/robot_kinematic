function T = compute_UR5_direct_kinematic_4(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

T(1,1) = sin(q0)*sin(q4) + cos(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) - 1.0*sin(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)));

T(1,2) = - 1.0*sin(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) - 1.0*cos(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1));

T(1,3) = cos(q4)*sin(q0) - 1.0*sin(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) - 1.0*sin(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)));

T(1,4) = 0.10915*sin(q0) - 0.425*cos(q0)*cos(q1) + 0.09465*sin(q3)*(cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2)) + 0.09465*cos(q3)*(1.0*cos(q0)*cos(q1)*sin(q2) + 1.0*cos(q0)*cos(q2)*sin(q1)) - 0.39225*cos(q0)*cos(q1)*cos(q2) + 0.39225*cos(q0)*sin(q1)*sin(q2);

T(2,1) = - 1.0*cos(q0)*sin(q4) - 1.0*cos(q4)*(1.0*cos(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0)) + 1.0*sin(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1)));

T(2,2) = 1.0*sin(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0)) - 1.0*cos(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1));

T(2,3) = sin(q4)*(1.0*cos(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0)) + 1.0*sin(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1))) - 1.0*cos(q0)*cos(q4);

T(2,4) = 0.09465*cos(q3)*(1.0*cos(q1)*sin(q0)*sin(q2) + 1.0*cos(q2)*sin(q0)*sin(q1)) - 0.10915*cos(q0) - 0.425*cos(q1)*sin(q0) - 0.09465*sin(q3)*(1.0*sin(q0)*sin(q1)*sin(q2) - 1.0*cos(q1)*cos(q2)*sin(q0)) + 0.39225*sin(q0)*sin(q1)*sin(q2) - 0.39225*cos(q1)*cos(q2)*sin(q0);

T(3,1) = cos(q4)*(cos(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)) + sin(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)));

T(3,2) = 1.0*cos(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)) - 1.0*sin(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1));

T(3,3) = -1.0*sin(q4)*(cos(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)) + sin(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)));

T(3,4) = 0.09465*sin(q3)*(1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1)) - 0.39225*cos(q1)*sin(q2) - 0.39225*cos(q2)*sin(q1) - 0.09465*cos(q3)*(1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2)) - 0.425*sin(q1) + 0.089159;

T(4,1) = 0;

T(4,2) = 0;

T(4,3) = 0;

T(4,4) = 1.0;
