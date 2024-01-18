function model = import_whole_body_model(base_name, manipulator_name, Tbm)

    base_model = import_model(base_name);
    manipulator_model = import_model(manipulator_name);

    model.name = strcat(base_model.name, "_", manipulator_model.name);
    model.n_dofs = base_model.n_dofs + manipulator_model.n_dofs;
    model.frames_wrt_base = {};

    for i=1:base_model.n_dofs
        model.frames_wrt_base{i} = troty(pi/2) * base_model.frames_wrt_base{i};
    end

    model.frames_wrt_base{base_model.n_dofs}  = model.frames_wrt_base{base_model.n_dofs} * Tbm; 

    for i=1:manipulator_model.n_dofs
        for j=manipulator_model.n_dofs:-1:1
            manipulator_model.frames_wrt_base{i} = subs(manipulator_model.frames_wrt_base{i},strcat('q',num2str(j-1)), strcat('q',num2str(j-1+base_model.n_dofs)));
        end
    end

    for i=1:manipulator_model.n_dofs
        model.frames_wrt_base{i + base_model.n_dofs} = model.frames_wrt_base{base_model.n_dofs} ...
            * manipulator_model.frames_wrt_base{i};
    end