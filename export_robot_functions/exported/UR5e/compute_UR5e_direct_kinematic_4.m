function T = compute_UR5e_direct_kinematic_4(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

T(1,1) = sin(q0)*sin(q4) + cos(q1 + q2 + q3)*cos(q0)*cos(q4);

T(1,2) = -1.0*sin(q1 + q2 + q3)*cos(q0);

T(1,3) = cos(q4)*sin(q0) - cos(q1 + q2 + q3)*cos(q0)*sin(q4);

T(1,4) = 0.13333*sin(q0) + 0.0997*sin(q1 + q2 + q3)*cos(q0) - 0.0002*cos(q0)*(1961.0*cos(q1 + q2) + 2125.0*cos(q1));

T(2,1) = cos(q1 + q2 + q3)*cos(q4)*sin(q0) - 1.0*cos(q0)*sin(q4);

T(2,2) = -1.0*sin(q1 + q2 + q3)*sin(q0);

T(2,3) = - cos(q0)*cos(q4) - cos(q1 + q2 + q3)*sin(q0)*sin(q4);

T(2,4) = 0.0997*sin(q1 + q2 + q3)*sin(q0) - 0.13333*cos(q0) - 0.0002*sin(q0)*(1961.0*cos(q1 + q2) + 2125.0*cos(q1));

T(3,1) = sin(q1 + q2 + q3)*cos(q4);

T(3,2) = cos(q1 + q2 + q3);

T(3,3) = -1.0*sin(q1 + q2 + q3)*sin(q4);

T(3,4) = 0.1625 - 0.3922*sin(q1 + q2) - 0.425*sin(q1) - 0.0997*cos(q1 + q2 + q3);

T(4,1) = 0;

T(4,2) = 0;

T(4,3) = 0;

T(4,4) = 1.0;

