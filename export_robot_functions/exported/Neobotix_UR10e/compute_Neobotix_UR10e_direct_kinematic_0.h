Eigen::Matrix<double, 4, 4> compute_Neobotix_UR10e_direct_kinematic_0(Eigen::Matrix<double, 9, 1> q){

Eigen::Matrix<double, 4, 4> T;

double q0 = q(0,0);
double q1 = q(1,0);
double q2 = q(2,0);
double q3 = q(3,0);
double q4 = q(4,0);
double q5 = q(5,0);
double q6 = q(6,0);
double q7 = q(7,0);
double q8 = q(8,0);

T(0,0) = 6.123233995736766E-17;

T(0,1) = -1.0;

T(0,2) = 0.0;

T(0,3) = q0;

T(1,0) = 0.0;

T(1,1) = 0.0;

T(1,2) = 1.0;

T(1,3) = 0.0;

T(2,0) = -1.0;

T(2,1) = -6.123233995736766E-17;

T(2,2) = 0.0;

T(2,3) = q0*6.123233995736766E-17;

T(3,0) = 0.0;

T(3,1) = 0.0;

T(3,2) = 0.0;

T(3,3) = 1.0;

return T;

}

