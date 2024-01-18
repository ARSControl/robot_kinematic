function T = compute_UR3_direct_kinematic_2(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

T(1,1) = cos(q1 + q2)*cos(q0);

T(1,2) = -sin(q1 + q2)*cos(q0);

T(1,3) = sin(q0);

T(1,4) = -(cos(q0)*(4265.0*cos(q1 + q2) + 4873.0*cos(q1)))/20000;

T(2,1) = cos(q1 + q2)*sin(q0);

T(2,2) = -sin(q1 + q2)*sin(q0);

T(2,3) = -1.0*cos(q0);

T(2,4) = -(sin(q0)*(4265.0*cos(q1 + q2) + 4873.0*cos(q1)))/20000;

T(3,1) = sin(q1 + q2);

T(3,2) = cos(q1 + q2);

T(3,3) = 0;

T(3,4) = 0.1519 - 0.24365*sin(q1) - 0.21325*sin(q1 + q2);

T(4,1) = 0;

T(4,2) = 0;

T(4,3) = 0;

T(4,4) = 1.0;

