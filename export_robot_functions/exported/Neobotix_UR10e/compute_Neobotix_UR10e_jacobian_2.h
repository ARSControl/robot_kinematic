Eigen::Matrix<double, 6, 9> compute_Neobotix_UR10e_jacobian_2(Eigen::Matrix<double, 9, 1> q){

Eigen::Matrix<double, 6, 9> J;

J.setZero();

double q0 = q(0,0);
double q1 = q(1,0);
double q2 = q(2,0);
double q3 = q(3,0);
double q4 = q(4,0);
double q5 = q(5,0);
double q6 = q(6,0);
double q7 = q(7,0);
double q8 = q(8,0);

J(0,0) = 1.0;

J(0,1) = 0.0;

J(0,2) = 0.0;

J(1,0) = 0.0;

J(1,1) = 1.0;

J(1,2) = 0.0;

J(2,0) = 6.123233995736766E-17;

J(2,1) = 0.0;

J(2,2) = 0.0;

J(3,0) = 0.0;

J(3,1) = 0.0;

J(3,2) = pow(cos(q2),2.0)*-6.123233995736766E-17-pow(sin(q2),2.0)*6.123233995736766E-17;

J(4,0) = 0.0;

J(4,1) = 0.0;

J(4,2) = 0.0;

J(5,0) = 0.0;

J(5,1) = 0.0;

J(5,2) = pow(cos(q2),2.0)*1.0+pow(sin(q2),2.0)*1.0;

return J;

}
