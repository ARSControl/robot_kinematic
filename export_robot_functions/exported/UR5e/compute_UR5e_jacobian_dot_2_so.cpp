#include <Eigen/Dense>

// Eigen::Matrix<double, 6, 6> compute_UR5e_jacobian_dot_2(Eigen::Matrix<double, 6, 1> q, Eigen::Matrix<double, 6, 1> dq){
extern "C" void compute_UR5e_jacobian_dot_2(double* result, double *q, double *dq) {

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

J_dot(0,0) = dq0*cos(q0)*cos(q1)*4.25E-1-dq1*sin(q0)*sin(q1)*4.25E-1+dq0*cos(q0)*cos(q1)*cos(q2)*3.922E-1-dq0*cos(q0)*sin(q1)*sin(q2)*3.922E-1-dq1*cos(q1)*sin(q0)*sin(q2)*3.922E-1-dq1*cos(q2)*sin(q0)*sin(q1)*3.922E-1-dq2*cos(q1)*sin(q0)*sin(q2)*3.922E-1-dq2*cos(q2)*sin(q0)*sin(q1)*3.922E-1;

J_dot(0,1) = dq1*cos(q0)*cos(q1)*4.25E-1-dq0*sin(q0)*sin(q1)*4.25E-1+dq1*cos(q0)*cos(q1)*cos(q2)*3.922E-1+dq2*cos(q0)*cos(q1)*cos(q2)*3.922E-1-dq0*cos(q1)*sin(q0)*sin(q2)*3.922E-1-dq0*cos(q2)*sin(q0)*sin(q1)*3.922E-1-dq1*cos(q0)*sin(q1)*sin(q2)*3.922E-1-dq2*cos(q0)*sin(q1)*sin(q2)*3.922E-1;

J_dot(0,2) = dq1*cos(q0)*cos(q1)*cos(q2)*3.922E-1+dq2*cos(q0)*cos(q1)*cos(q2)*3.922E-1-dq0*cos(q1)*sin(q0)*sin(q2)*3.922E-1-dq0*cos(q2)*sin(q0)*sin(q1)*3.922E-1-dq1*cos(q0)*sin(q1)*sin(q2)*3.922E-1-dq2*cos(q0)*sin(q1)*sin(q2)*3.922E-1;

J_dot(1,0) = dq0*cos(q1)*sin(q0)*4.25E-1+dq1*cos(q0)*sin(q1)*4.25E-1+dq0*cos(q1)*cos(q2)*sin(q0)*3.922E-1+dq1*cos(q0)*cos(q1)*sin(q2)*3.922E-1+dq1*cos(q0)*cos(q2)*sin(q1)*3.922E-1+dq2*cos(q0)*cos(q1)*sin(q2)*3.922E-1+dq2*cos(q0)*cos(q2)*sin(q1)*3.922E-1-dq0*sin(q0)*sin(q1)*sin(q2)*3.922E-1;

J_dot(1,1) = dq0*cos(q0)*sin(q1)*4.25E-1+dq1*cos(q1)*sin(q0)*4.25E-1+dq0*cos(q0)*cos(q1)*sin(q2)*3.922E-1+dq0*cos(q0)*cos(q2)*sin(q1)*3.922E-1+dq1*cos(q1)*cos(q2)*sin(q0)*3.922E-1+dq2*cos(q1)*cos(q2)*sin(q0)*3.922E-1-dq1*sin(q0)*sin(q1)*sin(q2)*3.922E-1-dq2*sin(q0)*sin(q1)*sin(q2)*3.922E-1;

J_dot(1,2) = dq0*cos(q0)*cos(q1)*sin(q2)*3.922E-1+dq0*cos(q0)*cos(q2)*sin(q1)*3.922E-1+dq1*cos(q1)*cos(q2)*sin(q0)*3.922E-1+dq2*cos(q1)*cos(q2)*sin(q0)*3.922E-1-dq1*sin(q0)*sin(q1)*sin(q2)*3.922E-1-dq2*sin(q0)*sin(q1)*sin(q2)*3.922E-1;

J_dot(2,0) = 0.0;

J_dot(2,1) = dq1*sin(q1)*4.25E-1+dq1*cos(q1)*sin(q2)*3.922E-1+dq1*cos(q2)*sin(q1)*3.922E-1+dq2*cos(q1)*sin(q2)*3.922E-1+dq2*cos(q2)*sin(q1)*3.922E-1;

J_dot(2,2) = dq1*cos(q1)*sin(q2)*3.922E-1+dq1*cos(q2)*sin(q1)*3.922E-1+dq2*cos(q1)*sin(q2)*3.922E-1+dq2*cos(q2)*sin(q1)*3.922E-1;

J_dot(3,0) = 0.0;

J_dot(3,1) = (sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0))*(dq1*cos(q1)*sin(q2)*1.0+dq1*cos(q2)*sin(q1)*1.0+dq2*cos(q1)*sin(q2)*1.0+dq2*cos(q2)*sin(q1)*1.0)+(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*(dq0*cos(q0)*cos(q1)*sin(q2)*1.0+dq0*cos(q0)*cos(q2)*sin(q1)*1.0+dq1*cos(q1)*cos(q2)*sin(q0)*1.0+dq2*cos(q1)*cos(q2)*sin(q0)*1.0-dq1*sin(q0)*sin(q1)*sin(q2)*1.0-dq2*sin(q0)*sin(q1)*sin(q2)*1.0)+(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*(dq1*cos(q1)*cos(q2)*1.0+dq2*cos(q1)*cos(q2)*1.0-dq1*sin(q1)*sin(q2)*1.0-dq2*sin(q1)*sin(q2)*1.0)-(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*(-dq0*cos(q0)*cos(q1)*cos(q2)+dq0*cos(q0)*sin(q1)*sin(q2)*1.0+dq1*cos(q1)*sin(q0)*sin(q2)*1.0+dq1*cos(q2)*sin(q0)*sin(q1)+dq2*cos(q1)*sin(q0)*sin(q2)+dq2*cos(q2)*sin(q0)*sin(q1)*1.0);

J_dot(3,2) = (sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0))*(dq1*cos(q1)*sin(q2)*1.0+dq1*cos(q2)*sin(q1)*1.0+dq2*cos(q1)*sin(q2)*1.0+dq2*cos(q2)*sin(q1)*1.0)+(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*(dq0*cos(q0)*cos(q1)*sin(q2)*1.0+dq0*cos(q0)*cos(q2)*sin(q1)*1.0+dq1*cos(q1)*cos(q2)*sin(q0)*1.0+dq2*cos(q1)*cos(q2)*sin(q0)*1.0-dq1*sin(q0)*sin(q1)*sin(q2)*1.0-dq2*sin(q0)*sin(q1)*sin(q2)*1.0)+(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*(dq1*cos(q1)*cos(q2)*1.0+dq2*cos(q1)*cos(q2)*1.0-dq1*sin(q1)*sin(q2)*1.0-dq2*sin(q1)*sin(q2)*1.0)-(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*(-dq0*cos(q0)*cos(q1)*cos(q2)+dq0*cos(q0)*sin(q1)*sin(q2)*1.0+dq1*cos(q1)*sin(q0)*sin(q2)*1.0+dq1*cos(q2)*sin(q0)*sin(q1)+dq2*cos(q1)*sin(q0)*sin(q2)+dq2*cos(q2)*sin(q0)*sin(q1)*1.0);

J_dot(4,0) = (sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0))*(dq1*cos(q1)*cos(q2)*1.0+dq2*cos(q1)*cos(q2)*1.0-dq1*sin(q1)*sin(q2)*1.0-dq2*sin(q1)*sin(q2)*1.0)+(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*(dq0*cos(q0)*cos(q1)*sin(q2)*1.0+dq0*cos(q0)*cos(q2)*sin(q1)*1.0+dq1*cos(q1)*cos(q2)*sin(q0)*1.0+dq2*cos(q1)*cos(q2)*sin(q0)*1.0-dq1*sin(q0)*sin(q1)*sin(q2)*1.0-dq2*sin(q0)*sin(q1)*sin(q2)*1.0)-(cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1)*1.0)*(dq1*cos(q1)*sin(q2)*1.0+dq1*cos(q2)*sin(q1)*1.0+dq2*cos(q1)*sin(q2)*1.0+dq2*cos(q2)*sin(q1)*1.0)+(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*(-dq0*cos(q0)*cos(q1)*cos(q2)+dq0*cos(q0)*sin(q1)*sin(q2)*1.0+dq1*cos(q1)*sin(q0)*sin(q2)*1.0+dq1*cos(q2)*sin(q0)*sin(q1)+dq2*cos(q1)*sin(q0)*sin(q2)+dq2*cos(q2)*sin(q0)*sin(q1)*1.0);

J_dot(4,1) = -(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1))*(dq1*cos(q1)*cos(q2)*1.0+dq2*cos(q1)*cos(q2)*1.0-dq1*sin(q1)*sin(q2)*1.0-dq2*sin(q1)*sin(q2)*1.0)+(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*(dq0*cos(q1)*cos(q2)*sin(q0)*1.0+dq1*cos(q0)*cos(q1)*sin(q2)*1.0+dq1*cos(q0)*cos(q2)*sin(q1)*1.0+dq2*cos(q0)*cos(q1)*sin(q2)*1.0+dq2*cos(q0)*cos(q2)*sin(q1)*1.0-dq0*sin(q0)*sin(q1)*sin(q2)*1.0)+(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*(dq1*cos(q1)*sin(q2)*1.0+dq1*cos(q2)*sin(q1)*1.0+dq2*cos(q1)*sin(q2)*1.0+dq2*cos(q2)*sin(q1)*1.0)+(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*(-dq1*cos(q0)*cos(q1)*cos(q2)-dq2*cos(q0)*cos(q1)*cos(q2)*1.0+dq0*cos(q1)*sin(q0)*sin(q2)*1.0+dq0*cos(q2)*sin(q0)*sin(q1)+dq1*cos(q0)*sin(q1)*sin(q2)*1.0+dq2*cos(q0)*sin(q1)*sin(q2));

J_dot(4,2) = -(cos(q0)*cos(q1)*sin(q2)+cos(q0)*cos(q2)*sin(q1)*1.0)*(dq1*cos(q1)*cos(q2)*1.0+dq2*cos(q1)*cos(q2)*1.0-dq1*sin(q1)*sin(q2)*1.0-dq2*sin(q1)*sin(q2)*1.0)+(cos(q1)*cos(q2)*1.0-sin(q1)*sin(q2)*1.0)*(dq0*cos(q1)*cos(q2)*sin(q0)*1.0+dq1*cos(q0)*cos(q1)*sin(q2)*1.0+dq1*cos(q0)*cos(q2)*sin(q1)*1.0+dq2*cos(q0)*cos(q1)*sin(q2)*1.0+dq2*cos(q0)*cos(q2)*sin(q1)*1.0-dq0*sin(q0)*sin(q1)*sin(q2)*1.0)+(cos(q0)*cos(q1)*cos(q2)*1.0-cos(q0)*sin(q1)*sin(q2)*1.0)*(dq1*cos(q1)*sin(q2)*1.0+dq1*cos(q2)*sin(q1)*1.0+dq2*cos(q1)*sin(q2)*1.0+dq2*cos(q2)*sin(q1)*1.0)+(cos(q1)*sin(q2)*1.0+cos(q2)*sin(q1)*1.0)*(dq1*cos(q0)*cos(q1)*cos(q2)*-1.0-dq2*cos(q0)*cos(q1)*cos(q2)+dq0*cos(q1)*sin(q0)*sin(q2)+dq0*cos(q2)*sin(q0)*sin(q1)*1.0+dq1*cos(q0)*sin(q1)*sin(q2)+dq2*cos(q0)*sin(q1)*sin(q2)*1.0);

J_dot(5,0) = (cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)*(dq0*cos(q1)*cos(q2)*sin(q0)+dq1*cos(q0)*cos(q1)*sin(q2)*1.0+dq1*cos(q0)*cos(q2)*sin(q1)+dq2*cos(q0)*cos(q1)*sin(q2)+dq2*cos(q0)*cos(q2)*sin(q1)*1.0-dq0*sin(q0)*sin(q1)*sin(q2)*1.0)*-2.0-(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*(dq1*cos(q0)*cos(q1)*cos(q2)*-1.0-dq2*cos(q0)*cos(q1)*cos(q2)*1.0+dq0*cos(q1)*sin(q0)*sin(q2)*1.0+dq0*cos(q2)*sin(q0)*sin(q1)*1.0+dq1*cos(q0)*sin(q1)*sin(q2)*1.0+dq2*cos(q0)*sin(q1)*sin(q2)*1.0)*2.0+dq0*cos(q0)*sin(q0)*2.0;

J_dot(5,1) = (cos(q1)*sin(q0)*sin(q2)*1.0+cos(q2)*sin(q0)*sin(q1))*(dq0*cos(q1)*cos(q2)*sin(q0)+dq1*cos(q0)*cos(q1)*sin(q2)*1.0+dq1*cos(q0)*cos(q2)*sin(q1)+dq2*cos(q0)*cos(q1)*sin(q2)+dq2*cos(q0)*cos(q2)*sin(q1)*1.0-dq0*sin(q0)*sin(q1)*sin(q2)*1.0)-(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)*(dq0*cos(q0)*cos(q1)*sin(q2)*1.0+dq0*cos(q0)*cos(q2)*sin(q1)+dq1*cos(q1)*cos(q2)*sin(q0)+dq2*cos(q1)*cos(q2)*sin(q0)*1.0-dq1*sin(q0)*sin(q1)*sin(q2)*1.0-dq2*sin(q0)*sin(q1)*sin(q2))-(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*(dq0*cos(q0)*cos(q1)*cos(q2)*-1.0+dq0*cos(q0)*sin(q1)*sin(q2)*1.0+dq1*cos(q1)*sin(q0)*sin(q2)*1.0+dq1*cos(q2)*sin(q0)*sin(q1)*1.0+dq2*cos(q1)*sin(q0)*sin(q2)*1.0+dq2*cos(q2)*sin(q0)*sin(q1)*1.0)+(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*(dq1*cos(q0)*cos(q1)*cos(q2)*-1.0-dq2*cos(q0)*cos(q1)*cos(q2)*1.0+dq0*cos(q1)*sin(q0)*sin(q2)*1.0+dq0*cos(q2)*sin(q0)*sin(q1)*1.0+dq1*cos(q0)*sin(q1)*sin(q2)*1.0+dq2*cos(q0)*sin(q1)*sin(q2)*1.0);

J_dot(5,2) = (cos(q1)*sin(q0)*sin(q2)+cos(q2)*sin(q0)*sin(q1)*1.0)*(dq0*cos(q1)*cos(q2)*sin(q0)+dq1*cos(q0)*cos(q1)*sin(q2)*1.0+dq1*cos(q0)*cos(q2)*sin(q1)+dq2*cos(q0)*cos(q1)*sin(q2)+dq2*cos(q0)*cos(q2)*sin(q1)*1.0-dq0*sin(q0)*sin(q1)*sin(q2)*1.0)-(cos(q0)*cos(q1)*cos(q2)-cos(q0)*sin(q1)*sin(q2)*1.0)*(dq0*cos(q0)*cos(q1)*sin(q2)+dq0*cos(q0)*cos(q2)*sin(q1)*1.0+dq1*cos(q1)*cos(q2)*sin(q0)*1.0+dq2*cos(q1)*cos(q2)*sin(q0)-dq1*sin(q0)*sin(q1)*sin(q2)-dq2*sin(q0)*sin(q1)*sin(q2)*1.0)-(cos(q0)*cos(q1)*sin(q2)*1.0+cos(q0)*cos(q2)*sin(q1)*1.0)*(dq0*cos(q0)*cos(q1)*cos(q2)*-1.0+dq0*cos(q0)*sin(q1)*sin(q2)*1.0+dq1*cos(q1)*sin(q0)*sin(q2)*1.0+dq1*cos(q2)*sin(q0)*sin(q1)*1.0+dq2*cos(q1)*sin(q0)*sin(q2)*1.0+dq2*cos(q2)*sin(q0)*sin(q1)*1.0)+(sin(q0)*sin(q1)*sin(q2)*1.0-cos(q1)*cos(q2)*sin(q0)*1.0)*(dq1*cos(q0)*cos(q1)*cos(q2)*-1.0-dq2*cos(q0)*cos(q1)*cos(q2)*1.0+dq0*cos(q1)*sin(q0)*sin(q2)*1.0+dq0*cos(q2)*sin(q0)*sin(q1)*1.0+dq1*cos(q0)*sin(q1)*sin(q2)*1.0+dq2*cos(q0)*sin(q1)*sin(q2)*1.0);

// return J_dot;

int index = 0;
for (int row = 0; row < J_dot.rows(); ++row) {
	for (int col = 0; col < J_dot.cols(); ++col) {
		result[index++] = J_dot(row, col);
	}
}

}
