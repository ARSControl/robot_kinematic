#include <Eigen/Dense>

// Eigen::Matrix<double, 6, 1> compute_UR3_jacobian_dot_dq_4(Eigen::Matrix<double, 6, 1> q, Eigen::Matrix<double, 6, 1> dq){
extern "C" void compute_UR3_jacobian_dot_dq_4(double* result, double *q, double *dq) {

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

J_dot_dq(0,0) = -dq1*(cos(q0)*(cos(q1+q2)*(dq1+dq2)*4.265E+3+dq1*cos(q1)*4.873E+3)*-5.0E-5+dq0*cos(q1+q2+q3)*sin(q0)*8.535E-2+sin(q1+q2+q3)*cos(q0)*(dq1+dq2+dq3)*8.535E-2+dq0*sin(q0)*(sin(q1+q2)*4.265E+3+sin(q1)*4.873E+3)*5.0E-5)-dq0*(sin(q0)*(sin(q1+q2)*(dq1+dq2)*4.265E+3+dq1*sin(q1)*4.873E+3)*5.0E-5+dq0*sin(q0)*1.1235E-1+dq0*sin(q1+q2+q3)*cos(q0)*8.535E-2-dq0*cos(q0)*(cos(q1+q2)*4.265E+3+cos(q1)*4.873E+3)*5.0E-5+cos(q1+q2+q3)*sin(q0)*(dq1+dq2+dq3)*8.535E-2)-dq3*(dq0*cos(q1+q2+q3)*sin(q0)*8.535E-2+sin(q1+q2+q3)*cos(q0)*(dq1+dq2+dq3)*8.535E-2)-dq2*((cos(q0)*(sin(q1+q2+q3)*(dq1+dq2+dq3)*1.707E+3-cos(q1+q2)*(dq1+dq2)*4.265E+3))/2.0E+4+(dq0*sin(q0)*(cos(q1+q2+q3)*1.707E+3+sin(q1+q2)*4.265E+3))/2.0E+4);

J_dot_dq(1,0) = dq1*(sin(q0)*(cos(q1+q2)*(dq1+dq2)*4.265E+3+dq1*cos(q1)*4.873E+3)*5.0E-5+dq0*cos(q1+q2+q3)*cos(q0)*8.535E-2+dq0*cos(q0)*(sin(q1+q2)*4.265E+3+sin(q1)*4.873E+3)*5.0E-5-sin(q1+q2+q3)*sin(q0)*(dq1+dq2+dq3)*8.535E-2)+dq0*(cos(q0)*(sin(q1+q2)*(dq1+dq2)*4.265E+3+dq1*sin(q1)*4.873E+3)*5.0E-5+dq0*cos(q0)*1.1235E-1-dq0*sin(q1+q2+q3)*sin(q0)*8.535E-2+dq0*sin(q0)*(cos(q1+q2)*4.265E+3+cos(q1)*4.873E+3)*5.0E-5+cos(q1+q2+q3)*cos(q0)*(dq1+dq2+dq3)*8.535E-2)+dq3*(dq0*cos(q1+q2+q3)*cos(q0)*8.535E-2-sin(q1+q2+q3)*sin(q0)*(dq1+dq2+dq3)*8.535E-2)-dq2*((sin(q0)*(sin(q1+q2+q3)*(dq1+dq2+dq3)*1.707E+3-cos(q1+q2)*(dq1+dq2)*4.265E+3))/2.0E+4-(dq0*cos(q0)*(cos(q1+q2+q3)*1.707E+3+sin(q1+q2)*4.265E+3))/2.0E+4);

J_dot_dq(2,0) = dq2*(cos(q1+q2+q3)*(dq1+dq2+dq3)*8.535E-2+sin(q1+q2)*(dq1+dq2)*2.1325E-1)+dq1*(cos(q1+q2+q3)*(dq1+dq2+dq3)*8.535E-2+sin(q1+q2)*(dq1+dq2)*2.1325E-1+dq1*sin(q1)*2.4365E-1)+dq3*cos(q1+q2+q3)*(dq1+dq2+dq3)*8.535E-2;

J_dot_dq(3,0) = -dq4*(dq0*sin(q1+q2+q3)*sin(q0)-cos(q1+q2+q3)*cos(q0)*(dq1+dq2+dq3))+dq0*dq1*cos(q0)+dq0*dq2*cos(q0)+dq0*dq3*cos(q0);

J_dot_dq(4,0) = dq4*(dq0*sin(q1+q2+q3)*cos(q0)+cos(q1+q2+q3)*sin(q0)*(dq1+dq2+dq3))+dq0*dq1*sin(q0)+dq0*dq2*sin(q0)+dq0*dq3*sin(q0);

J_dot_dq(5,0) = dq4*sin(q1+q2+q3)*(dq1+dq2+dq3);

// return J_dot_dq;

int index = 0;
for (int row = 0; row < J_dot_dq.rows(); ++row) {
	for (int col = 0; col < J_dot_dq.cols(); ++col) {
		result[index++] = J_dot_dq(row, col);
	}
}

}
