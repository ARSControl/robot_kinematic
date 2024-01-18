function export_kinematic_functions(model)

    function_path = mfilename('fullpath');
    function_name = mfilename();
    base_path = strcat(function_path(1:end-length(function_name)-1),'/exported/',model.name,'/');
    if ~exist(base_path, 'dir')
       mkdir(base_path)
    end

    for i = 1:model.n_dofs
        T{i} = model.frames_wrt_base{i};
        [J_t, J_dot_t, J_dot_dq_t] = get_jacobians_from_direct_kinematics(T{i}, i);
        J{i} = J_t;
        J_dot{i} = J_dot_t;
        J_dot_dq{i} = J_dot_dq_t;
    end
   
    direct_kinematic_function_name = strcat('compute_',model.name,'_direct_kinematic');
    jacobian_function_name = strcat('compute_',model.name,'_jacobian');
    jacobian_dot_function_name = strcat('compute_',model.name,'_jacobian_dot');
    jacobian_dot_dq_function_name = strcat('compute_',model.name,'_jacobian_dot_dq');
    
%% matlab direct kinematic   

    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_direct_kinematic_function_name = strcat(direct_kinematic_function_name,'_', num2str(k-1));
        else
            kth_direct_kinematic_function_name = direct_kinematic_function_name;
        end

        fid = fopen(strcat(base_path, strcat(kth_direct_kinematic_function_name,'.m')), "wt");
        fprintf(fid, "%s\n\n", strcat("function T = ", kth_direct_kinematic_function_name,"(q)"));
    
        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("q",int2str(i-1)," = q(", int2str(i),");"));
        end
        fprintf(fid, "\n");
        
        kth_T = T{k};
        for i = 1:size(kth_T,1)
            for j=1:size(kth_T,2)
                data_str = strcat("T(",num2str(i),",",num2str(j),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, char(kth_T(i,j)),";"));
            end
        end
    
        fclose(fid);
    end
    
%% matlab jacobian   

    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_jacobian_function_name = strcat(jacobian_function_name,'_', num2str(k-1));
        else
            kth_jacobian_function_name = jacobian_function_name;
        end

        fid = fopen(strcat(base_path, kth_jacobian_function_name,'.m'), "wt");
        fprintf(fid, "%s\n\n", strcat("function J = ", kth_jacobian_function_name,"(q)"));
    
        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("q",int2str(i-1)," = q(", int2str(i),");"));
        end
        fprintf(fid, "\n");
        
        kth_J = J{k};
        for i = 1:size(kth_J,1)
            for j=1:size(kth_J,2)
                data_str = strcat("J(",num2str(i),",",num2str(j),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, char(kth_J(i,j)),";"));
            end
        end
    
        fclose(fid);
    end

    %% matlab jacobian dot

    for k = 1:model.n_dofs
            if(k~=model.n_dofs)
                kth_jacobian_dot_function_name = strcat(jacobian_dot_function_name,'_', num2str(k-1));
            else
                kth_jacobian_dot_function_name = jacobian_dot_function_name;
            end
    
            fid = fopen(strcat(base_path, kth_jacobian_dot_function_name,'.m'), "wt");
            fprintf(fid, "%s\n\n", strcat("function J_dot = ", kth_jacobian_dot_function_name,"(q, dq)"));
        
            for i=1:model.n_dofs
                fprintf(fid, "%s\n", strcat("q",int2str(i-1)," = q(", int2str(i),");"));
            end
            fprintf(fid, "\n");

            for i=1:model.n_dofs
                fprintf(fid, "%s\n", strcat("dq",int2str(i-1)," = dq(", int2str(i),");"));
            end
            fprintf(fid, "\n");
            
            kth_J_dot= J_dot{k};
            for i = 1:size(kth_J_dot,1)
                for j=1:size(kth_J_dot,2)
                    data_str = strcat("J_dot(",num2str(i),",",num2str(j),") = ");
                    fprintf(fid, "%s\n\n", strcat(data_str, char(kth_J_dot(i,j)),";"));
                end
            end
        
            fclose(fid);
    end

