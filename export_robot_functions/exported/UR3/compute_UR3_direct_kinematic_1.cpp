#include <Eigen/Dense>

Eigen::Matrix<double, 4, 4> compute_UR3_direct_kinematic_1(Eigen::Matrix<double, 6, 1> q){

Eigen::Matrix<double, 4, 4> T;

double q0 = q(0,0);
double q1 = q(1,0);
double q2 = q(2,0);
double q3 = q(3,0);
double q4 = q(4,0);
double q5 = q(5,0);

T(0,0) = cos(q0)*cos(q1);

T(0,1) = cos(q0)*sin(q1)*-1.0;

T(0,2) = sin(q0);

T(0,3) = cos(q0)*cos(q1)*-2.4365E-1;

T(1,0) = cos(q1)*sin(q0);

T(1,1) = sin(q0)*sin(q1)*-1.0;

T(1,2) = cos(q0)*-1.0;

T(1,3) = cos(q1)*sin(q0)*-2.4365E-1;

T(2,0) = sin(q1)*1.0;

T(2,1) = cos(q1)*1.0;

T(2,2) = 0.0;

T(2,3) = sin(q1)*-2.4365E-1+1.519E-1;

T(3,0) = 0.0;

T(3,1) = 0.0;

T(3,2) = 0.0;

T(3,3) = 1.0;

return T;

}
