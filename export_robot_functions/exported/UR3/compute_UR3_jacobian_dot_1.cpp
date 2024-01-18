#include <Eigen/Dense>

Eigen::Matrix<double, 6, 6> compute_UR3_jacobian_dot_1(Eigen::Matrix<double, 6, 1> q, Eigen::Matrix<double, 6, 1> dq){

Eigen::Matrix<double, 6, 6> J_dot;

J_dot.setZero();

double q0 = q(0,0);
double q1 = q(1,0);
double q2 = q(2,0);
double q3 = q(3,0);
double q4 = q(4,0);
double q5 = q(5,0);

double dq0 = dq(0,0);
double dq1 = dq(1,0);
double dq2 = dq(2,0);
double dq3 = dq(3,0);
double dq4 = dq(4,0);
double dq5 = dq(5,0);

J_dot(0,0) = dq0*cos(q0)*cos(q1)*2.4365E-1-dq1*sin(q0)*sin(q1)*2.4365E-1;

J_dot(0,1) = dq1*cos(q0)*cos(q1)*2.4365E-1-dq0*sin(q0)*sin(q1)*2.4365E-1;

J_dot(1,0) = dq0*cos(q1)*sin(q0)*2.4365E-1+dq1*cos(q0)*sin(q1)*2.4365E-1;

J_dot(1,1) = dq0*cos(q0)*sin(q1)*2.4365E-1+dq1*cos(q1)*sin(q0)*2.4365E-1;

J_dot(2,0) = 0.0;

J_dot(2,1) = dq1*sin(q1)*2.4365E-1;

J_dot(3,0) = 0.0;

J_dot(3,1) = dq0*cos(q0);

J_dot(4,0) = 0.0;

J_dot(4,1) = dq0*sin(q0);

J_dot(5,0) = 0.0;

J_dot(5,1) = 0.0;

return J_dot;

}
