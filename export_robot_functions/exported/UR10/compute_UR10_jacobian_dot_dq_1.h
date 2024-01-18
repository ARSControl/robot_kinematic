#include <Eigen/Dense>

Eigen::Matrix<double, 6, 1> compute_UR10_jacobian_dot_dq_1(Eigen::Matrix<double, 6, 1> q, Eigen::Matrix<double, 6, 1> dq){

Eigen::Matrix<double, 6, 1> J_dot_dq;

J_dot_dq.setZero();

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

J_dot_dq(0,0) = (dq0*dq0)*cos(q0)*cos(q1)*(1.53E+2/2.5E+2)+(dq1*dq1)*cos(q0)*cos(q1)*(1.53E+2/2.5E+2)-dq0*dq1*sin(q0)*sin(q1)*1.224;

J_dot_dq(1,0) = (dq0*dq0)*cos(q1)*sin(q0)*(1.53E+2/2.5E+2)+(dq1*dq1)*cos(q1)*sin(q0)*(1.53E+2/2.5E+2)+dq0*dq1*cos(q0)*sin(q1)*1.224;

J_dot_dq(2,0) = (dq1*dq1)*sin(q1)*6.12E-1;

J_dot_dq(3,0) = dq0*dq1*cos(q0);

J_dot_dq(4,0) = dq0*dq1*sin(q0);

J_dot_dq(5,0) = 0.0;

return J_dot_dq;

}
