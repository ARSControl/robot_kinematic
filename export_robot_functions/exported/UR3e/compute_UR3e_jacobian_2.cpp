#include <Eigen/Dense>

Eigen::Matrix<double, 6, 6> compute_UR3e_jacobian_2(Eigen::Matrix<double, 6, 1> q){

Eigen::Matrix<double, 6, 6> J;

J.setZero();

double q0 = q(0,0);
double q1 = q(1,0);
double q2 = q(2,0);
double q3 = q(3,0);
double q4 = q(4,0);
double q5 = q(5,0);

J(0,0) = cos(q1)*sin(q0)*2.4355E-1-sin(q0)*sin(q1)*sin(q2)*2.132E-1+cos(q1)*cos(q2)*sin(q0)*2.132E-1;

J(0,1) = cos(q0)*sin(q1)*2.4355E-1+cos(q0)*cos(q1)*sin(q2)*2.132E-1+cos(q0)*cos(q2)*sin(q1)*2.132E-1;

J(0,2) = cos(q0)*cos(q1)*sin(q2)*2.132E-1+cos(q0)*cos(q2)*sin(q1)*2.132E-1;

J(1,0) = cos(q0)*cos(q1)*-2.4355E-1-cos(q0)*cos(q1)*cos(q2)*2.132E-1+cos(q0)*sin(q1)*sin(q2)*2.132E-1;

J(1,1) = sin(q0)*sin(q1)*2.4355E-1+cos(q1)*sin(q0)*sin(q2)*2.132E-1+cos(q2)*sin(q0)*sin(q1)*2.132E-1;

J(1,2) = cos(q1)*sin(q0)*sin(q2)*2.132E-1+cos(q2)*sin(q0)*sin(q1)*2.132E-1;

J(2,0) = 0.0;

J(2,1) = cos(q1)*-2.4355E-1-cos(q1)*cos(q2)*2.132E-1+sin(q1)*sin(q2)*2.132E-1;

J(2,2) = cos(q1)*cos(q2)*-2.132E-1+sin(q1)*sin(q2)*2.132E-1;

J(3,0) = 0.0;

J(3,1) = -(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0))+(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0);

J(3,2) = -(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0))+(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0);

J(4,0) = (cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0))+(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0);

J(4,1) = -(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)-(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1));

J(4,2) = -(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)-(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*(cos(q0)*cos(q1)*sin(q2)+cos(q0)*cos(q2)*sin(q1)*1.0);

J(5,0) = pow(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0,2.0)+pow(sin(q0),2.0)*1.0+pow(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0,2.0);

J(5,1) = -(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1))-(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0);

J(5,2) = -(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)*(cos(q1)*sin(q0)*sin(q2)+cos(q2)*sin(q0)*sin(q1)*1.0)-(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0);

return J;

}
