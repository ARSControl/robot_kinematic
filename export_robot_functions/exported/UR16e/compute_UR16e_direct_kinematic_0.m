function T = compute_UR16e_direct_kinematic_0(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

T(1,1) = cos(q0);

T(1,2) = 0;

T(1,3) = sin(q0);

T(1,4) = 0;

T(2,1) = sin(q0);

T(2,2) = 0;

T(2,3) = -1.0*cos(q0);

T(2,4) = 0;

T(3,1) = 0;

T(3,2) = 1.0;

T(3,3) = 0;

T(3,4) = 0.1807;

T(4,1) = 0;

T(4,2) = 0;

T(4,3) = 0;

T(4,4) = 1.0;

