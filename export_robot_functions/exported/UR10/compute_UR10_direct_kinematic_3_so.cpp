#include <Eigen/Dense>

// Eigen::Matrix<double, 4, 4> compute_UR10_direct_kinematic_3(Eigen::Matrix<double, 6, 1> q){
extern "C" void compute_UR10_direct_kinematic_3(double* result, double *q) {

Eigen::Matrix<double, 4, 4> T;

double q0 = q[0];
double q1 = q[1];
double q2 = q[2];
double q3 = q[3];
double q4 = q[4];
double q5 = q[5];

T(0,0) = cos(q1+q2+q3)*cos(q0);

T(0,1) = sin(q0);

T(0,2) = sin(q1+q2+q3)*cos(q0);

T(0,3) = sin(q0)*1.63941E-1-cos(q0)*(cos(q1+q2)*5.723E+3+cos(q1)*6.12E+3)*1.0E-4;

T(1,0) = cos(q1+q2+q3)*sin(q0);

T(1,1) = cos(q0)*-1.0;

T(1,2) = sin(q1+q2+q3)*sin(q0);

T(1,3) = cos(q0)*-1.63941E-1-sin(q0)*(cos(q1+q2)*5.723E+3+cos(q1)*6.12E+3)*1.0E-4;

T(2,0) = sin(q1+q2+q3);

T(2,1) = 0.0;

T(2,2) = cos(q1+q2+q3)*-1.0;

T(2,3) = sin(q1+q2)*-5.723E-1-sin(q1)*6.12E-1+1.273E-1;

T(3,0) = 0.0;

T(3,1) = 0.0;

T(3,2) = 0.0;

T(3,3) = 1.0;

// return T;

int index = 0;
for (int row = 0; row < T.rows(); ++row) {
	for (int col = 0; col < T.cols(); ++col) {
		result[index++] = T(row, col);
	}
}

}
