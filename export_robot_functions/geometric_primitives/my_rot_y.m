function R = my_rot_y(beta)
    R = [cos(beta),0,sin(beta);0,1,0;-sin(beta),0,cos(beta)];