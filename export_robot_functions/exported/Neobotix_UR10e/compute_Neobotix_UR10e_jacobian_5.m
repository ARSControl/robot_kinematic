function J = compute_Neobotix_UR10e_jacobian_5(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);
q4 = q(5);
q5 = q(6);
q6 = q(7);
q7 = q(8);
q8 = q(9);

J(1,1) = 1.0;

J(1,2) = 0;

J(1,3) = 1.0*sin(q2)*(0.6127*cos(q3)*cos(q4) + 0.57155*cos(q3)*cos(q4)*cos(q5) - 0.57155*cos(q3)*sin(q4)*sin(q5)) + 1.0*cos(q2)*(0.6127*cos(q4)*sin(q3) - 0.57155*sin(q3)*sin(q4)*sin(q5) + 0.57155*cos(q4)*cos(q5)*sin(q3));

J(1,4) = 1.0*sin(q2)*(0.6127*cos(q3)*cos(q4) + 0.57155*cos(q3)*cos(q4)*cos(q5) - 0.57155*cos(q3)*sin(q4)*sin(q5)) + 1.0*cos(q2)*(0.6127*cos(q4)*sin(q3) - 0.57155*sin(q3)*sin(q4)*sin(q5) + 0.57155*cos(q4)*cos(q5)*sin(q3));

J(1,5) = 0.000000000000000037517054691879165501768261042458*cos(q4) + 0.000000000000000034997343902633486278008241551847*cos(q4)*cos(q5) - 0.000000000000000034997343902633486278008241551847*sin(q4)*sin(q5) + 1.0*cos(q2)*(0.6127*cos(q3)*sin(q4) + 0.57155*cos(q3)*cos(q4)*sin(q5) + 0.57155*cos(q3)*cos(q5)*sin(q4)) - 1.0*sin(q2)*(0.6127*sin(q3)*sin(q4) + 0.57155*cos(q4)*sin(q3)*sin(q5) + 0.57155*cos(q5)*sin(q3)*sin(q4));

J(1,6) = 0.000000000000000034997343902633486278008241551847*cos(q4)*cos(q5) - 0.000000000000000034997343902633486278008241551847*sin(q4)*sin(q5) - 1.0*sin(q2)*(0.57155*cos(q4)*sin(q3)*sin(q5) + 0.57155*cos(q5)*sin(q3)*sin(q4)) + 1.0*cos(q2)*(0.57155*cos(q3)*cos(q4)*sin(q5) + 0.57155*cos(q3)*cos(q5)*sin(q4));

J(2,1) = 0;

J(2,2) = 1.0;

J(2,3) = 1.0*sin(q2)*(0.6127*cos(q4)*sin(q3) - 0.57155*sin(q3)*sin(q4)*sin(q5) + 0.57155*cos(q4)*cos(q5)*sin(q3)) - 1.0*cos(q2)*(0.6127*cos(q3)*cos(q4) + 0.57155*cos(q3)*cos(q4)*cos(q5) - 0.57155*cos(q3)*sin(q4)*sin(q5));

J(2,4) = 1.0*sin(q2)*(0.6127*cos(q4)*sin(q3) - 0.57155*sin(q3)*sin(q4)*sin(q5) + 0.57155*cos(q4)*cos(q5)*sin(q3)) - 1.0*cos(q2)*(0.6127*cos(q3)*cos(q4) + 0.57155*cos(q3)*cos(q4)*cos(q5) - 0.57155*cos(q3)*sin(q4)*sin(q5));

J(2,5) = 1.0*sin(q2)*(0.6127*cos(q3)*sin(q4) + 0.57155*cos(q3)*cos(q4)*sin(q5) + 0.57155*cos(q3)*cos(q5)*sin(q4)) + 1.0*cos(q2)*(0.6127*sin(q3)*sin(q4) + 0.57155*cos(q4)*sin(q3)*sin(q5) + 0.57155*cos(q5)*sin(q3)*sin(q4));

J(2,6) = 1.0*sin(q2)*(0.57155*cos(q3)*cos(q4)*sin(q5) + 0.57155*cos(q3)*cos(q5)*sin(q4)) + 1.0*cos(q2)*(0.57155*cos(q4)*sin(q3)*sin(q5) + 0.57155*cos(q5)*sin(q3)*sin(q4));

J(3,1) = 0.00000000000000006123233995736766035868820147292;

J(3,2) = 0;

J(3,3) = 0.00000000000000006123233995736766035868820147292*sin(q2)*(0.6127*cos(q3)*cos(q4) + 0.57155*cos(q3)*cos(q4)*cos(q5) - 0.57155*cos(q3)*sin(q4)*sin(q5)) + 0.00000000000000006123233995736766035868820147292*cos(q2)*(0.6127*cos(q4)*sin(q3) - 0.57155*sin(q3)*sin(q4)*sin(q5) + 0.57155*cos(q4)*cos(q5)*sin(q3));

