function model = import_model(robot_name)

function_path = mfilename('fullpath');
function_name = mfilename();
base_path = function_path(1:end-length(function_name)-1);

model.name = robot_name;
run(strcat(base_path,'/models/',robot_name,'.m'))
model.n_dofs = length(link);

for i=1:model.n_dofs
    Links(i) = Link();
    Links(i).a = link{i}.a;
    Links(i).alpha = link{i}.alpha;
    Links(i).d = link{i}.d;
    Links(i).theta = link{i}.theta;
    Links(i).sigma = link{i}.sigma;
    Links(i).mdh = link{i}.mdh;
    Links(i).offset = link{i}.offset;
    if isfield(link{i},'m') == 1
        Links(i).m = link{i}.m;
    end
    if isfield(link{i},'r') == 1
        Links(i).r = link{i}.r;
    end
    if isfield(link{i},'I') == 1
        Links(i).I = link{i}.I;
    end
%     if exist('link{i}.G','var') == 1
%         Links(i).G = link{i}.G;
%     end
%     if exist('link{i}.B','var') == 1
%         Links(i).B = link{i}.B;
%     end
%     if exist('link{i}.Jm','var') == 1
%         Links(i).Jm = link{i}.Jm;
%     end
%     if exist('link{i}.Tc','var') == 1
%         Links(i).Tc = link{i}.Tc;
%     end
    
    q = str2sym(strcat('q',num2str(i-1)));
    T_j{i} = my_link(q, link{i}.theta, link{i}.d, link{i}.a, link{i}.alpha , link{i}.sigma, link{i}.offset);
    
    if i == 1   
        T = T_j{i};
    else
        T = T_0{i-1} * T_j{i};
    end
      
    for ii = 1:4
        for jj=1:4
            T_i_j_str = char(vpa(T(ii,jj),8));
            T_i_j_str = replace(T_i_j_str,'e-','*0*');
            T(ii,jj) = str2sym(T_i_j_str);
        end
    end
        
    T_0{i} = simplify(T);
end

model.simulator = SerialLink(Links);
model.frames_wrt_base = T_0;
model.frames_relative = T_j;




