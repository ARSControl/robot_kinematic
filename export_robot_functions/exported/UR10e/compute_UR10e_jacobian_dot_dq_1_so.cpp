#include <Eigen/Dense>

// Eigen::Matrix<double, 6, 1> compute_UR10e_jacobian_dot_dq_1(Eigen::Matrix<double, 6, 1> q, Eigen::Matrix<double, 6, 1> dq){
extern "C" void compute_UR10e_jacobian_dot_dq_1(double* result, double *q, double *dq) {

Eigen::Matrix<double, 6, 1> J_dot_dq;

J_dot_dq.setZero();

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

J_dot_dq(0,0) = (dq0*dq0)*cos(q0)*cos(q1)*6.127E-1+(dq1*dq1)*cos(q0)*cos(q1)*6.127E-1-dq0*dq1*sin(q0)*sin(q1)*1.2254;

J_dot_dq(1,0) = (dq0*dq0)*cos(q1)*sin(q0)*6.127E-1+(dq1*dq1)*cos(q1)*sin(q0)*6.127E-1+dq0*dq1*cos(q0)*sin(q1)*1.2254;

J_dot_dq(2,0) = (dq1*dq1)*sin(q1)*6.127E-1;

J_dot_dq(3,0) = dq0*dq1*cos(q0);

J_dot_dq(4,0) = dq0*dq1*sin(q0);

J_dot_dq(5,0) = 0.0;

// return J_dot_dq;

int index = 0;
for (int row = 0; row < J_dot_dq.rows(); ++row) {
	for (int col = 0; col < J_dot_dq.cols(); ++col) {
		result[index++] = J_dot_dq(row, col);
	}
}

}