J(3,4) = 0.00000000000000006123233995736766035868820147292*sin(q2)*(0.6127*cos(q3)*cos(q4) + 0.57155*cos(q3)*cos(q4)*cos(q5) - 0.57155*cos(q3)*sin(q4)*sin(q5)) + 0.00000000000000006123233995736766035868820147292*cos(q2)*(0.6127*cos(q4)*sin(q3) - 0.57155*sin(q3)*sin(q4)*sin(q5) + 0.57155*cos(q4)*cos(q5)*sin(q3));

J(3,5) = 0.57155*sin(q4)*sin(q5) - 0.57155*cos(q4)*cos(q5) - 0.6127*cos(q4) + 0.00000000000000006123233995736766035868820147292*cos(q2)*(0.6127*cos(q3)*sin(q4) + 0.57155*cos(q3)*cos(q4)*sin(q5) + 0.57155*cos(q3)*cos(q5)*sin(q4)) - 0.00000000000000006123233995736766035868820147292*sin(q2)*(0.6127*sin(q3)*sin(q4) + 0.57155*cos(q4)*sin(q3)*sin(q5) + 0.57155*cos(q5)*sin(q3)*sin(q4));

J(3,6) = 0.57155*sin(q4)*sin(q5) - 0.57155*cos(q4)*cos(q5) - 0.00000000000000006123233995736766035868820147292*sin(q2)*(0.57155*cos(q4)*sin(q3)*sin(q5) + 0.57155*cos(q5)*sin(q3)*sin(q4)) + 0.00000000000000006123233995736766035868820147292*cos(q2)*(0.57155*cos(q3)*cos(q4)*sin(q5) + 0.57155*cos(q3)*cos(q5)*sin(q4));

J(4,1) = 0;

J(4,2) = 0;

J(4,3) = - (1.0*sin(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*cos(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3)))*(0.00000000000000006123233995736766035868820147292*sin(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 0.00000000000000006123233995736766035868820147292*cos(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3))) - (1.0*cos(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) + 1.0*sin(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))*(0.00000000000000006123233995736766035868820147292*cos(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4))) - (1.0*cos(q2)*cos(q3) - 1.0*sin(q2)*sin(q3))*(0.00000000000000006123233995736766035868820147292*cos(q2)*cos(q3) - 0.00000000000000006123233995736766035868820147292*sin(q2)*sin(q3));

J(4,4) = - (1.0*sin(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*cos(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3)))*(0.00000000000000006123233995736766035868820147292*sin(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 0.00000000000000006123233995736766035868820147292*cos(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3))) - (1.0*cos(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) + 1.0*sin(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))*(0.00000000000000006123233995736766035868820147292*cos(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4))) - (1.0*cos(q2)*cos(q3) - 1.0*sin(q2)*sin(q3))*(0.00000000000000006123233995736766035868820147292*cos(q2)*cos(q3) - 0.00000000000000006123233995736766035868820147292*sin(q2)*sin(q3));

J(4,5) = (1.0*sin(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*cos(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3)))*(1.0*cos(q4)*cos(q5) - 1.0*sin(q4)*sin(q5) - 0.00000000000000006123233995736766035868820147292*cos(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + cos(q3)*cos(q5)*sin(q4)) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + cos(q5)*sin(q3)*sin(q4))) + (1.0*cos(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) + 1.0*sin(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) + 0.00000000000000006123233995736766035868820147292*cos(q2)*(1.0*cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)));

J(4,6) = (1.0*sin(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*cos(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3)))*(1.0*cos(q4)*cos(q5) - 1.0*sin(q4)*sin(q5) - 0.00000000000000006123233995736766035868820147292*cos(q2)*(cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4))) + (1.0*cos(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) + 1.0*sin(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) + 0.00000000000000006123233995736766035868820147292*cos(q2)*(1.0*cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)));

J(5,1) = 0;

J(5,2) = 0;

J(5,3) = (1.0*cos(q2)*cos(q3) - 1.0*sin(q2)*sin(q3))*(0.00000000000000006123233995736766035868820147292*cos(q2)*sin(q3) + 0.00000000000000006123233995736766035868820147292*cos(q3)*sin(q2)) - (1.0*sin(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*cos(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3)))*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4) + 0.00000000000000006123233995736766035868820147292*cos(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3))) + (1.0*cos(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) + 1.0*sin(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))*(1.0*cos(q4)*cos(q5) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) - 1.0*sin(q4)*sin(q5) - 0.00000000000000006123233995736766035868820147292*cos(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)));

J(5,4) = (1.0*cos(q2)*cos(q3) - 1.0*sin(q2)*sin(q3))*(0.00000000000000006123233995736766035868820147292*cos(q2)*sin(q3) + 0.00000000000000006123233995736766035868820147292*cos(q3)*sin(q2)) - (1.0*sin(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*cos(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3)))*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4) + 0.00000000000000006123233995736766035868820147292*cos(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3))) + (1.0*cos(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) + 1.0*sin(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))*(1.0*cos(q4)*cos(q5) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) - 1.0*sin(q4)*sin(q5) - 0.00000000000000006123233995736766035868820147292*cos(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)));

