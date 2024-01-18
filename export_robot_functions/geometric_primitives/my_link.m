function T = my_link(q, theta, d, a, alpha ,sigma, offset)

	if sigma == 0 %Revolute
        T = my_transl([0.0,0.0,d]) * my_trot_z(q + offset) * my_transl([a, 0.0, 0.0]) * my_trot_x(alpha);
    else %Prismatic
        T = my_transl([0.0,0.0,q + offset]) * my_trot_z(theta) * my_transl([a, 0.0, 0.0]) * my_trot_x(alpha);
    end