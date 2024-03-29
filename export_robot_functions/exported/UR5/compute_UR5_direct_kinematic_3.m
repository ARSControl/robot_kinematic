function T = compute_UR5_direct_kinematic_3(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

T(1,1) = cos(q1 + q2 + q3)*cos(q0);

T(1,2) = sin(q0);

T(1,3) = sin(q1 + q2 + q3)*cos(q0);

T(1,4) = 0.10915*sin(q0) - 0.00025*cos(q0)*(1569.0*cos(q1 + q2) + 1700.0*cos(q1));

T(2,1) = cos(q1 + q2 + q3)*sin(q0);

T(2,2) = -1.0*cos(q0);

T(2,3) = sin(q1 + q2 + q3)*sin(q0);

T(2,4) = - 0.10915*cos(q0) - 0.00025*sin(q0)*(1569.0*cos(q1 + q2) + 1700.0*cos(q1));

T(3,1) = sin(q1 + q2 + q3);

T(3,2) = 0;

T(3,3) = -1.0*cos(q1 + q2 + q3);

T(3,4) = 0.089159 - 0.425*sin(q1) - 0.39225*sin(q1 + q2);

T(4,1) = 0;

T(4,2) = 0;

T(4,3) = 0;

T(4,4) = 1.0;