J(5,5) = (1.0*cos(q4)*cos(q5) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) - 1.0*sin(q4)*sin(q5) - 0.00000000000000006123233995736766035868820147292*cos(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))*(0.00000000000000006123233995736766035868820147292*cos(q4)*sin(q5) + 0.00000000000000006123233995736766035868820147292*cos(q5)*sin(q4) - 1.0*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) - 1.0*cos(q2)*(1.0*cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5))) - (0.00000000000000006123233995736766035868820147292*cos(q4)*cos(q5) - 0.00000000000000006123233995736766035868820147292*sin(q4)*sin(q5) + 1.0*cos(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + cos(q3)*cos(q5)*sin(q4)) - 1.0*sin(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + cos(q5)*sin(q3)*sin(q4)))*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4) + 0.00000000000000006123233995736766035868820147292*cos(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3)));

J(5,6) = (1.0*cos(q4)*cos(q5) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) - 1.0*sin(q4)*sin(q5) - 0.00000000000000006123233995736766035868820147292*cos(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))*(0.00000000000000006123233995736766035868820147292*cos(q4)*sin(q5) + 0.00000000000000006123233995736766035868820147292*cos(q5)*sin(q4) - 1.0*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) - 1.0*cos(q2)*(1.0*cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5))) - (0.00000000000000006123233995736766035868820147292*cos(q4)*cos(q5) - 0.00000000000000006123233995736766035868820147292*sin(q4)*sin(q5) + 1.0*cos(q2)*(cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)) - 1.0*sin(q2)*(cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)))*(1.0*cos(q4)*sin(q5) + 1.0*cos(q5)*sin(q4) + 0.00000000000000006123233995736766035868820147292*cos(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) + 0.00000000000000006123233995736766035868820147292*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3)));

J(6,1) = 0;

J(6,2) = 0;

J(6,3) = (1.0*cos(q2)*sin(q3) + 1.0*cos(q3)*sin(q2))^2 - (1.0*cos(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) + 1.0*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3)))*(0.00000000000000006123233995736766035868820147292*cos(q4)*sin(q5) + 0.00000000000000006123233995736766035868820147292*cos(q5)*sin(q4) - 1.0*cos(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3))) - (1.0*sin(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) - 1.0*cos(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))*(0.00000000000000006123233995736766035868820147292*cos(q4)*cos(q5) - 1.0*sin(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) - 0.00000000000000006123233995736766035868820147292*sin(q4)*sin(q5) + 1.0*cos(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)));

J(6,4) = (1.0*cos(q2)*sin(q3) + 1.0*cos(q3)*sin(q2))^2 - (1.0*cos(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) + 1.0*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3)))*(0.00000000000000006123233995736766035868820147292*cos(q4)*sin(q5) + 0.00000000000000006123233995736766035868820147292*cos(q5)*sin(q4) - 1.0*cos(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3))) - (1.0*sin(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) - 1.0*cos(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)))*(0.00000000000000006123233995736766035868820147292*cos(q4)*cos(q5) - 1.0*sin(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) - 0.00000000000000006123233995736766035868820147292*sin(q4)*sin(q5) + 1.0*cos(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)));

J(6,5) = (1.0*sin(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + cos(q3)*cos(q5)*sin(q4)) + 1.0*cos(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + cos(q5)*sin(q3)*sin(q4)))*(0.00000000000000006123233995736766035868820147292*cos(q4)*sin(q5) + 0.00000000000000006123233995736766035868820147292*cos(q5)*sin(q4) - 1.0*cos(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3))) - (1.0*cos(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) - 1.0*sin(q2)*(1.0*cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)))*(0.00000000000000006123233995736766035868820147292*cos(q4)*cos(q5) - 1.0*sin(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) - 0.00000000000000006123233995736766035868820147292*sin(q4)*sin(q5) + 1.0*cos(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)));

J(6,6) = (1.0*sin(q2)*(cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)) + 1.0*cos(q2)*(cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)))*(0.00000000000000006123233995736766035868820147292*cos(q4)*sin(q5) + 0.00000000000000006123233995736766035868820147292*cos(q5)*sin(q4) - 1.0*cos(q2)*(cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)) - 1.0*sin(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - cos(q4)*cos(q5)*sin(q3))) - (1.0*cos(q2)*(1.0*sin(q3)*sin(q4)*sin(q5) - 1.0*cos(q4)*cos(q5)*sin(q3)) - 1.0*sin(q2)*(1.0*cos(q3)*cos(q4)*cos(q5) - 1.0*cos(q3)*sin(q4)*sin(q5)))*(0.00000000000000006123233995736766035868820147292*cos(q4)*cos(q5) - 1.0*sin(q2)*(1.0*cos(q4)*sin(q3)*sin(q5) + 1.0*cos(q5)*sin(q3)*sin(q4)) - 0.00000000000000006123233995736766035868820147292*sin(q4)*sin(q5) + 1.0*cos(q2)*(1.0*cos(q3)*cos(q4)*sin(q5) + 1.0*cos(q3)*cos(q5)*sin(q4)));

