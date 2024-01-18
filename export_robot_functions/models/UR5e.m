% UR5e DH Parameters
% a:     [0.0, -0.425, -0.3922, 0.0, 0.0, 0.0]
% d:     [0.1625, 0.0, 0.0, 0.1333, 0.0997, 0.0996]
% alpha: [pi/2, 0.0, 0.0, pi/2, -pi/2, 0.0]
% theta: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]

% Dynamic Parameters
% mass: [3.761, 8.058, 2.846, 1.37, 1.3, 0.365]
% center_of_mass: [[0.0, -0.02561, 0.00193], [0.2125, 0.0, 0.11336], [0.15, 0.0, 0.0265], [0.0, -0.0018, 0.01634], [0.0, 0.0018, 0.01634], [0.0, 0.0, -0.001159]]

link{1}.a = 0;
link{1}.alpha = pi/2;
link{1}.d = 0.1625;
link{1}.theta = 0;
link{1}.mdh = 0;
link{1}.sigma = 0;
link{1}.offset = 0;
link{1}.m = 3.761;
link{1}.r = [0.0, -0.02561, 0.00193];

link{2}.a = -0.425;
link{2}.alpha = 0;
link{2}.d = 0;
link{2}.theta = 0;
link{2}.mdh = 0;
link{2}.sigma = 0;
link{2}.offset = 0;
link{2}.m = 8.058;
link{2}.r = [0.2125, 0.0, 0.11336];

link{3}.a = -0.3922;
link{3}.alpha = 0;
link{3}.d = 0;
link{3}.theta = 0;
link{3}.mdh = 0;
link{3}.sigma = 0;
link{3}.offset = 0;
link{3}.m = 2.846;
link{3}.r = [0.15, 0.0, 0.0265];

link{4}.a = 0;
link{4}.alpha = pi/2;
link{4}.d = 0.13333;
link{4}.theta = 0;
link{4}.mdh = 0;
link{4}.sigma = 0;
link{4}.offset = 0;
link{4}.m = 1.37;
link{4}.r = [0.0, -0.0018, 0.01634];

link{5}.a = 0;
link{5}.alpha = -pi/2;
link{5}.d = 0.0997;
link{5}.theta = 0;
link{5}.mdh = 0;
link{5}.sigma = 0;
link{5}.offset = 0;
link{5}.m = 1.3;
link{5}.r = [0.0, 0.0018, 0.01634];

link{6}.a = 0;
link{6}.alpha = 0;
link{6}.d = 0.0996;
link{6}.theta = 0;
link{6}.mdh = 0;
link{6}.sigma = 0;
link{6}.offset = 0;
link{6}.m = 0.365;
link{6}.r = [0.0, 0.0, -0.001159];
