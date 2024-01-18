Eigen::Matrix<double, 4, 4> compute_Neobotix_UR10e_direct_kinematic_4(Eigen::Matrix<double, 9, 1> q){

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

T(0,0) = sin(q4)*-6.123233995736766E-17+cos(q2)*cos(q3)*cos(q4)*1.0-cos(q4)*sin(q2)*sin(q3)*1.0;

T(0,1) = cos(q4)*-6.123233995736766E-17+sin(q2)*sin(q3)*sin(q4)*1.0-cos(q2)*cos(q3)*sin(q4)*1.0;

T(0,2) = cos(q2)*sin(q3)*1.0+cos(q3)*sin(q2)*1.0;

T(0,3) = q0*1.0+sin(q4)*3.751705469187917E-17-cos(q2)*cos(q3)*cos(q4)*6.127E-1+cos(q4)*sin(q2)*sin(q3)*6.127E-1-4.168085380898017E-17;

T(1,0) = cos(q2)*cos(q4)*sin(q3)*1.0+cos(q3)*cos(q4)*sin(q2)*1.0;

T(1,1) = cos(q2)*sin(q3)*sin(q4)*-1.0-cos(q3)*sin(q2)*sin(q4)*1.0;

T(1,2) = cos(q2)*cos(q3)*-1.0+sin(q2)*sin(q3)*1.0;

T(1,3) = q1*1.0-cos(q2)*cos(q4)*sin(q3)*6.127E-1-cos(q3)*cos(q4)*sin(q2)*6.127E-1;

T(2,0) = sin(q4)*1.0+cos(q2)*cos(q3)*cos(q4)*6.123233995736766E-17-cos(q4)*sin(q2)*sin(q3)*6.123233995736766E-17;

T(2,1) = cos(q4)*1.0+sin(q2)*sin(q3)*sin(q4)*6.123233995736766E-17-cos(q2)*cos(q3)*sin(q4)*6.123233995736766E-17;

T(2,2) = cos(q2)*sin(q3)*6.123233995736766E-17+cos(q3)*sin(q2)*6.123233995736766E-17;

T(2,3) = q0*6.123233995736766E-17-sin(q4)*6.127E-1-cos(q2)*cos(q3)*cos(q4)*3.751705469187917E-17+cos(q4)*sin(q2)*sin(q3)*3.751705469187917E-17+6.807E-1;

T(3,0) = 0.0;

T(3,1) = 0.0;

T(3,2) = 0.0;

T(3,3) = 1.0;

return T;

}

