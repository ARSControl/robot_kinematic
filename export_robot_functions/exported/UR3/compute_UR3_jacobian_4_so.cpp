#include <Eigen/Dense>

// Eigen::Matrix<double, 6, 6> compute_UR3_jacobian_4(Eigen::Matrix<double, 6, 1> q){
extern "C" void compute_UR3_jacobian_4(double* result, double *q) {

Eigen::Matrix<double, 6, 6> J;

J.setZero();

double q0 = q[0];
double q1 = q[1];
double q2 = q[2];
double q3 = q[3];
double q4 = q[4];
double q5 = q[5];

J(0,0) = cos(q0)*1.1235E-1-cos(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*8.535E-2+cos(q1)*sin(q0)*2.4365E-1+sin(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0))*8.535E-2-sin(q0)*sin(q1)*sin(q2)*2.1325E-1+cos(q1)*cos(q2)*sin(q0)*2.1325E-1;

J(0,1) = cos(q0)*sin(q1)*2.4365E-1-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1))*8.535E-2+cos(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*8.535E-2+cos(q0)*cos(q1)*sin(q2)*2.1325E-1+cos(q0)*cos(q2)*sin(q1)*2.1325E-1;

J(0,2) = sin(q3)*(cos(q0)*cos(q1)*sin(q2)+cos(q0)*cos(q2)*sin(q1)*1.0)*-8.535E-2+cos(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*8.535E-2+cos(q0)*cos(q1)*sin(q2)*2.1325E-1+cos(q0)*cos(q2)*sin(q1)*2.1325E-1;

J(0,3) = cos(q3)*(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)*8.535E-2-sin(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*8.535E-2;

J(0,4) = 0.0;

J(1,0) = sin(q0)*1.1235E-1-cos(q0)*cos(q1)*2.4365E-1+cos(q3)*(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*8.535E-2+sin(q3)*(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*8.535E-2-cos(q0)*cos(q1)*cos(q2)*2.1325E-1+cos(q0)*sin(q1)*sin(q2)*2.1325E-1;

J(1,1) = cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*-8.535E-2-sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*8.535E-2+sin(q0)*sin(q1)*2.4365E-1+cos(q1)*sin(q0)*sin(q2)*2.1325E-1+cos(q2)*sin(q0)*sin(q1)*2.1325E-1;

J(1,2) = cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*-8.535E-2-sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*8.535E-2+cos(q1)*sin(q0)*sin(q2)*2.1325E-1+cos(q2)*sin(q0)*sin(q1)*2.1325E-1;

J(1,3) = cos(q3)*(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*-8.535E-2-sin(q3)*(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*8.535E-2;

J(1,4) = 0.0;

J(2,0) = 0.0;

J(2,1) = cos(q1)*-2.4365E-1-cos(q1)*cos(q2)*2.1325E-1+sin(q1)*sin(q2)*2.1325E-1+cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*8.535E-2+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*8.535E-2;

J(2,2) = cos(q1)*cos(q2)*-2.1325E-1+sin(q1)*sin(q2)*2.1325E-1+cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*8.535E-2+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*8.535E-2;

J(2,3) = cos(q3)*(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*8.535E-2+sin(q3)*(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*8.535E-2;

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

// return J;

int index = 0;
for (int row = 0; row < J.rows(); ++row) {
	for (int col = 0; col < J.cols(); ++col) {
		result[index++] = J(row, col);
	}
}

}
