#include <Eigen/Dense>

// Eigen::Matrix<double, 6, 6> compute_UR10_jacobian_dot_0(Eigen::Matrix<double, 6, 1> q, Eigen::Matrix<double, 6, 1> dq){
extern "C" void compute_UR10_jacobian_dot_0(double* result, double *q, double *dq) {

Eigen::Matrix<double, 6, 6> J_dot;

J_dot.setZero();

double q0 = q[0];
double q1 = q[1];
double q2 = q[2];
double q3 = q[3];
double q4 = q[4];
double q5 = q[5];

double dq0 = dq[0];
double dq1 = dq[1];
double dq2 = dq[2];
double dq3 = dq[3];
double dq4 = dq[4];
double dq5 = dq[5];

J_dot(0,0) = 0.0;

J_dot(1,0) = 0.0;

J_dot(2,0) = 0.0;

J_dot(3,0) = 0.0;

J_dot(4,0) = 0.0;

J_dot(5,0) = 0.0;

// return J_dot;

int index = 0;
for (int row = 0; row < J_dot.rows(); ++row) {
	for (int col = 0; col < J_dot.cols(); ++col) {
		result[index++] = J_dot(row, col);
	}
}

}
