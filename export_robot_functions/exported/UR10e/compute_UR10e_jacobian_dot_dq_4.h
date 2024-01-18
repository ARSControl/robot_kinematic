#include <Eigen/Dense>

Eigen::Matrix<double, 6, 1> compute_UR10e_jacobian_dot_dq_4(Eigen::Matrix<double, 6, 1> q, Eigen::Matrix<double, 6, 1> dq){

Eigen::Matrix<double, 6, 1> J_dot_dq;

J_dot_dq.setZero();

double q0 = q(0,0);
double q1 = q(1,0);
double q2 = q(2,0);
double q3 = q(3,0);
double q4 = q(4,0);
double q5 = q(5,0);

double dq0 = dq(0,0);
double dq1 = dq(1,0);
double dq2 = dq(2,0);
double dq3 = dq(3,0);
double dq4 = dq(4,0);
double dq5 = dq(5,0);

J_dot_dq(0,0) = -dq1*(cos(q0)*(cos(q1+q2)*(dq1+dq2)*1.1431E+4+dq1*cos(q1)*1.2254E+4)*-5.0E-5+dq0*sin(q0)*(sin(q1+q2)*1.1431E+4+sin(q1)*1.2254E+4)*5.0E-5+dq0*cos(q1+q2+q3)*sin(q0)*1.1985E-1+sin(q1+q2+q3)*cos(q0)*(dq1+dq2+dq3)*1.1985E-1)-dq0*(sin(q0)*(sin(q1+q2)*(dq1+dq2)*1.1431E+4+dq1*sin(q1)*1.2254E+4)*5.0E-5+dq0*sin(q0)*1.7415E-1+dq0*sin(q1+q2+q3)*cos(q0)*1.1985E-1+cos(q1+q2+q3)*sin(q0)*(dq1+dq2+dq3)*1.1985E-1-dq0*cos(q0)*(cos(q1+q2)*1.1431E+4+cos(q1)*1.2254E+4)*5.0E-5)-dq3*(dq0*cos(q1+q2+q3)*sin(q0)*1.1985E-1+sin(q1+q2+q3)*cos(q0)*(dq1+dq2+dq3)*1.1985E-1)-dq2*((cos(q0)*(sin(q1+q2+q3)*(dq1+dq2+dq3)*2.397E+3-cos(q1+q2)*(dq1+dq2)*1.1431E+4))/2.0E+4+(dq0*sin(q0)*(cos(q1+q2+q3)*2.397E+3+sin(q1+q2)*1.1431E+4))/2.0E+4);

J_dot_dq(1,0) = dq0*(cos(q0)*(sin(q1+q2)*(dq1+dq2)*1.1431E+4+dq1*sin(q1)*1.2254E+4)*5.0E-5+dq0*cos(q0)*1.7415E-1-dq0*sin(q1+q2+q3)*sin(q0)*1.1985E-1+cos(q1+q2+q3)*cos(q0)*(dq1+dq2+dq3)*1.1985E-1+dq0*sin(q0)*(cos(q1+q2)*1.1431E+4+cos(q1)*1.2254E+4)*5.0E-5)+dq1*(sin(q0)*(cos(q1+q2)*(dq1+dq2)*1.1431E+4+dq1*cos(q1)*1.2254E+4)*5.0E-5+dq0*cos(q0)*(sin(q1+q2)*1.1431E+4+sin(q1)*1.2254E+4)*5.0E-5+dq0*cos(q1+q2+q3)*cos(q0)*1.1985E-1-sin(q1+q2+q3)*sin(q0)*(dq1+dq2+dq3)*1.1985E-1)+dq3*(dq0*cos(q1+q2+q3)*cos(q0)*1.1985E-1-sin(q1+q2+q3)*sin(q0)*(dq1+dq2+dq3)*1.1985E-1)-dq2*((sin(q0)*(sin(q1+q2+q3)*(dq1+dq2+dq3)*2.397E+3-cos(q1+q2)*(dq1+dq2)*1.1431E+4))/2.0E+4-(dq0*cos(q0)*(cos(q1+q2+q3)*2.397E+3+sin(q1+q2)*1.1431E+4))/2.0E+4);

J_dot_dq(2,0) = dq1*(cos(q1+q2+q3)*(dq1+dq2+dq3)*1.1985E-1+sin(q1+q2)*(dq1+dq2)*5.7155E-1+dq1*sin(q1)*6.127E-1)+dq2*(cos(q1+q2+q3)*(dq1+dq2+dq3)*1.1985E-1+sin(q1+q2)*(dq1+dq2)*5.7155E-1)+dq3*cos(q1+q2+q3)*(dq1+dq2+dq3)*1.1985E-1;

J_dot_dq(3,0) = -dq4*(dq0*sin(q1+q2+q3)*sin(q0)-cos(q1+q2+q3)*cos(q0)*(dq1+dq2+dq3))+dq0*dq1*cos(q0)+dq0*dq2*cos(q0)+dq0*dq3*cos(q0);

J_dot_dq(4,0) = dq4*(dq0*sin(q1+q2+q3)*cos(q0)+cos(q1+q2+q3)*sin(q0)*(dq1+dq2+dq3))+dq0*dq1*sin(q0)+dq0*dq2*sin(q0)+dq0*dq3*sin(q0);

J_dot_dq(5,0) = dq4*sin(q1+q2+q3)*(dq1+dq2+dq3);

return J_dot_dq;

}
