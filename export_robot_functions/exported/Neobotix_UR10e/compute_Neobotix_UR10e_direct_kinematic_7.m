function T = compute_Neobotix_UR10e_direct_kinematic_7(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);
q6 = q(7);
q7 = q(8);
q8 = q(9);

T(1,1) = 1.0*cos(q2)*(sin(q3)*sin(q7) + cos(q7)*(cos(q6)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*sin(q6)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))) - 0.00000000000000006123233995736766035868820147292*cos(q7)*(cos(q6)*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4)) + sin(q6)*(1.0*cos(q4)*cos(q5) - 1.0*sin(q4)*sin(q5))) + 1.0*sin(q2)*(1.0*cos(q3)*sin(q7) + 1.0*cos(q7)*(1.0*cos(q6)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) + 1.0*sin(q6)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4))));

T(1,2) = 1.0*sin(q2)*(1.0*cos(q6)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) - 1.0*sin(q6)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3))) - 0.00000000000000006123233995736766035868820147292*cos(q6)*(1.0*cos(q4)*cos(q5) - 1.0*sin(q4)*sin(q5)) + 0.00000000000000006123233995736766035868820147292*sin(q6)*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4)) - 1.0*cos(q2)*(1.0*sin(q6)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) + 1.0*cos(q6)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)));

T(1,3) = 1.0*sin(q2)*(1.0*cos(q3)*cos(q7) - sin(q7)*(1.0*cos(q6)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) + 1.0*sin(q6)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)))) + 0.00000000000000006123233995736766035868820147292*sin(q7)*(cos(q6)*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4)) + sin(q6)*(1.0*cos(q4)*cos(q5) - 1.0*sin(q4)*sin(q5))) + 1.0*cos(q2)*(cos(q7)*sin(q3) - 1.0*sin(q7)*(cos(q6)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*sin(q6)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4))));

T(1,4) = 1.0*q0 + 0.000000000000000037517054691879165501768261042458*sin(q4) + 0.000000000000000034997343902633486278008241551847*cos(q4)*sin(q5) + 0.000000000000000034997343902633486278008241551847*cos(q5)*sin(q4) + 1.0*sin(q2)*(0.17415*cos(q3) - 0.11985*cos(q6)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) + 0.6127*cos(q4)*sin(q3) + 0.11985*sin(q6)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) - 0.57155*sin(q3)*sin(q4)*sin(q5) + 0.57155*cos(q4)*cos(q5)*sin(q3)) + 0.0000000000000000073386959438905140939887809465294*cos(q6)*(1.0*cos(q4)*cos(q5) - 1.0*sin(q4)*sin(q5)) - 0.0000000000000000073386959438905140939887809465294*sin(q6)*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4)) + 1.0*cos(q2)*(0.17415*sin(q3) - 0.6127*cos(q3)*cos(q4) + 0.11985*sin(q6)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) + 0.11985*cos(q6)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)) - 0.57155*cos(q3)*cos(q4)*cos(q5) + 0.57155*cos(q3)*sin(q4)*sin(q5)) - 0.000000000000000041680853808980166406159058742617;

T(2,1) = 1.0*sin(q2)*(sin(q3)*sin(q7) + cos(q7)*(cos(q6)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*sin(q6)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))) - 1.0*cos(q2)*(1.0*cos(q3)*sin(q7) + 1.0*cos(q7)*(1.0*cos(q6)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) + 1.0*sin(q6)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4))));

T(2,2) = - 1.0*cos(q2)*(1.0*cos(q6)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) - 1.0*sin(q6)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3))) - 1.0*sin(q2)*(1.0*sin(q6)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) + 1.0*cos(q6)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)));

T(2,3) = 1.0*sin(q2)*(cos(q7)*sin(q3) - 1.0*sin(q7)*(cos(q6)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*sin(q6)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))) - 1.0*cos(q2)*(1.0*cos(q3)*cos(q7) - sin(q7)*(1.0*cos(q6)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) + 1.0*sin(q6)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4))));

T(2,4) = 1.0*q1 - 1.0*cos(q2)*(0.17415*cos(q3) - 0.11985*cos(q6)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) + 0.6127*cos(q4)*sin(q3) + 0.11985*sin(q6)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) - 0.57155*sin(q3)*sin(q4)*sin(q5) + 0.57155*cos(q4)*cos(q5)*sin(q3)) + 1.0*sin(q2)*(0.17415*sin(q3) - 0.6127*cos(q3)*cos(q4) + 0.11985*sin(q6)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) + 0.11985*cos(q6)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)) - 0.57155*cos(q3)*cos(q4)*cos(q5) + 0.57155*cos(q3)*sin(q4)*sin(q5));

T(3,1) = 1.0*cos(q7)*(cos(q6)*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4)) + sin(q6)*(1.0*cos(q4)*cos(q5) - 1.0*sin(q4)*sin(q5))) + 0.00000000000000006123233995736766035868820147292*cos(q2)*(sin(q3)*sin(q7) + cos(q7)*(cos(q6)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*sin(q6)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*cos(q3)*sin(q7) + 1.0*cos(q7)*(1.0*cos(q6)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) + 1.0*sin(q6)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4))));

T(3,2) = 1.0*cos(q6)*(1.0*cos(q4)*cos(q5) - 1.0*sin(q4)*sin(q5)) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*cos(q6)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) - 1.0*sin(q6)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3))) - 1.0*sin(q6)*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4)) - 0.00000000000000006123233995736766035868820147292*cos(q2)*(1.0*sin(q6)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) + 1.0*cos(q6)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)));

T(3,3) = 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*cos(q3)*cos(q7) - sin(q7)*(1.0*cos(q6)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) + 1.0*sin(q6)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)))) - 1.0*sin(q7)*(cos(q6)*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4)) + sin(q6)*(1.0*cos(q4)*cos(q5) - 1.0*sin(q4)*sin(q5))) + 0.00000000000000006123233995736766035868820147292*cos(q2)*(cos(q7)*sin(q3) - 1.0*sin(q7)*(cos(q6)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*sin(q6)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4))));

T(3,4) = 0.00000000000000006123233995736766035868820147292*q0 - 0.6127*sin(q4) - 0.57155*cos(q4)*sin(q5) - 0.57155*cos(q5)*sin(q4) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(0.17415*cos(q3) - 0.11985*cos(q6)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) + 0.6127*cos(q4)*sin(q3) + 0.11985*sin(q6)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) - 0.57155*sin(q3)*sin(q4)*sin(q5) + 0.57155*cos(q4)*cos(q5)*sin(q3)) - 0.11985*cos(q6)*(1.0*cos(q4)*cos(q5) - 1.0*sin(q4)*sin(q5)) + 0.11985*sin(q6)*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4)) + 0.00000000000000006123233995736766035868820147292*cos(q2)*(0.17415*sin(q3) - 0.6127*cos(q3)*cos(q4) + 0.11985*sin(q6)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) + 0.11985*cos(q6)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)) - 0.57155*cos(q3)*cos(q4)*cos(q5) + 0.57155*cos(q3)*sin(q4)*sin(q5)) + 0.6807;

T(4,1) = 0;

T(4,2) = 0;

T(4,3) = 0;

T(4,4) = 1.0;

