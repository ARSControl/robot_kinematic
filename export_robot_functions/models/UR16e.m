% UR16e DH Parameters
% a:     [0.0, -0.4784, -0.36, 0.0, 0.0, 0.0]
% d:     [0.1807, 0.0, 0.0, 0.17415, 0.11985, 0.11655]
% alpha: [pi/2, 0.0, 0.0, pi/2, -pi/2, 0.0]
% theta: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]

% Dynamic Parameters
% mass: [7.369, 10.450, 4.321, 2.180, 2.033, 0.907]
% center_of_mass: [[0.000, -0.016, 0.030], [0.302, 0.000, 0.160], [0.194, 0.000, 0.065], [0.000, -0.009, 0.011], [0.000, 0.018, 0.012], [0.0, 0.0, -0.044]]

link{1}.a = 0;
link{1}.alpha = pi/2;
link{1}.d = 0.1807;
link{1}.theta = 0;
link{1}.mdh = 0;
link{1}.sigma = 0;
link{1}.offset = 0;
link{1}.m = 7.369;
link{1}.r = [0.000, -0.016, 0.030];

link{2}.a = -0.4784;
link{2}.alpha = 0;
link{2}.d = 0;
link{2}.theta = 0;
link{2}.mdh = 0;
link{2}.sigma = 0;
link{2}.offset = 0;
link{2}.m = 10.450;
link{2}.r = [0.302, 0.000, 0.160];

link{3}.a = -0.36;
link{3}.alpha = 0;
link{3}.d = 0;
link{3}.theta = 0;
link{3}.mdh = 0;
link{3}.sigma = 0;
link{3}.offset = 0;
link{3}.m = 4.321;
link{3}.r = [0.194, 0.000, 0.065];

link{4}.a = 0;
link{4}.alpha = pi/2;
link{4}.d = 0.17415;
link{4}.theta = 0;
link{4}.mdh = 0;
link{4}.sigma = 0;
link{4}.offset = 0;
link{4}.m = 2.180;
link{4}.r = [0.000, -0.009, 0.011];

link{5}.a = 0;
link{5}.alpha = -pi/2;
link{5}.d = 0.11985;
link{5}.theta = 0;
link{5}.mdh = 0;
link{5}.sigma = 0;
link{5}.offset = 0;
link{5}.m = 2.033;
link{5}.r = [0.000, 0.018, 0.012];

link{6}.a = 0;
link{6}.alpha = 0;
link{6}.d = 0.11655;
link{6}.theta = 0;
link{6}.mdh = 0;
link{6}.sigma = 0;
link{6}.offset = 0;
link{6}.m = 0.907;
link{6}.r = [0.0, 0.0, -0.044];
