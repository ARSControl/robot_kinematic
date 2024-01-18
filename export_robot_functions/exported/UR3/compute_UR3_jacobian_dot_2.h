#include <Eigen/Dense>

Eigen::Matrix<double, 6, 6> compute_UR3_jacobian_dot_2(Eigen::Matrix<double, 6, 1> q, Eigen::Matrix<double, 6, 1> dq){

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

J_dot(0,0) = sin(q0)*(sin(q1+q2)*(dq1+dq2)*4.265E+3+dq1*sin(q1)*4.873E+3)*(-5.0E-5)+(dq0*cos(q0)*(cos(q1+q2)*4.265E+3+cos(q1)*4.873E+3))/2.0E+4;

J_dot(0,1) = (cos(q0)*(cos(q1+q2)*(dq1+dq2)*4.265E+3+dq1*cos(q1)*4.873E+3))/2.0E+4-(dq0*sin(q0)*(sin(q1+q2)*4.265E+3+sin(q1)*4.873E+3))/2.0E+4;

J_dot(0,2) = cos(q1+q2)*cos(q0)*(dq1+dq2)*2.1325E-1-dq0*sin(q1+q2)*sin(q0)*2.1325E-1;

J_dot(1,0) = (cos(q0)*(sin(q1+q2)*(dq1+dq2)*4.265E+3+dq1*sin(q1)*4.873E+3))/2.0E+4+(dq0*sin(q0)*(cos(q1+q2)*4.265E+3+cos(q1)*4.873E+3))/2.0E+4;

J_dot(1,1) = (sin(q0)*(cos(q1+q2)*(dq1+dq2)*4.265E+3+dq1*cos(q1)*4.873E+3))/2.0E+4+(dq0*cos(q0)*(sin(q1+q2)*4.265E+3+sin(q1)*4.873E+3))/2.0E+4;

J_dot(1,2) = cos(q1+q2)*sin(q0)*(dq1+dq2)*2.1325E-1+dq0*sin(q1+q2)*cos(q0)*2.1325E-1;

J_dot(2,0) = 0.0;

J_dot(2,1) = sin(q1+q2)*(dq1+dq2)*2.1325E-1+dq1*sin(q1)*2.4365E-1;

J_dot(2,2) = sin(q1+q2)*(dq1+dq2)*2.1325E-1;

J_dot(3,0) = 0.0;

J_dot(3,1) = dq0*cos(q0);

J_dot(3,2) = dq0*cos(q0);

J_dot(4,0) = 0.0;

J_dot(4,1) = dq0*sin(q0);

J_dot(4,2) = dq0*sin(q0);

J_dot(5,0) = 0.0;

J_dot(5,1) = 0.0;

J_dot(5,2) = 0.0;

return J_dot;

}
