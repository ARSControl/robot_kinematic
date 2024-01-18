Eigen::Matrix<double, 6, 6> compute_UR16e_jacobian_0(Eigen::Matrix<double, 6, 1> q){

Eigen::Matrix<double, 6, 6> J;

J.setZero();

double q0 = q(0,0);
double q1 = q(1,0);
double q2 = q(2,0);
double q3 = q(3,0);
double q4 = q(4,0);
double q5 = q(5,0);

J(0,0) = 0.0;

J(1,0) = 0.0;

J(2,0) = 0.0;

J(3,0) = 0.0;

J(4,0) = 0.0;

J(5,0) = pow(cos(q0),2.0)+pow(sin(q0),2.0)*1.0;

return J;

}

