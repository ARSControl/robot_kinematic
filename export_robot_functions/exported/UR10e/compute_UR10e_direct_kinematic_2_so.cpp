#include <Eigen/Dense>

// Eigen::Matrix<double, 4, 4> compute_UR10e_direct_kinematic_2(Eigen::Matrix<double, 6, 1> q){
extern "C" void compute_UR10e_direct_kinematic_2(double* result, double *q) {

Eigen::Matrix<double, 4, 4> T;

double q0 = q[0];
double q1 = q[1];
double q2 = q[2];
double q3 = q[3];
double q4 = q[4];
double q5 = q[5];

T(0,0) = cos(q1+q2)*cos(q0);

T(0,1) = -sin(q1+q2)*cos(q0);

T(0,2) = sin(q0);

T(0,3) = cos(q0)*(cos(q1+q2)*1.1431E+4+cos(q1)*1.2254E+4)*(-5.0E-5);

T(1,0) = cos(q1+q2)*sin(q0);

T(1,1) = -sin(q1+q2)*sin(q0);

T(1,2) = cos(q0)*-1.0;

T(1,3) = sin(q0)*(cos(q1+q2)*1.1431E+4+cos(q1)*1.2254E+4)*(-5.0E-5);

T(2,0) = sin(q1+q2);

T(2,1) = cos(q1+q2);

T(2,2) = 0.0;

T(2,3) = sin(q1+q2)*-5.7155E-1-sin(q1)*6.127E-1+1.807E-1;

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