%% matlab jacobian dot * dq

    for k = 1:model.n_dofs
            if(k~=model.n_dofs)
                kth_jacobian_dot_dq_function_name = strcat(jacobian_dot_dq_function_name,'_', num2str(k-1));
            else
                kth_jacobian_dot_dq_function_name = jacobian_dot_dq_function_name;
            end
    
            fid = fopen(strcat(base_path, kth_jacobian_dot_dq_function_name,'.m'), "wt");
            fprintf(fid, "%s\n\n", strcat("function J_dot_dq = ", kth_jacobian_dot_dq_function_name,"(q, dq)"));
        
            for i=1:model.n_dofs
                fprintf(fid, "%s\n", strcat("q",int2str(i-1)," = q(", int2str(i),");"));
            end
            fprintf(fid, "\n");

            for i=1:model.n_dofs
                fprintf(fid, "%s\n", strcat("dq",int2str(i-1)," = dq(", int2str(i),");"));
            end
            fprintf(fid, "\n");
            
            kth_J_dot_dq = J_dot_dq{k};
            for i = 1:size(kth_J_dot_dq,1)
                for j=1:size(kth_J_dot_dq,2)
                    data_str = strcat("J_dot_dq(",num2str(i),",",num2str(j),") = ");
                    fprintf(fid, "%s\n\n", strcat(data_str, char(kth_J_dot_dq(i,j)),";"));
                end
            end
        
            fclose(fid);
    end
     
