#include <Eigen/Dense>

Eigen::Matrix<double, 6, 1> compute_UR3e_jacobian_dot_dq_3(Eigen::Matrix<double, 6, 1> q, Eigen::Matrix<double, 6, 1> dq){

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

J_dot_dq(0,0) = dq2*(cos(q1+q2)*cos(q0)*(dq1+dq2)*2.132E-1-dq0*sin(q1+q2)*sin(q0)*2.132E-1)-dq0*(sin(q0)*(sin(q1+q2)*(dq1+dq2)*4.264E+3+dq1*sin(q1)*4.871E+3)*5.0E-5+dq0*sin(q0)*1.3105E-1-dq0*cos(q0)*(cos(q1+q2)*4.264E+3+cos(q1)*4.871E+3)*5.0E-5)+dq1*(cos(q0)*(cos(q1+q2)*(dq1+dq2)*4.264E+3+dq1*cos(q1)*4.871E+3)*5.0E-5-dq0*sin(q0)*(sin(q1+q2)*4.264E+3+sin(q1)*4.871E+3)*5.0E-5);

J_dot_dq(1,0) = dq2*(cos(q1+q2)*sin(q0)*(dq1+dq2)*2.132E-1+dq0*sin(q1+q2)*cos(q0)*2.132E-1)+dq0*(cos(q0)*(sin(q1+q2)*(dq1+dq2)*4.264E+3+dq1*sin(q1)*4.871E+3)*5.0E-5+dq0*cos(q0)*1.3105E-1+dq0*sin(q0)*(cos(q1+q2)*4.264E+3+cos(q1)*4.871E+3)*5.0E-5)+dq1*(sin(q0)*(cos(q1+q2)*(dq1+dq2)*4.264E+3+dq1*cos(q1)*4.871E+3)*5.0E-5+dq0*cos(q0)*(sin(q1+q2)*4.264E+3+sin(q1)*4.871E+3)*5.0E-5);

J_dot_dq(2,0) = dq1*(sin(q1+q2)*(dq1+dq2)*2.132E-1+dq1*sin(q1)*2.4355E-1)+dq2*sin(q1+q2)*(dq1+dq2)*2.132E-1;

J_dot_dq(3,0) = dq0*cos(q0)*(dq1+dq2+dq3);

J_dot_dq(4,0) = dq0*sin(q0)*(dq1+dq2+dq3);

J_dot_dq(5,0) = 0.0;

return J_dot_dq;

}
