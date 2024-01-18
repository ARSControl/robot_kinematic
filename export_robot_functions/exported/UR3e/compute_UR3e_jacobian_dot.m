function J_dot = compute_UR3e_jacobian_dot(q, dq)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);

dq0 = dq(1);
dq1 = dq(2);
dq2 = dq(3);
dq3 = dq(4);
dq4 = dq(5);
dq5 = dq(6);

J_dot(1,1) = 0.00005*dq0*cos(q0)*(4264.0*cos(q1 + q2) + 4871.0*cos(q1)) - 0.13105*dq0*sin(q0) - 0.0921*dq0*cos(q4)*sin(q0) - 0.0921*dq4*cos(q0)*sin(q4) - 0.08535*dq0*sin(q1 + q2 + q3)*cos(q0) - 0.00005*sin(q0)*(4264.0*sin(q1 + q2)*(dq1 + dq2) + 4871.0*dq1*sin(q1)) - 0.08535*cos(q1 + q2 + q3)*sin(q0)*(dq1 + dq2 + dq3) + 0.0921*dq0*cos(q1 + q2 + q3)*cos(q0)*sin(q4) + 0.0921*dq4*cos(q1 + q2 + q3)*cos(q4)*sin(q0) - 0.0921*sin(q1 + q2 + q3)*sin(q0)*sin(q4)*(dq1 + dq2 + dq3);

