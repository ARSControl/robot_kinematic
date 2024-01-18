#include <Eigen/Dense>

Eigen::Matrix<double, 6, 6> compute_UR10e_jacobian_dot(Eigen::Matrix<double, 6, 1> q, Eigen::Matrix<double, 6, 1> dq){

Eigen::Matrix<double, 6, 6> J_dot;

J_dot.setZero();

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

J_dot(0,0) = sin(q0)*(sin(q1+q2)*(dq1+dq2)*1.1431E+4+dq1*sin(q1)*1.2254E+4)*-5.0E-5-dq0*sin(q0)*1.7415E-1-dq0*cos(q4)*sin(q0)*1.1655E-1-dq4*cos(q0)*sin(q4)*1.1655E-1-dq0*sin(q1+q2+q3)*cos(q0)*1.1985E-1-cos(q1+q2+q3)*sin(q0)*(dq1+dq2+dq3)*1.1985E-1+dq0*cos(q0)*(cos(q1+q2)*1.1431E+4+cos(q1)*1.2254E+4)*5.0E-5+dq0*cos(q1+q2+q3)*cos(q0)*sin(q4)*1.1655E-1+dq4*cos(q1+q2+q3)*cos(q4)*sin(q0)*1.1655E-1-sin(q1+q2+q3)*sin(q0)*sin(q4)*(dq1+dq2+dq3)*1.1655E-1;

J_dot(0,1) = (cos(q0)*(sin(q1+q2+q3)*(dq1+dq2+dq3)*-2.397E+3+cos(q1+q2)*(dq1+dq2)*1.1431E+4+dq1*cos(q1)*1.2254E+4+dq4*sin(q1+q2+q3)*cos(q4)*2.331E+3+cos(q1+q2+q3)*sin(q4)*(dq1+dq2+dq3)*2.331E+3))/2.0E+4-(dq0*sin(q0)*(cos(q1+q2+q3)*2.397E+3+sin(q1+q2)*1.1431E+4+sin(q1)*1.2254E+4+sin(q1+q2+q3)*sin(q4)*2.331E+3))/2.0E+4;

J_dot(0,2) = (cos(q0)*(sin(q1+q2+q3)*(dq1+dq2+dq3)*-2.397E+3+cos(q1+q2)*(dq1+dq2)*1.1431E+4+dq4*sin(q1+q2+q3)*cos(q4)*2.331E+3+cos(q1+q2+q3)*sin(q4)*(dq1+dq2+dq3)*2.331E+3))/2.0E+4-(dq0*sin(q0)*(cos(q1+q2+q3)*2.397E+3+sin(q1+q2)*1.1431E+4+sin(q1+q2+q3)*sin(q4)*2.331E+3))/2.0E+4;

J_dot(0,3) = cos(q0)*(sin(q1+q2+q3)*(dq1+dq2+dq3)*-7.99E+2+dq4*sin(q1+q2+q3)*cos(q4)*7.77E+2+cos(q1+q2+q3)*sin(q4)*(dq1+dq2+dq3)*7.77E+2)*1.5E-4-dq0*sin(q0)*(cos(q1+q2+q3)*7.99E+2+sin(q1+q2+q3)*sin(q4)*7.77E+2)*1.5E-4;

J_dot(0,4) = dq0*cos(q0)*sin(q4)*-1.1655E-1-dq4*cos(q4)*sin(q0)*1.1655E-1+dq0*cos(q1+q2+q3)*cos(q4)*sin(q0)*1.1655E-1+dq4*cos(q1+q2+q3)*cos(q0)*sin(q4)*1.1655E-1+sin(q1+q2+q3)*cos(q0)*cos(q4)*(dq1+dq2+dq3)*1.1655E-1;

J_dot(0,5) = 0.0;

J_dot(1,0) = cos(q0)*(sin(q1+q2)*(dq1+dq2)*1.1431E+4+dq1*sin(q1)*1.2254E+4)*5.0E-5+dq0*cos(q0)*1.7415E-1+dq0*cos(q0)*cos(q4)*1.1655E-1-dq4*sin(q0)*sin(q4)*1.1655E-1-dq0*sin(q1+q2+q3)*sin(q0)*1.1985E-1+cos(q1+q2+q3)*cos(q0)*(dq1+dq2+dq3)*1.1985E-1+dq0*sin(q0)*(cos(q1+q2)*1.1431E+4+cos(q1)*1.2254E+4)*5.0E-5-dq4*cos(q1+q2+q3)*cos(q0)*cos(q4)*1.1655E-1+dq0*cos(q1+q2+q3)*sin(q0)*sin(q4)*1.1655E-1+sin(q1+q2+q3)*cos(q0)*sin(q4)*(dq1+dq2+dq3)*1.1655E-1;

J_dot(1,1) = (sin(q0)*(sin(q1+q2+q3)*(dq1+dq2+dq3)*-2.397E+3+cos(q1+q2)*(dq1+dq2)*1.1431E+4+dq1*cos(q1)*1.2254E+4+dq4*sin(q1+q2+q3)*cos(q4)*2.331E+3+cos(q1+q2+q3)*sin(q4)*(dq1+dq2+dq3)*2.331E+3))/2.0E+4+(dq0*cos(q0)*(cos(q1+q2+q3)*2.397E+3+sin(q1+q2)*1.1431E+4+sin(q1)*1.2254E+4+sin(q1+q2+q3)*sin(q4)*2.331E+3))/2.0E+4;

J_dot(1,2) = (sin(q0)*(sin(q1+q2+q3)*(dq1+dq2+dq3)*-2.397E+3+cos(q1+q2)*(dq1+dq2)*1.1431E+4+dq4*sin(q1+q2+q3)*cos(q4)*2.331E+3+cos(q1+q2+q3)*sin(q4)*(dq1+dq2+dq3)*2.331E+3))/2.0E+4+(dq0*cos(q0)*(cos(q1+q2+q3)*2.397E+3+sin(q1+q2)*1.1431E+4+sin(q1+q2+q3)*sin(q4)*2.331E+3))/2.0E+4;

J_dot(1,3) = sin(q0)*(sin(q1+q2+q3)*(dq1+dq2+dq3)*-7.99E+2+dq4*sin(q1+q2+q3)*cos(q4)*7.77E+2+cos(q1+q2+q3)*sin(q4)*(dq1+dq2+dq3)*7.77E+2)*1.5E-4+dq0*cos(q0)*(cos(q1+q2+q3)*7.99E+2+sin(q1+q2+q3)*sin(q4)*7.77E+2)*1.5E-4;

J_dot(1,4) = dq4*cos(q0)*cos(q4)*1.1655E-1-dq0*sin(q0)*sin(q4)*1.1655E-1-dq0*cos(q1+q2+q3)*cos(q0)*cos(q4)*1.1655E-1+dq4*cos(q1+q2+q3)*sin(q0)*sin(q4)*1.1655E-1+sin(q1+q2+q3)*cos(q4)*sin(q0)*(dq1+dq2+dq3)*1.1655E-1;

J_dot(1,5) = 0.0;

J_dot(2,0) = 0.0;

J_dot(2,1) = cos(q1+q2+q3)*(dq1+dq2+dq3)*1.1985E-1+sin(q1+q2)*(dq1+dq2)*5.7155E-1+dq1*sin(q1)*6.127E-1-dq4*cos(q1+q2+q3)*cos(q4)*1.1655E-1+sin(q1+q2+q3)*sin(q4)*(dq1+dq2+dq3)*1.1655E-1;

J_dot(2,2) = cos(q1+q2+q3)*(dq1+dq2+dq3)*1.1985E-1+sin(q1+q2)*(dq1+dq2)*5.7155E-1-dq4*cos(q1+q2+q3)*cos(q4)*1.1655E-1+sin(q1+q2+q3)*sin(q4)*(dq1+dq2+dq3)*1.1655E-1;

J_dot(2,3) = cos(q1+q2+q3)*(dq1+dq2+dq3)*1.1985E-1-dq4*cos(q1+q2+q3)*cos(q4)*1.1655E-1+sin(q1+q2+q3)*sin(q4)*(dq1+dq2+dq3)*1.1655E-1;

J_dot(2,4) = dq4*sin(q1+q2+q3)*sin(q4)*1.1655E-1-cos(q1+q2+q3)*cos(q4)*(dq1+dq2+dq3)*1.1655E-1;

J_dot(2,5) = 0.0;

J_dot(3,0) = 0.0;

J_dot(3,1) = dq0*cos(q0);

J_dot(3,2) = dq0*cos(q0);

J_dot(3,3) = dq0*cos(q0);

J_dot(3,4) = -dq0*sin(q1+q2+q3)*sin(q0)+cos(q1+q2+q3)*cos(q0)*(dq1+dq2+dq3);

J_dot(3,5) = dq0*cos(q0)*cos(q4)-dq4*sin(q0)*sin(q4)-dq4*cos(q1+q2+q3)*cos(q0)*cos(q4)+dq0*cos(q1+q2+q3)*sin(q0)*sin(q4)+sin(q1+q2+q3)*cos(q0)*sin(q4)*(dq1+dq2+dq3);

J_dot(4,0) = 0.0;

J_dot(4,1) = dq0*sin(q0);

J_dot(4,2) = dq0*sin(q0);

J_dot(4,3) = dq0*sin(q0);

J_dot(4,4) = dq0*sin(q1+q2+q3)*cos(q0)+cos(q1+q2+q3)*sin(q0)*(dq1+dq2+dq3);

J_dot(4,5) = dq0*cos(q4)*sin(q0)+dq4*cos(q0)*sin(q4)-dq0*cos(q1+q2+q3)*cos(q0)*sin(q4)-dq4*cos(q1+q2+q3)*cos(q4)*sin(q0)+sin(q1+q2+q3)*sin(q0)*sin(q4)*(dq1+dq2+dq3);

J_dot(5,0) = (cos(q4)*sin(q0)-cos(q1+q2+q3)*cos(q0)*sin(q4))*(dq0*cos(q0)*cos(q4)-dq4*sin(q0)*sin(q4)-dq4*cos(q1+q2+q3)*cos(q0)*cos(q4)+dq0*cos(q1+q2+q3)*sin(q0)*sin(q4)+sin(q1+q2+q3)*cos(q0)*sin(q4)*(dq1+dq2+dq3))*2.0+(sin(q0)*sin(q4)*sin(q5)+sin(q1+q2+q3)*cos(q0)*cos(q5)+cos(q1+q2+q3)*cos(q0)*cos(q4)*sin(q5))*(dq0*cos(q0)*sin(q4)*sin(q5)+dq4*cos(q4)*sin(q0)*sin(q5)+dq5*cos(q5)*sin(q0)*sin(q4)-dq0*sin(q1+q2+q3)*cos(q5)*sin(q0)-dq5*sin(q1+q2+q3)*cos(q0)*sin(q5)+cos(q1+q2+q3)*cos(q0)*cos(q5)*(dq1+dq2+dq3)+dq5*cos(q1+q2+q3)*cos(q0)*cos(q4)*cos(q5)-dq0*cos(q1+q2+q3)*cos(q4)*sin(q0)*sin(q5)-dq4*cos(q1+q2+q3)*cos(q0)*sin(q4)*sin(q5)-sin(q1+q2+q3)*cos(q0)*cos(q4)*sin(q5)*(dq1+dq2+dq3))*2.0-(sin(q1+q2+q3)*cos(q0)*sin(q5)*-1.0+cos(q5)*sin(q0)*sin(q4)+cos(q1+q2+q3)*cos(q0)*cos(q4)*cos(q5))*(-dq0*cos(q0)*cos(q5)*sin(q4)-dq4*cos(q4)*cos(q5)*sin(q0)+dq5*sin(q0)*sin(q4)*sin(q5)+dq5*sin(q1+q2+q3)*cos(q0)*cos(q5)-dq0*sin(q1+q2+q3)*sin(q0)*sin(q5)*1.0+cos(q1+q2+q3)*cos(q0)*sin(q5)*(dq1+dq2+dq3)+dq0*cos(q1+q2+q3)*cos(q4)*cos(q5)*sin(q0)+dq4*cos(q1+q2+q3)*cos(q0)*cos(q5)*sin(q4)+dq5*cos(q1+q2+q3)*cos(q0)*cos(q4)*sin(q5)+sin(q1+q2+q3)*cos(q0)*cos(q4)*cos(q5)*(dq1+dq2+dq3))*2.0;

J_dot(5,1) = 0.0;

J_dot(5,2) = 0.0;

J_dot(5,3) = 0.0;

J_dot(5,4) = (cos(q0)*sin(q4)-cos(q1+q2+q3)*cos(q4)*sin(q0))*(dq0*cos(q0)*cos(q4)-dq4*sin(q0)*sin(q4)-dq4*cos(q1+q2+q3)*cos(q0)*cos(q4)+dq0*cos(q1+q2+q3)*sin(q0)*sin(q4)+sin(q1+q2+q3)*cos(q0)*sin(q4)*(dq1+dq2+dq3))+(cos(q4)*sin(q0)-cos(q1+q2+q3)*cos(q0)*sin(q4))*(dq4*cos(q0)*cos(q4)-dq0*sin(q0)*sin(q4)-dq0*cos(q1+q2+q3)*cos(q0)*cos(q4)+dq4*cos(q1+q2+q3)*sin(q0)*sin(q4)+sin(q1+q2+q3)*cos(q4)*sin(q0)*(dq1+dq2+dq3))+cos(q5)*(cos(q0)*cos(q4)*1.0+cos(q1+q2+q3)*sin(q0)*sin(q4)*1.0)*(cos(q5)*(-dq0*cos(q0)*sin(q4)-dq4*cos(q4)*sin(q0)+dq0*cos(q1+q2+q3)*cos(q4)*sin(q0)+dq4*cos(q1+q2+q3)*cos(q0)*sin(q4)+sin(q1+q2+q3)*cos(q0)*cos(q4)*(dq1+dq2+dq3))+dq5*sin(q5)*(sin(q0)*sin(q4)+cos(q1+q2+q3)*cos(q0)*cos(q4))+dq5*sin(q1+q2+q3)*cos(q0)*cos(q5)*1.0-dq0*sin(q1+q2+q3)*sin(q0)*sin(q5)*1.0+cos(q1+q2+q3)*cos(q0)*sin(q5)*(dq1+dq2+dq3)*1.0)*1.0+cos(q5)*(cos(q5)*(sin(q0)*sin(q4)+cos(q1+q2+q3)*cos(q0)*cos(q4))-sin(q1+q2+q3)*cos(q0)*sin(q5)*1.0)*(dq0*cos(q4)*sin(q0)*1.0+dq4*cos(q0)*sin(q4)*1.0-dq0*cos(q1+q2+q3)*cos(q0)*sin(q4)*1.0-dq4*cos(q1+q2+q3)*cos(q4)*sin(q0)*1.0+sin(q1+q2+q3)*sin(q0)*sin(q4)*(dq1+dq2+dq3)*1.0)*1.0+sin(q5)*(cos(q0)*cos(q4)*1.0+cos(q1+q2+q3)*sin(q0)*sin(q4)*1.0)*(sin(q5)*(-dq0*cos(q0)*sin(q4)-dq4*cos(q4)*sin(q0)+dq0*cos(q1+q2+q3)*cos(q4)*sin(q0)+dq4*cos(q1+q2+q3)*cos(q0)*sin(q4)+sin(q1+q2+q3)*cos(q0)*cos(q4)*(dq1+dq2+dq3))*1.0-dq5*cos(q5)*(sin(q0)*sin(q4)+cos(q1+q2+q3)*cos(q0)*cos(q4))*1.0+dq0*sin(q1+q2+q3)*cos(q5)*sin(q0)*1.0+dq5*sin(q1+q2+q3)*cos(q0)*sin(q5)*1.0-cos(q1+q2+q3)*cos(q0)*cos(q5)*(dq1+dq2+dq3)*1.0)+sin(q5)*(sin(q5)*(sin(q0)*sin(q4)+cos(q1+q2+q3)*cos(q0)*cos(q4))*1.0+sin(q1+q2+q3)*cos(q0)*cos(q5)*1.0)*(dq0*cos(q4)*sin(q0)*1.0+dq4*cos(q0)*sin(q4)*1.0-dq0*cos(q1+q2+q3)*cos(q0)*sin(q4)*1.0-dq4*cos(q1+q2+q3)*cos(q4)*sin(q0)*1.0+sin(q1+q2+q3)*sin(q0)*sin(q4)*(dq1+dq2+dq3)*1.0)+dq5*sin(q5)*(cos(q0)*cos(q4)*1.0+cos(q1+q2+q3)*sin(q0)*sin(q4)*1.0)*(cos(q5)*(sin(q0)*sin(q4)+cos(q1+q2+q3)*cos(q0)*cos(q4))-sin(q1+q2+q3)*cos(q0)*sin(q5)*1.0)*1.0-dq5*cos(q5)*(cos(q0)*cos(q4)*1.0+cos(q1+q2+q3)*sin(q0)*sin(q4)*1.0)*(sin(q5)*(sin(q0)*sin(q4)+cos(q1+q2+q3)*cos(q0)*cos(q4))*1.0+sin(q1+q2+q3)*cos(q0)*cos(q5)*1.0);

J_dot(5,5) = -dq4*sin(q1+q2+q3)*cos(q4)-cos(q1+q2+q3)*sin(q4)*(dq1+dq2+dq3);

return J_dot;

}
