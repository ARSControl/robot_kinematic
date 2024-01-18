% UR10e DH Parameters
% a:     [0.0, -0.6127, -0.57155, 0.0, 0.0, 0.0]
% d:     [0.1807, 0.0, 0.0, 0.17415, 0.11985, 0.11655]
% alpha: [pi/2, 0.0, 0.0, pi/2, -pi/2, 0.0]
% theta: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]

% Dynamic Parameters
% mass: [7.369, 13.051, 3.989, 2.1, 1.98, 0.615]
% center_of_mass: [[0.021, 0.000, 0.027], [0.38, 0.000, 0.158], [0.24, 0.000, 0.068], [0.000, 0.007, 0.018], [0.000, 0.007, 0.018], [0.0, 0.0, -0.026]]

link{1}.a = 0;
link{1}.alpha = pi/2;
link{1}.d = 0.1807;
link{1}.theta = 0;
link{1}.mdh = 0;
link{1}.sigma = 0;
link{1}.offset = 0;
link{1}.m = 7.369;
link{1}.r = [0.021, 0.000, 0.027];

link{2}.a = -0.6127;
link{2}.alpha = 0;
link{2}.d = 0;
link{2}.theta = 0;
link{2}.mdh = 0;
link{2}.sigma = 0;
link{2}.offset = 0;
link{2}.m = 13.051;
link{2}.r = [0.38, 0.000, 0.158];

link{3}.a = -0.57155;
link{3}.alpha = 0;
link{3}.d = 0;
link{3}.theta = 0;
link{3}.mdh = 0;
link{3}.sigma = 0;
link{3}.offset = 0;
link{3}.m = 3.989;
link{3}.r = [0.24, 0.000, 0.068];

link{4}.a = 0;
link{4}.alpha = pi/2;
link{4}.d = 0.17415;
link{4}.theta = 0;
link{4}.mdh = 0;
link{4}.sigma = 0;
link{4}.offset = 0;
link{4}.m = 2.1;
link{4}.r = [0.000, 0.007, 0.018];

link{5}.a = 0;
link{5}.alpha = -pi/2;
link{5}.d = 0.11985;
link{5}.theta = 0;
link{5}.mdh = 0;
link{5}.sigma = 0;
link{5}.offset = 0;
link{5}.m = 1.98;
link{5}.r = [0.000, 0.007, 0.018];

link{6}.a = 0;
link{6}.alpha = 0;
link{6}.d = 0.11655;
link{6}.theta = 0;
link{6}.mdh = 0;
link{6}.sigma = 0;
link{6}.offset = 0;
link{6}.m = 0.615;
link{6}.r = [0.0, 0.0, -0.026];
