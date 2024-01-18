#include <Eigen/Dense>

// Eigen::Matrix<double, 6, 6> compute_UR3e_jacobian_0(Eigen::Matrix<double, 6, 1> q){
extern "C" void compute_UR3e_jacobian_0(double* result, double *q) {

Eigen::Matrix<double, 6, 6> J;

J.setZero();

double q0 = q[0];
double q1 = q[1];
double q2 = q[2];
double q3 = q[3];
double q4 = q[4];
double q5 = q[5];

J(0,0) = 0.0;

J(1,0) = 0.0;

J(2,0) = 0.0;

J(3,0) = 0.0;

J(4,0) = 0.0;

J(5,0) = pow(cos(q0),2.0)+pow(sin(q0),2.0)*1.0;

// return J;

int index = 0;
for (int row = 0; row < J.rows(); ++row) {
	for (int col = 0; col < J.cols(); ++col) {
		result[index++] = J(row, col);
	}
}

}
