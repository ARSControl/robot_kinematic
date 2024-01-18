% UR3e DH Parameters
% a:     [0.0, -0.24355, -0.2132, 0.0, 0.0, 0.0]
% d:     [0.15185, 0.0, 0.0, 0.13105, 0.08535, 0.0921]
% alpha: [pi/2, 0.0, 0.0, pi/2, -pi/2, 0.0]
% theta: [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]

% Dynamic Parameters
% mass: [1.98, 3.4445, 1.437, 0.871, 0.805, 0.261]
% center_of_mass: [[0.0, -0.02, 0.0], [0.13, 0.0, 0.1157], [0.05, 0.0, 0.0238], [0.0, 0.0, 0.01], [0.0, 0.0, 0.01], [0.0, 0.0, -0.02]]

link{1}.a = 0.0;
link{1}.alpha = pi/2;
link{1}.d = 0.15185;
link{1}.theta = 0;
link{1}.mdh = 0;
link{1}.sigma = 0;
link{1}.offset = 0;
link{1}.m = 1.98;
link{1}.r = [0.0, -0.02, 0.0];

link{2}.a = -0.24355;
link{2}.alpha = 0.0;
link{2}.d = 0.0;
link{2}.theta = 0;
link{2}.mdh = 0;
link{2}.sigma = 0;
link{2}.offset = 0;
link{2}.m = 3.4445;
link{2}.r = [0.13, 0.0, 0.1157];

link{3}.a = -0.2132;
link{3}.alpha = 0.0;
link{3}.d = 0.0;
link{3}.theta = 0;
link{3}.mdh = 0;
link{3}.sigma = 0;
link{3}.offset = 0;
link{3}.m = 1.437;
link{3}.r = [0.05, 0.0, 0.0238];

link{4}.a = 0.0;
link{4}.alpha = pi/2;
link{4}.d = 0.13105;
link{4}.theta = 0;
link{4}.mdh = 0;
link{4}.sigma = 0;
link{4}.offset = 0;
link{4}.m = 0.871;
link{4}.r = [0.0, 0.0, 0.01];

link{5}.a = 0.0;
link{5}.alpha = -pi/2;
link{5}.d = 0.08535;
link{5}.theta = 0;
link{5}.mdh = 0;
link{5}.sigma = 0;
link{5}.offset = 0;
link{5}.m = 0.805;
link{5}.r = [0.0, 0.0, 0.01];

link{6}.a = 0.0;
link{6}.alpha = 0.0;
link{6}.d = 0.0921;
link{6}.theta = 0;
link{6}.mdh = 0;
link{6}.sigma = 0;
link{6}.offset = 0;
link{6}.m = 0.261;
link{6}.r = [0.0, 0.0, -0.02];