%% cpp direct kinematic
    
    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_direct_kinematic_function_name = strcat(direct_kinematic_function_name,'_', num2str(k-1));
        else
            kth_direct_kinematic_function_name = direct_kinematic_function_name;
        end
  
        fid = fopen(strcat(base_path, strcat(kth_direct_kinematic_function_name,'.cpp')), "wt");
        fprintf(fid, "%s\n\n", strcat("#include <Eigen/Dense>"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 4, 4> ", kth_direct_kinematic_function_name,"(Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> q){"));
        fprintf(fid, "%s\n\n", "Eigen::Matrix<double, 4, 4> T;");
    
        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double q",int2str(i-1)," = q(", int2str(i-1),",0);"));
        end
        fprintf(fid, "\n");
        
        kth_T = T{k};
        for i = 1:size(kth_T,1)
            for j=1:size(kth_T,2)
                data_str = strcat("T(",num2str(i-1),",",num2str(j-1),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, to_c(kth_T(i,j))));
            end
        end
        
        fprintf(fid, "%s\n\n", "return T;");
        fprintf(fid, "%s\n", "}");
    
        fclose(fid);
    
    end
    
%% cpp jacobian

    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_jacobian_function_name = strcat(jacobian_function_name,'_', num2str(k-1));
        else
            kth_jacobian_function_name = jacobian_function_name;
        end

        fid = fopen(strcat(base_path, kth_jacobian_function_name,'.cpp'), "wt");
        fprintf(fid, "%s\n\n", strcat("#include <Eigen/Dense>"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, ", num2str(model.n_dofs),"> ", kth_jacobian_function_name,"(Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> q){"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, ", num2str(model.n_dofs),"> J;"));
        fprintf(fid, "%s\n\n", strcat("J.setZero();"));

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double q",int2str(i-1)," = q(", int2str(i-1),",0);"));
        end
        fprintf(fid, "\n");
        
        kth_J = J{k};
        for i = 1:size(kth_J,1)
            for j=1:size(kth_J,2)
                data_str = strcat("J(",num2str(i-1),",",num2str(j-1),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, to_c(kth_J(i,j))));
            end
        end
        
        fprintf(fid, "%s\n\n", "return J;");
        fprintf(fid, "%s\n", "}");

    fclose(fid);
    end

%% cpp jacobian dot

    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_jacobian_dot_function_name = strcat(jacobian_dot_function_name,'_', num2str(k-1));
        else
            kth_jacobian_dot_function_name = jacobian_dot_function_name;
        end

        fid = fopen(strcat(base_path, kth_jacobian_dot_function_name,'.cpp'), "wt");
        fprintf(fid, "%s\n\n", strcat("#include <Eigen/Dense>"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, 6> ", kth_jacobian_dot_function_name,"(Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> q, Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> dq){"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, 6> J_dot;"));
        fprintf(fid, "%s\n\n", strcat("J_dot.setZero();"));

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double q",int2str(i-1)," = q(", int2str(i-1),",0);"));
        end
        fprintf(fid, "\n");

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double dq",int2str(i-1)," = dq(", int2str(i-1),",0);"));
        end
        fprintf(fid, "\n");
        
        kth_J_dot = J_dot{k};
        for i = 1:size(kth_J_dot,1)
            for j=1:size(kth_J_dot,2)
                data_str = strcat("J_dot(",num2str(i-1),",",num2str(j-1),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, to_c(kth_J_dot(i,j))));
            end
        end
        
        fprintf(fid, "%s\n\n", "return J_dot;");
        fprintf(fid, "%s\n", "}");

    fclose(fid);
    end

%% cpp jacobian dot * dq

    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_jacobian_dot_dq_function_name = strcat(jacobian_dot_dq_function_name,'_', num2str(k-1));
        else
            kth_jacobian_dot_dq_function_name = jacobian_dot_dq_function_name;
        end

        fid = fopen(strcat(base_path, kth_jacobian_dot_dq_function_name,'.cpp'), "wt");
        fprintf(fid, "%s\n\n", strcat("#include <Eigen/Dense>"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, 1> ", kth_jacobian_dot_dq_function_name,"(Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> q, Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> dq){"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, 1> J_dot_dq;"));
        fprintf(fid, "%s\n\n", strcat("J_dot_dq.setZero();"));

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double q",int2str(i-1)," = q(", int2str(i-1),",0);"));
        end
        fprintf(fid, "\n");

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double dq",int2str(i-1)," = dq(", int2str(i-1),",0);"));
        end
        fprintf(fid, "\n");
        
        kth_J_dot_dq = J_dot_dq{k};
        for i = 1:size(kth_J_dot_dq,1)
            for j=1:size(kth_J_dot_dq,2)
                data_str = strcat("J_dot_dq(",num2str(i-1),",",num2str(j-1),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, to_c(kth_J_dot_dq(i,j))));
            end
        end
        
        fprintf(fid, "%s\n\n", "return J_dot_dq;");
        fprintf(fid, "%s\n", "}");

    fclose(fid);
    end

    %% cpp.h direct kinematic
    
    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_direct_kinematic_function_name = strcat(direct_kinematic_function_name,'_', num2str(k-1));
        else
            kth_direct_kinematic_function_name = direct_kinematic_function_name;
        end
  
        fid = fopen(strcat(base_path, strcat(kth_direct_kinematic_function_name,'.h')), "wt");
        fprintf(fid, "%s\n\n", strcat("#include <Eigen/Dense>"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 4, 4> ", kth_direct_kinematic_function_name,"(Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> q){"));
        fprintf(fid, "%s\n\n", "Eigen::Matrix<double, 4, 4> T;");
    
        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double q",int2str(i-1)," = q(", int2str(i-1),",0);"));
        end
        fprintf(fid, "\n");
        
        kth_T = T{k};
        for i = 1:size(kth_T,1)
            for j=1:size(kth_T,2)
                data_str = strcat("T(",num2str(i-1),",",num2str(j-1),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, to_c(kth_T(i,j))));
            end
        end
        
        fprintf(fid, "%s\n\n", "return T;");
        fprintf(fid, "%s\n", "}");
    
        fclose(fid);
    
    end
    
%% cpp.h jacobian

    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_jacobian_function_name = strcat(jacobian_function_name,'_', num2str(k-1));
        else
            kth_jacobian_function_name = jacobian_function_name;
        end

        fid = fopen(strcat(base_path, kth_jacobian_function_name,'.h'), "wt");
        fprintf(fid, "%s\n\n", strcat("#include <Eigen/Dense>"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, ", num2str(model.n_dofs),"> ", kth_jacobian_function_name,"(Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> q){"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, ", num2str(model.n_dofs),"> J;"));
        fprintf(fid, "%s\n\n", strcat("J.setZero();"));

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double q",int2str(i-1)," = q(", int2str(i-1),",0);"));
        end
        fprintf(fid, "\n");
        
        kth_J = J{k};
        for i = 1:size(kth_J,1)
            for j=1:size(kth_J,2)
                data_str = strcat("J(",num2str(i-1),",",num2str(j-1),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, to_c(kth_J(i,j))));
            end
        end
        
        fprintf(fid, "%s\n\n", "return J;");
        fprintf(fid, "%s\n", "}");

    fclose(fid);
    end

%% cpp.h jacobian dot

    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_jacobian_dot_function_name = strcat(jacobian_dot_function_name,'_', num2str(k-1));
        else
            kth_jacobian_dot_function_name = jacobian_dot_function_name;
        end

        fid = fopen(strcat(base_path, kth_jacobian_dot_function_name,'.h'), "wt");
        fprintf(fid, "%s\n\n", strcat("#include <Eigen/Dense>"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, 6> ", kth_jacobian_dot_function_name,"(Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> q, Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> dq){"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, 6> J_dot;"));
        fprintf(fid, "%s\n\n", strcat("J_dot.setZero();"));

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double q",int2str(i-1)," = q(", int2str(i-1),",0);"));
        end
        fprintf(fid, "\n");

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double dq",int2str(i-1)," = dq(", int2str(i-1),",0);"));
        end
        fprintf(fid, "\n");
        
        kth_J_dot = J_dot{k};
        for i = 1:size(kth_J_dot,1)
            for j=1:size(kth_J_dot,2)
                data_str = strcat("J_dot(",num2str(i-1),",",num2str(j-1),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, to_c(kth_J_dot(i,j))));
            end
        end
        
        fprintf(fid, "%s\n\n", "return J_dot;");
        fprintf(fid, "%s\n", "}");

    fclose(fid);
    end

%% cpp.h jacobian dot * dq

    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_jacobian_dot_dq_function_name = strcat(jacobian_dot_dq_function_name,'_', num2str(k-1));
        else
            kth_jacobian_dot_dq_function_name = jacobian_dot_dq_function_name;
        end

        fid = fopen(strcat(base_path, kth_jacobian_dot_dq_function_name,'.h'), "wt");
        fprintf(fid, "%s\n\n", strcat("#include <Eigen/Dense>"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, 1> ", kth_jacobian_dot_dq_function_name,"(Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> q, Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> dq){"));
        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, 1> J_dot_dq;"));
        fprintf(fid, "%s\n\n", strcat("J_dot_dq.setZero();"));

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double q",int2str(i-1)," = q(", int2str(i-1),",0);"));
        end
        fprintf(fid, "\n");

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double dq",int2str(i-1)," = dq(", int2str(i-1),",0);"));
        end
        fprintf(fid, "\n");
        
        kth_J_dot_dq = J_dot_dq{k};
        for i = 1:size(kth_J_dot_dq,1)
            for j=1:size(kth_J_dot_dq,2)
                data_str = strcat("J_dot_dq(",num2str(i-1),",",num2str(j-1),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, to_c(kth_J_dot_dq(i,j))));
            end
        end
        
        fprintf(fid, "%s\n\n", "return J_dot_dq;");
        fprintf(fid, "%s\n", "}");

    fclose(fid);
    end

%% cpp - so lib direct kinematic
    
    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_direct_kinematic_function_name = strcat(direct_kinematic_function_name,'_', num2str(k-1));
        else
            kth_direct_kinematic_function_name = direct_kinematic_function_name;
        end
  
        fid = fopen(strcat(base_path, strcat(kth_direct_kinematic_function_name,'_so.cpp')), "wt");
        fprintf(fid, "%s\n\n", strcat("#include <Eigen/Dense>"));
        fprintf(fid, "%s\n", strcat("// Eigen::Matrix<double, 4, 4> ", kth_direct_kinematic_function_name,"(Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> q){"));
        fprintf(fid, "%s\n\n", strcat("extern ""C"" void ", kth_direct_kinematic_function_name,"(double* result, double *q) {"));

        fprintf(fid, "%s\n\n", "Eigen::Matrix<double, 4, 4> T;");
    
        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double q",int2str(i-1)," = q[", int2str(i-1),"];"));
        end
        fprintf(fid, "\n");
        
        kth_T = T{k};
        for i = 1:size(kth_T,1)
            for j=1:size(kth_T,2)
                data_str = strcat("T(",num2str(i-1),",",num2str(j-1),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, to_c(kth_T(i,j))));
            end
        end
        
        fprintf(fid, "%s\n\n", "// return T;");
        fprintf(fid, "%s\n", "int index = 0;");
        fprintf(fid, "%s\n", "for (int row = 0; row < T.rows(); ++row) {");
        fprintf(fid, "\t%s\n", "for (int col = 0; col < T.cols(); ++col) {");
        fprintf(fid, "\t\t%s\n", "result[index++] = T(row, col);");
        fprintf(fid, "\t%s\n", "}");
        fprintf(fid, "%s\n\n", "}");

        fprintf(fid, "%s\n", "}");
    
        fclose(fid);
    
    end
    
%% cpp - so lib jacobian

    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_jacobian_function_name = strcat(jacobian_function_name,'_', num2str(k-1));
        else
            kth_jacobian_function_name = jacobian_function_name;
        end

        fid = fopen(strcat(base_path, kth_jacobian_function_name,'_so.cpp'), "wt");
        fprintf(fid, "%s\n\n", strcat("#include <Eigen/Dense>"));
        fprintf(fid, "%s\n", strcat("// Eigen::Matrix<double, 6, ", num2str(model.n_dofs),"> ", kth_jacobian_function_name,"(Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> q){"));
        fprintf(fid, "%s\n\n", strcat("extern ""C"" void ", kth_jacobian_function_name,"(double* result, double *q) {"));

        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, ", num2str(model.n_dofs),"> J;"));
        fprintf(fid, "%s\n\n", strcat("J.setZero();"));

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double q",int2str(i-1)," = q[", int2str(i-1),"];"));
        end
        fprintf(fid, "\n");
        
        kth_J = J{k};
        for i = 1:size(kth_J,1)
            for j=1:size(kth_J,2)
                data_str = strcat("J(",num2str(i-1),",",num2str(j-1),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, to_c(kth_J(i,j))));
            end
        end
        
        fprintf(fid, "%s\n\n", "// return J;");
        fprintf(fid, "%s\n", "int index = 0;");
        fprintf(fid, "%s\n", "for (int row = 0; row < J.rows(); ++row) {");
        fprintf(fid, "\t%s\n", "for (int col = 0; col < J.cols(); ++col) {");
        fprintf(fid, "\t\t%s\n", "result[index++] = J(row, col);");
        fprintf(fid, "\t%s\n", "}");
        fprintf(fid, "%s\n\n", "}");

        fprintf(fid, "%s\n", "}");

    fclose(fid);
    end

%% cpp - so lib jacobian dot

    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_jacobian_dot_function_name = strcat(jacobian_dot_function_name,'_', num2str(k-1));
        else
            kth_jacobian_dot_function_name = jacobian_dot_function_name;
        end

        fid = fopen(strcat(base_path, kth_jacobian_dot_function_name,'_so.cpp'), "wt");
        fprintf(fid, "%s\n\n", strcat("#include <Eigen/Dense>"));
        fprintf(fid, "%s\n", strcat("// Eigen::Matrix<double, 6, 6> ", kth_jacobian_dot_function_name,"(Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> q, Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> dq){"));
        fprintf(fid, "%s\n\n", strcat("extern ""C"" void ", kth_jacobian_dot_function_name,"(double* result, double *q, double *dq) {"));

        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, 6> J_dot;"));
        fprintf(fid, "%s\n\n", strcat("J_dot.setZero();"));

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double q",int2str(i-1)," = q[", int2str(i-1),"];"));
        end
        fprintf(fid, "\n");

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double dq",int2str(i-1)," = dq[", int2str(i-1),"];"));
        end
        fprintf(fid, "\n");
        
        kth_J_dot = J_dot{k};
        for i = 1:size(kth_J_dot,1)
            for j=1:size(kth_J_dot,2)
                data_str = strcat("J_dot(",num2str(i-1),",",num2str(j-1),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, to_c(kth_J_dot(i,j))));
            end
        end
        
        fprintf(fid, "%s\n\n", "// return J_dot;");
        fprintf(fid, "%s\n", "int index = 0;");
        fprintf(fid, "%s\n", "for (int row = 0; row < J_dot.rows(); ++row) {");
        fprintf(fid, "\t%s\n", "for (int col = 0; col < J_dot.cols(); ++col) {");
        fprintf(fid, "\t\t%s\n", "result[index++] = J_dot(row, col);");
        fprintf(fid, "\t%s\n", "}");
        fprintf(fid, "%s\n\n", "}");

        fprintf(fid, "%s\n", "}");

    fclose(fid);
    end

%% cpp - so lib jacobian dot * dq

    for k = 1:model.n_dofs
        if(k~=model.n_dofs)
            kth_jacobian_dot_dq_function_name = strcat(jacobian_dot_dq_function_name,'_', num2str(k-1));
        else
            kth_jacobian_dot_dq_function_name = jacobian_dot_dq_function_name;
        end

        fid = fopen(strcat(base_path, kth_jacobian_dot_dq_function_name,'_so.cpp'), "wt");
        fprintf(fid, "%s\n\n", strcat("#include <Eigen/Dense>"));
        fprintf(fid, "%s\n", strcat("// Eigen::Matrix<double, 6, 1> ", kth_jacobian_dot_dq_function_name,"(Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> q, Eigen::Matrix<double, ", int2str(model.n_dofs), ", 1> dq){"));
        fprintf(fid, "%s\n\n", strcat("extern ""C"" void ", kth_jacobian_dot_dq_function_name,"(double* result, double *q, double *dq) {"));

        fprintf(fid, "%s\n\n", strcat("Eigen::Matrix<double, 6, 1> J_dot_dq;"));
        fprintf(fid, "%s\n\n", strcat("J_dot_dq.setZero();"));

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double q",int2str(i-1)," = q[", int2str(i-1),"];"));
        end
        fprintf(fid, "\n");

        for i=1:model.n_dofs
            fprintf(fid, "%s\n", strcat("double dq",int2str(i-1)," = dq[", int2str(i-1),"];"));
        end
        fprintf(fid, "\n");
        
        kth_J_dot_dq = J_dot_dq{k};
        for i = 1:size(kth_J_dot_dq,1)
            for j=1:size(kth_J_dot_dq,2)
                data_str = strcat("J_dot_dq(",num2str(i-1),",",num2str(j-1),") = ");
                fprintf(fid, "%s\n\n", strcat(data_str, to_c(kth_J_dot_dq(i,j))));
            end
        end
        
        fprintf(fid, "%s\n\n", "// return J_dot_dq;");
        fprintf(fid, "%s\n", "int index = 0;");
        fprintf(fid, "%s\n", "for (int row = 0; row < J_dot_dq.rows(); ++row) {");
        fprintf(fid, "\t%s\n", "for (int col = 0; col < J_dot_dq.cols(); ++col) {");
        fprintf(fid, "\t\t%s\n", "result[index++] = J_dot_dq(row, col);");
        fprintf(fid, "\t%s\n", "}");
        fprintf(fid, "%s\n\n", "}");

        fprintf(fid, "%s\n", "}");

    fclose(fid);
    end

end

function [J, J_dot, dJ_dot_dq] = get_jacobians_from_direct_kinematics(T, N_DOFs)
    for i=1:N_DOFs
        T = subs(T,str2sym(strcat('q',num2str(i-1))),str2sym(strcat('q',num2str(i-1),'(t)')));
    end

    syms t;

    dT = diff(T,t);

    vars = [];
    for i=1:N_DOFs
        T = subs(T,str2sym(strcat('q',num2str(i-1),'(t)')),str2sym(strcat('q',num2str(i-1))));
        dT = subs(dT, diff(str2sym(strcat('q',num2str(i-1),'(t)')), t),str2sym(strcat('dq',num2str(i-1))));
        dT = subs(dT, str2sym(strcat('q',num2str(i-1),'(t)')),str2sym(strcat('q',num2str(i-1))));

        vars = [vars, str2sym(strcat('dq',num2str(i-1)))];
    end

    S = dT(1:3,1:3) * transpose(T(1:3,1:3));

    d_x_ee = dT(1,4);
    d_y_ee = dT(2,4);
    d_z_ee = dT(3,4);

    d_phi_ee = S(3,2);
    d_beta_ee = S(1,3);
    d_alpha_ee = S(2,1);

    Jp = equationsToMatrix([d_x_ee, d_y_ee, d_z_ee], vars);
    Jo = equationsToMatrix([d_phi_ee, d_beta_ee, d_alpha_ee], vars);

    J = [Jp;Jo];
    J = simplify(J);

    dq = [];
    for i=1:N_DOFs
        dq = [dq; str2sym(strcat('dq',num2str(i-1)))];
    end

    Jt = J;
    for i=1:N_DOFs
        Jt = subs(Jt, str2sym(strcat('q',num2str(i-1))), str2sym(strcat('q',num2str(i-1),'(t)')));
    end

    dJ = diff(Jt, t);

    for i=1:N_DOFs
        dJ = subs(dJ, diff(str2sym(strcat('q',num2str(i-1),'(t)')), t),str2sym(strcat('dq',num2str(i-1))));
        dJ = subs(dJ, str2sym(strcat('q',num2str(i-1),'(t)')), str2sym(strcat('q',num2str(i-1))));
    end

    J_dot = simplify(dJ);
    dJ_dot_dq = simplify(J_dot * dq);
end

function [A, b] = compute_rcm_constraint(model)
   
    syms t;
    syms dt;
    syms rcm_des_x rcm_des_y rcm_des_z;
    
    rcm_des= [rcm_des_x; rcm_des_y; rcm_des_z];
    n = model.n_dofs;
    T = model.frames_wrt_base{n};

    for i=1:n
        T = subs(T,str2sym(strcat('q',num2str(i-1))),str2sym(strcat('q',num2str(i-1),'(t)')));
    end
    
    dT = diff(T,t);
    S = dT(1:3,1:3) * transpose(T(1:3,1:3));  
    v =[dT(1,4); dT(2,4); dT(3,4)];      
    w = [S(3,2); S(1,3); S(2,1)];
    p = [T(1,4); T(2,4); T(3,4)];
    li = [T(1,3); T(2,3); T(3,3)];

    rcm = p + li.'*(rcm_des - p)*li;

    r_rcm = (rcm - p);
    S = [0, -r_rcm(3), r_rcm(2); r_rcm(3), 0, -r_rcm(1); -r_rcm(2), r_rcm(1), 0];
    v_rcm = [eye(3), -S] * [v; w];
    v_err = (rcm_des - rcm) / dt;
    
%     %new
    constraint_equations = [T(1:3,1).' * (v_rcm - v_err) == 0; ...
                             T(1:3,2).' * (v_rcm - v_err) == 0];

    %old
      %constraint_equations = [T(1:3,1).' * v_rcm == 0; ...
       %                       T(1:3,2).' * v_rcm == 0];
%                         
    constraint_equations = diff(constraint_equations,t);
    
    for i=1:n
        constraint_equations = subs(constraint_equations, diff(str2sym(strcat('q',num2str(i-1),'(t)')), t, t),str2sym(strcat('ddq',num2str(i-1))));
        constraint_equations = subs(constraint_equations, diff(str2sym(strcat('q',num2str(i-1),'(t)')), t),str2sym(strcat('dq',num2str(i-1))));
        constraint_equations = subs(constraint_equations, str2sym(strcat('q',num2str(i-1),'(t)')), str2sym(strcat('q',num2str(i-1))));  
    end
    
    ddq = [];
    for i=1:n
       ddq = [ddq, str2sym(strcat('ddq',num2str(i-1)))]; 
    end
    [A,b] = equationsToMatrix(constraint_equations,ddq);
    
end

function J_rcm = compute_rcm_jacobian(model)

    syms t;
    syms rcm_des_x rcm_des_y rcm_des_z;

    n = model.n_dofs;
    
    p_t = [rcm_des_x; rcm_des_y; rcm_des_z];
    p_i = model.frames_wrt_base{n}(1:3,4);
    l_i = model.frames_wrt_base{n}(1:3,3);
    
    p_rcm = p_i + (transpose(l_i) * (p_t - p_i) * l_i);
    
    for i=1:3    
        for j=1:7
            J_rcm(i,j) = diff(p_rcm(i), str2sym(strcat('q',num2str(j-1))));
        end
    end
end

function str = to_c(sym)
    str = ccode(sym);
    str = str(8:end);
end
