#include <Eigen/Dense>

Eigen::Matrix<double, 6, 6> compute_UR10_jacobian(Eigen::Matrix<double, 6, 1> q){

Eigen::Matrix<double, 6, 6> J;

J.setZero();

double q0 = q(0,0);
double q1 = q(1,0);
double q2 = q(2,0);
double q3 = q(3,0);
double q4 = q(4,0);
double q5 = q(5,0);

J(0,0) = cos(q0)*1.63941E-1+cos(q0)*cos(q4)*9.22E-2-sin(q1+q2+q3)*sin(q0)*1.157E-1+sin(q0)*(cos(q1+q2)*5.723E+3+cos(q1)*6.12E+3)*1.0E-4+cos(q1+q2+q3)*sin(q0)*sin(q4)*9.22E-2;

J(0,1) = (cos(q0)*(cos(q1+q2+q3)*1.157E+3+sin(q1+q2)*5.723E+3+sin(q1)*6.12E+3+sin(q1+q2+q3)*sin(q4)*9.22E+2))/1.0E+4;

J(0,2) = (cos(q0)*(cos(q1+q2+q3)*1.157E+3+sin(q1+q2)*5.723E+3+sin(q1+q2+q3)*sin(q4)*9.22E+2))/1.0E+4;

J(0,3) = (cos(q0)*(cos(q1+q2+q3)*1.157E+3+sin(q1+q2+q3)*sin(q4)*9.22E+2))/1.0E+4;

J(0,4) = sin(q0)*sin(q4)*-9.22E-2-cos(q1+q2+q3)*cos(q0)*cos(q4)*9.22E-2;

J(0,5) = 0.0;

J(1,0) = sin(q0)*1.63941E-1+cos(q4)*sin(q0)*9.22E-2+sin(q1+q2+q3)*cos(q0)*1.157E-1-cos(q0)*(cos(q1+q2)*5.723E+3+cos(q1)*6.12E+3)*1.0E-4-cos(q1+q2+q3)*cos(q0)*sin(q4)*9.22E-2;

J(1,1) = (sin(q0)*(cos(q1+q2+q3)*1.157E+3+sin(q1+q2)*5.723E+3+sin(q1)*6.12E+3+sin(q1+q2+q3)*sin(q4)*9.22E+2))/1.0E+4;

J(1,2) = (sin(q0)*(cos(q1+q2+q3)*1.157E+3+sin(q1+q2)*5.723E+3+sin(q1+q2+q3)*sin(q4)*9.22E+2))/1.0E+4;

J(1,3) = (sin(q0)*(cos(q1+q2+q3)*1.157E+3+sin(q1+q2+q3)*sin(q4)*9.22E+2))/1.0E+4;

J(1,4) = cos(q0)*sin(q4)*9.22E-2-cos(q1+q2+q3)*cos(q4)*sin(q0)*9.22E-2;

J(1,5) = 0.0;

J(2,0) = 0.0;

J(2,1) = sin(q1+q2+q3)*1.157E-1-cos(q1+q2)*5.723E-1-cos(q1)*6.12E-1-cos(q1+q2+q3)*sin(q4)*9.22E-2;

J(2,2) = sin(q1+q2+q3)*1.157E-1-cos(q1+q2)*5.723E-1-cos(q1+q2+q3)*sin(q4)*9.22E-2;

J(2,3) = sin(q1+q2+q3)*1.157E-1-cos(q1+q2+q3)*sin(q4)*9.22E-2;

J(2,4) = sin(q1+q2+q3)*cos(q4)*-9.22E-2;

J(2,5) = 0.0;

J(3,0) = 0.0;

J(3,1) = sin(q0);

J(3,2) = sin(q0);

J(3,3) = sin(q0);

J(3,4) = sin(q1+q2+q3)*cos(q0);

J(3,5) = cos(q4)*sin(q0)-cos(q1+q2+q3)*cos(q0)*sin(q4);

J(4,0) = 0.0;

J(4,1) = cos(q0)*-1.0;

J(4,2) = cos(q0)*-1.0;

J(4,3) = cos(q0)*-1.0;

J(4,4) = sin(q1+q2+q3)*sin(q0);

J(4,5) = -cos(q0)*cos(q4)-cos(q1+q2+q3)*sin(q0)*sin(q4);

J(5,0) = pow(cos(q4)*sin(q0)-cos(q1+q2+q3)*cos(q0)*sin(q4),2.0)+pow(sin(q1+q2+q3)*cos(q0)*sin(q5)*-1.0+cos(q5)*sin(q0)*sin(q4)+cos(q1+q2+q3)*cos(q0)*cos(q4)*cos(q5),2.0)+pow(sin(q0)*sin(q4)*sin(q5)+sin(q1+q2+q3)*cos(q0)*cos(q5)+cos(q1+q2+q3)*cos(q0)*cos(q4)*sin(q5),2.0);

J(5,1) = 0.0;

J(5,2) = 0.0;

J(5,3) = 0.0;

J(5,4) = (cos(q0)*sin(q4)-cos(q1+q2+q3)*cos(q4)*sin(q0))*(cos(q4)*sin(q0)-cos(q1+q2+q3)*cos(q0)*sin(q4))-cos(q5)*(cos(q0)*cos(q4)*1.0+cos(q1+q2+q3)*sin(q0)*sin(q4)*1.0)*(cos(q5)*(sin(q0)*sin(q4)+cos(q1+q2+q3)*cos(q0)*cos(q4))-sin(q1+q2+q3)*cos(q0)*sin(q5)*1.0)*1.0-sin(q5)*(cos(q0)*cos(q4)*1.0+cos(q1+q2+q3)*sin(q0)*sin(q4)*1.0)*(sin(q5)*(sin(q0)*sin(q4)+cos(q1+q2+q3)*cos(q0)*cos(q4))*1.0+sin(q1+q2+q3)*cos(q0)*cos(q5)*1.0);

J(5,5) = -sin(q1+q2+q3)*sin(q4);

return J;

}
