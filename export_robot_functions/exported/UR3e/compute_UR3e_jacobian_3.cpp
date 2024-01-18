#include <Eigen/Dense>

Eigen::Matrix<double, 6, 6> compute_UR3e_jacobian_3(Eigen::Matrix<double, 6, 1> q){

Eigen::Matrix<double, 6, 6> J;

J.setZero();

double q0 = q(0,0);
double q1 = q(1,0);
double q2 = q(2,0);
double q3 = q(3,0);
double q4 = q(4,0);
double q5 = q(5,0);

J(0,0) = cos(q0)*1.3105E-1+sin(q0)*(cos(q1+q2)*4.264E+3+cos(q1)*4.871E+3)*5.0E-5;

J(0,1) = cos(q0)*(sin(q1+q2)*4.264E+3+sin(q1)*4.871E+3)*5.0E-5;

J(0,2) = sin(q1+q2)*cos(q0)*2.132E-1;

J(0,3) = 0.0;

J(1,0) = sin(q0)*1.3105E-1-cos(q0)*(cos(q1+q2)*4.264E+3+cos(q1)*4.871E+3)*5.0E-5;

J(1,1) = sin(q0)*(sin(q1+q2)*4.264E+3+sin(q1)*4.871E+3)*5.0E-5;

J(1,2) = sin(q1+q2)*sin(q0)*2.132E-1;

J(1,3) = 0.0;

J(2,0) = 0.0;

J(2,1) = cos(q1+q2)*-2.132E-1-cos(q1)*2.4355E-1;

J(2,2) = cos(q1+q2)*-2.132E-1;

J(2,3) = 0.0;

J(3,0) = 0.0;

J(3,1) = sin(q0);

J(3,2) = sin(q0);

J(3,3) = sin(q0);

J(4,0) = 0.0;

J(4,1) = cos(q0)*-1.0;

J(4,2) = cos(q0)*-1.0;

J(4,3) = cos(q0)*-1.0;

J(5,0) = 1.0;

J(5,1) = 0.0;

J(5,2) = 0.0;

J(5,3) = 0.0;

return J;

}
