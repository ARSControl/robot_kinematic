#include <Eigen/Dense>

Eigen::Matrix<double, 6, 6> compute_UR5_jacobian_2(Eigen::Matrix<double, 6, 1> q){

Eigen::Matrix<double, 6, 6> J;

J.setZero();

double q0 = q(0,0);
double q1 = q(1,0);
double q2 = q(2,0);
double q3 = q(3,0);
double q4 = q(4,0);
double q5 = q(5,0);

J(0,0) = (sin(q0)*(cos(q1+q2)*1.569E+3+cos(q1)*1.7E+3))/4.0E+3;

J(0,1) = (cos(q0)*(sin(q1+q2)*1.569E+3+sin(q1)*1.7E+3))/4.0E+3;

J(0,2) = sin(q1+q2)*cos(q0)*3.9225E-1;

J(1,0) = cos(q0)*(cos(q1+q2)*1.569E+3+cos(q1)*1.7E+3)*(-2.5E-4);

J(1,1) = (sin(q0)*(sin(q1+q2)*1.569E+3+sin(q1)*1.7E+3))/4.0E+3;

J(1,2) = sin(q1+q2)*sin(q0)*3.9225E-1;

J(2,0) = 0.0;

J(2,1) = cos(q1+q2)*-3.9225E-1-cos(q1)*4.25E-1;

J(2,2) = cos(q1+q2)*-3.9225E-1;

J(3,0) = 0.0;

J(3,1) = sin(q0);

J(3,2) = sin(q0);

J(4,0) = 0.0;

J(4,1) = -cos(q0);

J(4,2) = -cos(q0);

J(5,0) = 1.0;

J(5,1) = 0.0;

J(5,2) = 0.0;

return J;

}
