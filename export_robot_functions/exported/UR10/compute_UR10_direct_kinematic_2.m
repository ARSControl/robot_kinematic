function T = compute_UR10_direct_kinematic_2(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

T(1,1) = cos(q0)*cos(q1)*cos(q2) - 1.0*cos(q0)*sin(q1)*sin(q2);

T(1,2) = - 1.0*cos(q0)*cos(q1)*sin(q2) - 1.0*cos(q0)*cos(q2)*sin(q1);

T(1,3) = sin(q0);

T(1,4) = 0.5723*cos(q0)*sin(q1)*sin(q2) - 0.5723*cos(q0)*cos(q1)*cos(q2) - 0.612*cos(q0)*cos(q1);

T(2,1) = cos(q1)*cos(q2)*sin(q0) - 1.0*sin(q0)*sin(q1)*sin(q2);

T(2,2) = - 1.0*cos(q1)*sin(q0)*sin(q2) - 1.0*cos(q2)*sin(q0)*sin(q1);

T(2,3) = -1.0*cos(q0);

T(2,4) = 0.5723*sin(q0)*sin(q1)*sin(q2) - 0.612*cos(q1)*sin(q0) - 0.5723*cos(q1)*cos(q2)*sin(q0);

T(3,1) = 1.0*cos(q1)*sin(q2) + 1.0*cos(q2)*sin(q1);

T(3,2) = 1.0*cos(q1)*cos(q2) - 1.0*sin(q1)*sin(q2);

T(3,3) = 0;

T(3,4) = 0.1273 - 0.5723*cos(q1)*sin(q2) - 0.5723*cos(q2)*sin(q1) - 0.612*sin(q1);

T(4,1) = 0;

T(4,2) = 0;

T(4,3) = 0;

T(4,4) = 1.0;

