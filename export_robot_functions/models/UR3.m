% UR3 DH Parameters
% a:     [0.0, -0.24365, -0.21325, 0.0, 0.0, 0.0]
% d:     [0.1519, 0.0, 0.0, 0.11235, 0.08535, 0.0819]
% alpha: [pi/2, 0.0, 0.0, pi/2, -pi/2, 0.0]
% theta: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]

% Dynamic Parameters
% mass: [2.0, 3.42, 1.26, 0.8, 0.8, 0.35]
% center_of_mass: [[0.0, -0.02, 0.0], [0.13, 0.0, 0.1157], [0.05, 0.0, 0.0238], [0.0, 0.0, 0.01], [0.0, 0.0, 0.01], [0.0, 0.0, -0.02]]

link{1}.a = 0.0;
link{1}.alpha = pi/2;
link{1}.d = 0.1519;
link{1}.theta = 0;
link{1}.mdh = 0;
link{1}.sigma = 0;
link{1}.offset = 0;
link{1}.m = 2.0;
link{1}.r = [0.0, -0.02, 0.0];

link{2}.a = -0.24365;
link{2}.alpha = 0.0;
link{2}.d = 0.0;
link{2}.theta = 0;
link{2}.mdh = 0;
link{2}.sigma = 0;
link{2}.offset = 0;
link{2}.m = 3.42;
link{2}.r = [0.13, 0.0, 0.1157];

link{3}.a = -0.21325;
link{3}.alpha = 0.0;
link{3}.d = 0.0;
link{3}.theta = 0;
link{3}.mdh = 0;
link{3}.sigma = 0;
link{3}.offset = 0;
link{3}.m = 1.26;
link{3}.r = [0.05, 0.0, 0.0238];

link{4}.a = 0.0;
link{4}.alpha = pi/2;
link{4}.d = 0.11235;
link{4}.theta = 0;
link{4}.mdh = 0;
link{4}.sigma = 0;
link{4}.offset = 0;
link{4}.m = 0.8;
link{4}.r = [0.0, 0.0, 0.01];

link{5}.a = 0.0;
link{5}.alpha = -pi/2;
link{5}.d = 0.08535;
link{5}.theta = 0;
link{5}.mdh = 0;
link{5}.sigma = 0;
link{5}.offset = 0;
link{5}.m = 0.8;
link{5}.r = [0.0, 0.0, 0.01];

link{6}.a = 0.0;
link{6}.alpha = 0.0;
link{6}.d = 0.0819;
link{6}.theta = 0;
link{6}.mdh = 0;
link{6}.sigma = 0;
link{6}.offset = 0;
link{6}.m = 0.35;
link{6}.r = [0.0, 0.0, -0.02];