J_dot(1,2) = (cos(q0)*(4264.0*cos(q1 + q2)*(dq1 + dq2) - 1707.0*sin(q1 + q2 + q3)*(dq1 + dq2 + dq3) + 4871.0*dq1*cos(q1) + 1842.0*dq4*sin(q1 + q2 + q3)*cos(q4) + 1842.0*cos(q1 + q2 + q3)*sin(q4)*(dq1 + dq2 + dq3)))/20000 - (dq0*sin(q0)*(1707.0*cos(q1 + q2 + q3) + 4264.0*sin(q1 + q2) + 4871.0*sin(q1) + 1842.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J_dot(1,3) = (cos(q0)*(4264.0*cos(q1 + q2)*(dq1 + dq2) - 1707.0*sin(q1 + q2 + q3)*(dq1 + dq2 + dq3) + 1842.0*dq4*sin(q1 + q2 + q3)*cos(q4) + 1842.0*cos(q1 + q2 + q3)*sin(q4)*(dq1 + dq2 + dq3)))/20000 - (dq0*sin(q0)*(1707.0*cos(q1 + q2 + q3) + 4264.0*sin(q1 + q2) + 1842.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J_dot(1,4) = (3*cos(q0)*(614.0*dq4*sin(q1 + q2 + q3)*cos(q4) - 569.0*sin(q1 + q2 + q3)*(dq1 + dq2 + dq3) + 614.0*cos(q1 + q2 + q3)*sin(q4)*(dq1 + dq2 + dq3)))/20000 - (3*dq0*sin(q0)*(569.0*cos(q1 + q2 + q3) + 614.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J_dot(1,5) = 0.0921*dq0*cos(q1 + q2 + q3)*cos(q4)*sin(q0) - 0.0921*dq4*cos(q4)*sin(q0) - 0.0921*dq0*cos(q0)*sin(q4) + 0.0921*dq4*cos(q1 + q2 + q3)*cos(q0)*sin(q4) + 0.0921*sin(q1 + q2 + q3)*cos(q0)*cos(q4)*(dq1 + dq2 + dq3);

J_dot(1,6) = 0;

J_dot(2,1) = 0.00005*cos(q0)*(4264.0*sin(q1 + q2)*(dq1 + dq2) + 4871.0*dq1*sin(q1)) + 0.13105*dq0*cos(q0) + 0.0921*dq0*cos(q0)*cos(q4) - 0.0921*dq4*sin(q0)*sin(q4) - 0.08535*dq0*sin(q1 + q2 + q3)*sin(q0) + 0.00005*dq0*sin(q0)*(4264.0*cos(q1 + q2) + 4871.0*cos(q1)) + 0.08535*cos(q1 + q2 + q3)*cos(q0)*(dq1 + dq2 + dq3) - 0.0921*dq4*cos(q1 + q2 + q3)*cos(q0)*cos(q4) + 0.0921*dq0*cos(q1 + q2 + q3)*sin(q0)*sin(q4) + 0.0921*sin(q1 + q2 + q3)*cos(q0)*sin(q4)*(dq1 + dq2 + dq3);

J_dot(2,2) = (sin(q0)*(4264.0*cos(q1 + q2)*(dq1 + dq2) - 1707.0*sin(q1 + q2 + q3)*(dq1 + dq2 + dq3) + 4871.0*dq1*cos(q1) + 1842.0*dq4*sin(q1 + q2 + q3)*cos(q4) + 1842.0*cos(q1 + q2 + q3)*sin(q4)*(dq1 + dq2 + dq3)))/20000 + (dq0*cos(q0)*(1707.0*cos(q1 + q2 + q3) + 4264.0*sin(q1 + q2) + 4871.0*sin(q1) + 1842.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J_dot(2,3) = (sin(q0)*(4264.0*cos(q1 + q2)*(dq1 + dq2) - 1707.0*sin(q1 + q2 + q3)*(dq1 + dq2 + dq3) + 1842.0*dq4*sin(q1 + q2 + q3)*cos(q4) + 1842.0*cos(q1 + q2 + q3)*sin(q4)*(dq1 + dq2 + dq3)))/20000 + (dq0*cos(q0)*(1707.0*cos(q1 + q2 + q3) + 4264.0*sin(q1 + q2) + 1842.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J_dot(2,4) = (3*sin(q0)*(614.0*dq4*sin(q1 + q2 + q3)*cos(q4) - 569.0*sin(q1 + q2 + q3)*(dq1 + dq2 + dq3) + 614.0*cos(q1 + q2 + q3)*sin(q4)*(dq1 + dq2 + dq3)))/20000 + (3*dq0*cos(q0)*(569.0*cos(q1 + q2 + q3) + 614.0*sin(q1 + q2 + q3)*sin(q4)))/20000;

J_dot(2,5) = 0.0921*dq4*cos(q0)*cos(q4) - 0.0921*dq0*sin(q0)*sin(q4) - 0.0921*dq0*cos(q1 + q2 + q3)*cos(q0)*cos(q4) + 0.0921*dq4*cos(q1 + q2 + q3)*sin(q0)*sin(q4) + 0.0921*sin(q1 + q2 + q3)*cos(q4)*sin(q0)*(dq1 + dq2 + dq3);

J_dot(2,6) = 0;

J_dot(3,1) = 0;

J_dot(3,2) = 0.08535*cos(q1 + q2 + q3)*(dq1 + dq2 + dq3) + 0.2132*sin(q1 + q2)*(dq1 + dq2) + 0.24355*dq1*sin(q1) - 0.0921*dq4*cos(q1 + q2 + q3)*cos(q4) + 0.0921*sin(q1 + q2 + q3)*sin(q4)*(dq1 + dq2 + dq3);

J_dot(3,3) = 0.08535*cos(q1 + q2 + q3)*(dq1 + dq2 + dq3) + 0.2132*sin(q1 + q2)*(dq1 + dq2) - 0.0921*dq4*cos(q1 + q2 + q3)*cos(q4) + 0.0921*sin(q1 + q2 + q3)*sin(q4)*(dq1 + dq2 + dq3);

J_dot(3,4) = 0.08535*cos(q1 + q2 + q3)*(dq1 + dq2 + dq3) - 0.0921*dq4*cos(q1 + q2 + q3)*cos(q4) + 0.0921*sin(q1 + q2 + q3)*sin(q4)*(dq1 + dq2 + dq3);

J_dot(3,5) = 0.0921*dq4*sin(q1 + q2 + q3)*sin(q4) - 0.0921*cos(q1 + q2 + q3)*cos(q4)*(dq1 + dq2 + dq3);

J_dot(3,6) = 0;

J_dot(4,1) = 0;

J_dot(4,2) = dq0*cos(q0);

J_dot(4,3) = dq0*cos(q0);

J_dot(4,4) = dq0*cos(q0);

J_dot(4,5) = cos(q1 + q2 + q3)*cos(q0)*(dq1 + dq2 + dq3) - dq0*sin(q1 + q2 + q3)*sin(q0);

J_dot(4,6) = dq0*cos(q0)*cos(q4) - dq4*sin(q0)*sin(q4) - dq4*cos(q1 + q2 + q3)*cos(q0)*cos(q4) + dq0*cos(q1 + q2 + q3)*sin(q0)*sin(q4) + sin(q1 + q2 + q3)*cos(q0)*sin(q4)*(dq1 + dq2 + dq3);

J_dot(5,1) = 0;

J_dot(5,2) = dq0*sin(q0);

J_dot(5,3) = dq0*sin(q0);

J_dot(5,4) = dq0*sin(q0);

J_dot(5,5) = dq0*sin(q1 + q2 + q3)*cos(q0) + cos(q1 + q2 + q3)*sin(q0)*(dq1 + dq2 + dq3);

J_dot(5,6) = dq0*cos(q4)*sin(q0) + dq4*cos(q0)*sin(q4) - dq0*cos(q1 + q2 + q3)*cos(q0)*sin(q4) - dq4*cos(q1 + q2 + q3)*cos(q4)*sin(q0) + sin(q1 + q2 + q3)*sin(q0)*sin(q4)*(dq1 + dq2 + dq3);

J_dot(6,1) = 2*(cos(q4)*sin(q0) - cos(q1 + q2 + q3)*cos(q0)*sin(q4))*(dq0*cos(q0)*cos(q4) - dq4*sin(q0)*sin(q4) - dq4*cos(q1 + q2 + q3)*cos(q0)*cos(q4) + dq0*cos(q1 + q2 + q3)*sin(q0)*sin(q4) + sin(q1 + q2 + q3)*cos(q0)*sin(q4)*(dq1 + dq2 + dq3)) + 2*(sin(q0)*sin(q4)*sin(q5) + sin(q1 + q2 + q3)*cos(q0)*cos(q5) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)*sin(q5))*(dq0*cos(q0)*sin(q4)*sin(q5) + dq4*cos(q4)*sin(q0)*sin(q5) + dq5*cos(q5)*sin(q0)*sin(q4) - dq0*sin(q1 + q2 + q3)*cos(q5)*sin(q0) - dq5*sin(q1 + q2 + q3)*cos(q0)*sin(q5) + cos(q1 + q2 + q3)*cos(q0)*cos(q5)*(dq1 + dq2 + dq3) + dq5*cos(q1 + q2 + q3)*cos(q0)*cos(q4)*cos(q5) - dq0*cos(q1 + q2 + q3)*cos(q4)*sin(q0)*sin(q5) - dq4*cos(q1 + q2 + q3)*cos(q0)*sin(q4)*sin(q5) - sin(q1 + q2 + q3)*cos(q0)*cos(q4)*sin(q5)*(dq1 + dq2 + dq3)) - 2*(cos(q5)*sin(q0)*sin(q4) - 1.0*sin(q1 + q2 + q3)*cos(q0)*sin(q5) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)*cos(q5))*(dq5*sin(q0)*sin(q4)*sin(q5) - dq4*cos(q4)*cos(q5)*sin(q0) - dq0*cos(q0)*cos(q5)*sin(q4) + dq5*sin(q1 + q2 + q3)*cos(q0)*cos(q5) - 1.0*dq0*sin(q1 + q2 + q3)*sin(q0)*sin(q5) + cos(q1 + q2 + q3)*cos(q0)*sin(q5)*(dq1 + dq2 + dq3) + dq0*cos(q1 + q2 + q3)*cos(q4)*cos(q5)*sin(q0) + dq4*cos(q1 + q2 + q3)*cos(q0)*cos(q5)*sin(q4) + dq5*cos(q1 + q2 + q3)*cos(q0)*cos(q4)*sin(q5) + sin(q1 + q2 + q3)*cos(q0)*cos(q4)*cos(q5)*(dq1 + dq2 + dq3));

J_dot(6,2) = 0;

J_dot(6,3) = 0;

J_dot(6,4) = 0;

J_dot(6,5) = (cos(q0)*sin(q4) - cos(q1 + q2 + q3)*cos(q4)*sin(q0))*(dq0*cos(q0)*cos(q4) - dq4*sin(q0)*sin(q4) - dq4*cos(q1 + q2 + q3)*cos(q0)*cos(q4) + dq0*cos(q1 + q2 + q3)*sin(q0)*sin(q4) + sin(q1 + q2 + q3)*cos(q0)*sin(q4)*(dq1 + dq2 + dq3)) + (cos(q4)*sin(q0) - cos(q1 + q2 + q3)*cos(q0)*sin(q4))*(dq4*cos(q0)*cos(q4) - dq0*sin(q0)*sin(q4) - dq0*cos(q1 + q2 + q3)*cos(q0)*cos(q4) + dq4*cos(q1 + q2 + q3)*sin(q0)*sin(q4) + sin(q1 + q2 + q3)*cos(q4)*sin(q0)*(dq1 + dq2 + dq3)) + 1.0*cos(q5)*(1.0*cos(q0)*cos(q4) + 1.0*cos(q1 + q2 + q3)*sin(q0)*sin(q4))*(cos(q5)*(dq0*cos(q1 + q2 + q3)*cos(q4)*sin(q0) - dq4*cos(q4)*sin(q0) - dq0*cos(q0)*sin(q4) + dq4*cos(q1 + q2 + q3)*cos(q0)*sin(q4) + sin(q1 + q2 + q3)*cos(q0)*cos(q4)*(dq1 + dq2 + dq3)) + dq5*sin(q5)*(sin(q0)*sin(q4) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)) + 1.0*dq5*sin(q1 + q2 + q3)*cos(q0)*cos(q5) - 1.0*dq0*sin(q1 + q2 + q3)*sin(q0)*sin(q5) + 1.0*cos(q1 + q2 + q3)*cos(q0)*sin(q5)*(dq1 + dq2 + dq3)) + 1.0*cos(q5)*(cos(q5)*(sin(q0)*sin(q4) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)) - 1.0*sin(q1 + q2 + q3)*cos(q0)*sin(q5))*(1.0*dq0*cos(q4)*sin(q0) + 1.0*dq4*cos(q0)*sin(q4) - 1.0*dq0*cos(q1 + q2 + q3)*cos(q0)*sin(q4) - 1.0*dq4*cos(q1 + q2 + q3)*cos(q4)*sin(q0) + 1.0*sin(q1 + q2 + q3)*sin(q0)*sin(q4)*(dq1 + dq2 + dq3)) + sin(q5)*(1.0*cos(q0)*cos(q4) + 1.0*cos(q1 + q2 + q3)*sin(q0)*sin(q4))*(1.0*sin(q5)*(dq0*cos(q1 + q2 + q3)*cos(q4)*sin(q0) - dq4*cos(q4)*sin(q0) - dq0*cos(q0)*sin(q4) + dq4*cos(q1 + q2 + q3)*cos(q0)*sin(q4) + sin(q1 + q2 + q3)*cos(q0)*cos(q4)*(dq1 + dq2 + dq3)) - 1.0*dq5*cos(q5)*(sin(q0)*sin(q4) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)) + 1.0*dq0*sin(q1 + q2 + q3)*cos(q5)*sin(q0) + 1.0*dq5*sin(q1 + q2 + q3)*cos(q0)*sin(q5) - 1.0*cos(q1 + q2 + q3)*cos(q0)*cos(q5)*(dq1 + dq2 + dq3)) + sin(q5)*(1.0*sin(q5)*(sin(q0)*sin(q4) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)) + 1.0*sin(q1 + q2 + q3)*cos(q0)*cos(q5))*(1.0*dq0*cos(q4)*sin(q0) + 1.0*dq4*cos(q0)*sin(q4) - 1.0*dq0*cos(q1 + q2 + q3)*cos(q0)*sin(q4) - 1.0*dq4*cos(q1 + q2 + q3)*cos(q4)*sin(q0) + 1.0*sin(q1 + q2 + q3)*sin(q0)*sin(q4)*(dq1 + dq2 + dq3)) + 1.0*dq5*sin(q5)*(1.0*cos(q0)*cos(q4) + 1.0*cos(q1 + q2 + q3)*sin(q0)*sin(q4))*(cos(q5)*(sin(q0)*sin(q4) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)) - 1.0*sin(q1 + q2 + q3)*cos(q0)*sin(q5)) - dq5*cos(q5)*(1.0*cos(q0)*cos(q4) + 1.0*cos(q1 + q2 + q3)*sin(q0)*sin(q4))*(1.0*sin(q5)*(sin(q0)*sin(q4) + cos(q1 + q2 + q3)*cos(q0)*cos(q4)) + 1.0*sin(q1 + q2 + q3)*cos(q0)*cos(q5));

J_dot(6,6) = - dq4*sin(q1 + q2 + q3)*cos(q4) - cos(q1 + q2 + q3)*sin(q4)*(dq1 + dq2 + dq3);

