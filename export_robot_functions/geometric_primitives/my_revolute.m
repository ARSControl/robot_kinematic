function T = my_revolute(q, d, alpha, a, offset)
   T = my_trot_z(q) * my_transl([0.0,0.0,d]) * my_trot_z(offset) * my_transl([a, 0.0, 0.0]) * my_trot_x(alpha);