function T = compute_UR3e_direct_kinematic(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

T(1,1) = cos(q5)*(sin(q0)*sin(q4) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)) - 1.0*sin(q1 + q2 + q3)*cos(q0)*sin(q5);

T(1,2) = - 1.0*sin(q5)*(sin(q0)*sin(q4) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)) - 1.0*sin(q1 + q2 + q3)*cos(q0)*cos(q5);

T(1,3) = cos(q4)*sin(q0) - cos(q1 + q2 + q3)*cos(q0)*sin(q4);

T(1,4) = 0.13105*sin(q0) + 0.0921*cos(q4)*sin(q0) + 0.08535*sin(q1 + q2 + q3)*cos(q0) - 0.00005*cos(q0)*(4264.0*cos(q1 + q2) + 4871.0*cos(q1)) - 0.0921*cos(q1 + q2 + q3)*cos(q0)*sin(q4);

T(2,1) = - 1.0*cos(q5)*(1.0*cos(q0)*sin(q4) - 1.0*cos(q1 + q2 + q3)*cos(q4)*sin(q0)) - 1.0*sin(q1 + q2 + q3)*sin(q0)*sin(q5);

T(2,2) = sin(q5)*(1.0*cos(q0)*sin(q4) - 1.0*cos(q1 + q2 + q3)*cos(q4)*sin(q0)) - 1.0*sin(q1 + q2 + q3)*cos(q5)*sin(q0);

T(2,3) = - cos(q0)*cos(q4) - cos(q1 + q2 + q3)*sin(q0)*sin(q4);

T(2,4) = 0.08535*sin(q1 + q2 + q3)*sin(q0) - 0.0921*cos(q0)*cos(q4) - 0.13105*cos(q0) - 0.00005*sin(q0)*(4264.0*cos(q1 + q2) + 4871.0*cos(q1)) - 0.0921*cos(q1 + q2 + q3)*sin(q0)*sin(q4);

T(3,1) = cos(q1 + q2 + q3)*sin(q5) + sin(q1 + q2 + q3)*cos(q4)*cos(q5);

T(3,2) = cos(q1 + q2 + q3)*cos(q5) - 1.0*sin(q1 + q2 + q3)*cos(q4)*sin(q5);

T(3,3) = -1.0*sin(q1 + q2 + q3)*sin(q4);

T(3,4) = 0.15185 - 0.2132*sin(q1 + q2) - 0.24355*sin(q1) - 0.0921*sin(q1 + q2 + q3)*sin(q4) - 0.08535*cos(q1 + q2 + q3);

T(4,1) = 0;

T(4,2) = 0;

T(4,3) = 0;

T(4,4) = 1.0;

