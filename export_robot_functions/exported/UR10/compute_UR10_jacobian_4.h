#include <Eigen/Dense>

Eigen::Matrix<double, 6, 6> compute_UR10_jacobian_4(Eigen::Matrix<double, 6, 1> q){

Eigen::Matrix<double, 6, 6> J;

J.setZero();

double q0 = q(0,0);
double q1 = q(1,0);
double q2 = q(2,0);
double q3 = q(3,0);
double q4 = q(4,0);
double q5 = q(5,0);

J(0,0) = cos(q0)*1.63941E-1-cos(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.157E-1+cos(q1)*sin(q0)*6.12E-1+sin(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0))*1.157E-1-sin(q0)*sin(q1)*sin(q2)*5.723E-1+cos(q1)*cos(q2)*sin(q0)*5.723E-1;

J(0,1) = cos(q0)*sin(q1)*6.12E-1-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1))*1.157E-1+cos(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*1.157E-1+cos(q0)*cos(q1)*sin(q2)*5.723E-1+cos(q0)*cos(q2)*sin(q1)*5.723E-1;

J(0,2) = sin(q3)*(cos(q0)*cos(q1)*sin(q2)+cos(q0)*cos(q2)*sin(q1)*1.0)*-1.157E-1+cos(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*1.157E-1+cos(q0)*cos(q1)*sin(q2)*5.723E-1+cos(q0)*cos(q2)*sin(q1)*5.723E-1;

J(0,3) = cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)*1.157E-1-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.157E-1;

J(0,4) = 0.0;

J(1,0) = sin(q0)*1.63941E-1-cos(q0)*cos(q1)*6.12E-1+cos(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.157E-1+sin(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*1.157E-1-cos(q0)*cos(q1)*cos(q2)*5.723E-1+cos(q0)*sin(q1)*sin(q2)*5.723E-1;

J(1,1) = cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*-1.157E-1-sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.157E-1+sin(q0)*sin(q1)*6.12E-1+cos(q1)*sin(q0)*sin(q2)*5.723E-1+cos(q2)*sin(q0)*sin(q1)*5.723E-1;

J(1,2) = cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*-1.157E-1-sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.157E-1+cos(q1)*sin(q0)*sin(q2)*5.723E-1+cos(q2)*sin(q0)*sin(q1)*5.723E-1;

J(1,3) = cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*-1.157E-1-sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.157E-1;

J(1,4) = 0.0;

J(2,0) = 0.0;

J(2,1) = cos(q1)*-6.12E-1-cos(q1)*cos(q2)*5.723E-1+sin(q1)*sin(q2)*5.723E-1+cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*1.157E-1+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*1.157E-1;

J(2,2) = cos(q1)*cos(q2)*-5.723E-1+sin(q1)*sin(q2)*5.723E-1+cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*1.157E-1+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*1.157E-1;

J(2,3) = cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*1.157E-1+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*1.157E-1;

J(2,4) = 0.0;

J(3,0) = 0.0;

J(3,1) = (cos(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0-sin(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0)*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*1.0+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*1.0)+sin(q4)*(cos(q0)*cos(q4)*1.0-sin(q4)*(cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0+sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0))*(cos(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0))*1.0-cos(q4)*(cos(q0)*sin(q4)*1.0+cos(q4)*(cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0+sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0)*1.0)*(cos(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0));

J(3,2) = (cos(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0-sin(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0)*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*1.0+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*1.0)+sin(q4)*(cos(q0)*cos(q4)*1.0-sin(q4)*(cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0+sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0))*(cos(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0))*1.0-cos(q4)*(cos(q0)*sin(q4)*1.0+cos(q4)*(cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0+sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0)*1.0)*(cos(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0));

J(3,3) = (cos(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0-sin(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0)*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*1.0+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*1.0)+sin(q4)*(cos(q0)*cos(q4)*1.0-sin(q4)*(cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0+sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0))*(cos(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0))*1.0-cos(q4)*(cos(q0)*sin(q4)*1.0+cos(q4)*(cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0+sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0)*1.0)*(cos(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0));

J(3,4) = cos(q4)*(cos(q0)*cos(q4)*1.0-sin(q4)*(cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0+sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0))*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0))*1.0+sin(q4)*(cos(q0)*sin(q4)*1.0+cos(q4)*(cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0+sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0)*1.0)*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0));

J(4,0) = (cos(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*1.0-sin(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*1.0)*(cos(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0-sin(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0))*1.0)+cos(q4)*(cos(q0)*sin(q4)+cos(q4)*(sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0+cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0))))*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0))-sin(q4)*(cos(q0)*cos(q4)-sin(q4)*(sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0+cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)))*1.0)*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0))*1.0;

J(4,1) = (cos(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*1.0-sin(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*1.0)*(sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1))*1.0-cos(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0)-pow(cos(q4),2.0)*(cos(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1))+sin(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0)*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0))-pow(sin(q4),2.0)*(cos(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1))+sin(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0)*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0))*1.0;

J(4,2) = (cos(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*1.0-sin(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*1.0)*(sin(q3)*(cos(q0)*cos(q1)*sin(q2)+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0-cos(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0)-pow(cos(q4),2.0)*(cos(q3)*(cos(q0)*cos(q1)*sin(q2)+cos(q0)*cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0)*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0))-pow(sin(q4),2.0)*(cos(q3)*(cos(q0)*cos(q1)*sin(q2)+cos(q0)*cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0)*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0))*1.0;

J(4,3) = -(cos(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*1.0-sin(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*1.0)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)-pow(cos(q4),2.0)*(sin(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)+cos(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0))-pow(sin(q4),2.0)*(sin(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)+cos(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0))*1.0;

J(4,4) = cos(q4)*(cos(q4)*sin(q0)-sin(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0))*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0))+sin(q4)*(sin(q0)*sin(q4)+cos(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)*1.0)*(cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0))*1.0;

J(5,0) = (sin(q0)*sin(q4)+cos(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0))*(sin(q0)*sin(q4)*1.0+cos(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)*1.0)-(cos(q4)*sin(q0)-sin(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)*1.0)*(sin(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)-cos(q4)*sin(q0)*1.0)+(sin(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0+cos(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)*(cos(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0+sin(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0);

J(5,1) = -(cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0+sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0)*(sin(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0+cos(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)-cos(q4)*(sin(q0)*sin(q4)+cos(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0))*(cos(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0-sin(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0)*1.0+sin(q4)*(cos(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0-sin(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0)*(cos(q4)*sin(q0)-sin(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)*1.0);

J(5,2) = -(cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0+sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0)*(sin(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0+cos(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)-cos(q4)*(sin(q0)*sin(q4)+cos(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0))*(cos(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0-sin(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0)*1.0+sin(q4)*(cos(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0-sin(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0)*(cos(q4)*sin(q0)-sin(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)*1.0);

J(5,3) = -(cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0+sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0)*(sin(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)*1.0+cos(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)-cos(q4)*(sin(q0)*sin(q4)+cos(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0))*(cos(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0-sin(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0)*1.0+sin(q4)*(cos(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0-sin(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0)*(cos(q4)*sin(q0)-sin(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)*1.0);

J(5,4) = -(sin(q0)*sin(q4)+cos(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0))*(cos(q0)*cos(q4)*1.0-sin(q4)*(cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0+sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0)*1.0)+(cos(q4)*sin(q0)-sin(q4)*(cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*1.0)*1.0)*(cos(q0)*sin(q4)*1.0+cos(q4)*(cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*1.0+sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*1.0));

return J;

}
