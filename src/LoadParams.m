auv = getenv("AUV");
modelName="proc_control";
switch auv
        case 'AUV8'
            fprintf("Loading Params for AUV8!!\n");
            nodeParams = readyaml("config/AUV8.yaml");
            
            %ros2node(simNodeName, 8, Parameters=nodeParams);
            %ros2node(modelName, 8, Parameters=nodeParams);
            % system("ros2 param load /proc_control ./config/AUV8_copy.yaml");

        case 'LITE1'
            fprintf("Loading Params for LITE1!!\n");
            nodeParams = readyaml("config/LITE1.yaml");
            
            %ros2node(simNodeName, 8, Parameters=nodeParams);
            %ros2node(modelName, 8, Parameters=nodeParams);
            % system("ros2 param load /proc_control ./config/AUV8_copy.yaml");
        case 'AUV7'
            [simulink, simulation, physics, kalman, MPC, mode] = ConfigAUV7();
            nodeParams = readyaml("config/AUV7.yaml");
            %nodeParams = readyaml("config/AUV7.yaml");
            %node = ros2node("proc_control", 7, Parameters=nodeParams);
            % system("ros2 param load proc_control ./config/AUV7.yaml");
        otherwise
            return;
end
nodelist = ros2("node","list");
simNodeArr = strfind(nodelist,modelName);
simNodeIdx = find(~cellfun(@isempty, simNodeArr));
simNodeName = nodelist{simNodeIdx};
fprintf("\t%s\n", simNodeName);
paramObj = ros2param(simNodeName);
%% MPC params
set(paramObj, "proc_control.mpc.tmax", nodeParams.proc_control.mpc.tmax);
set(paramObj, "proc_control.mpc.tmin", nodeParams.proc_control.mpc.tmin);
set(paramObj, "proc_control.mpc.p", nodeParams.proc_control.mpc.p);
set(paramObj, "proc_control.mpc.m", nodeParams.proc_control.mpc.m);

set(paramObj, "proc_control.mpc.gains.default.ov", nodeParams.proc_control.mpc.gains.default.ov);
set(paramObj, "proc_control.mpc.gains.default.mv", nodeParams.proc_control.mpc.gains.default.mv);
set(paramObj, "proc_control.mpc.gains.default.mvr", nodeParams.proc_control.mpc.gains.default.mvr);
set(paramObj, "proc_control.mpc.gains.c10.ov", nodeParams.proc_control.mpc.gains.c10.ov);
set(paramObj, "proc_control.mpc.gains.c10.mv", nodeParams.proc_control.mpc.gains.c10.mv);
set(paramObj, "proc_control.mpc.gains.c10.mvr", nodeParams.proc_control.mpc.gains.c10.mvr);
set(paramObj, "proc_control.mpc.gains.c11.ov", nodeParams.proc_control.mpc.gains.c11.ov);
set(paramObj, "proc_control.mpc.gains.c11.mv", nodeParams.proc_control.mpc.gains.c11.mv);
set(paramObj, "proc_control.mpc.gains.c11.mvr", nodeParams.proc_control.mpc.gains.c11.mvr);
set(paramObj, "proc_control.mpc.gains.c19.ov", nodeParams.proc_control.mpc.gains.c19.ov);
set(paramObj, "proc_control.mpc.gains.c19.mv", nodeParams.proc_control.mpc.gains.c19.mv);
set(paramObj, "proc_control.mpc.gains.c19.mvr", nodeParams.proc_control.mpc.gains.c19.mvr);
set(paramObj, "proc_control.mpc.gains.noDvl.mv", nodeParams.proc_control.mpc.gains.noDvl.mv);

%% target reached params
set(paramObj, "proc_control.target_reached.linear_tolerance", nodeParams.proc_control.target_reached.linear_tolerance);
set(paramObj, "proc_control.target_reached.angular_tolerance", nodeParams.proc_control.target_reached.angular_tolerance);
set(paramObj, "proc_control.target_reached.time_in_tolerance", nodeParams.proc_control.target_reached.time_in_tolerance);

%% Physics params
set(paramObj, "proc_control.physics.rho", nodeParams.proc_control.physics.rho);
set(paramObj, "proc_control.physics.g", nodeParams.proc_control.physics.g);
set(paramObj, "proc_control.physics.mass", nodeParams.proc_control.physics.mass);
set(paramObj, "proc_control.physics.volume", nodeParams.proc_control.physics.volume);
set(paramObj, "proc_control.physics.sub_height", nodeParams.proc_control.physics.sub_height);
set(paramObj, "proc_control.physics.I", nodeParams.proc_control.physics.I);
set(paramObj, "proc_control.physics.rg", nodeParams.proc_control.physics.rg);
set(paramObj, "proc_control.physics.rb", nodeParams.proc_control.physics.rb);
set(paramObj, "proc_control.physics.cdl", nodeParams.proc_control.physics.cdl);
set(paramObj, "proc_control.physics.cdq", nodeParams.proc_control.physics.cdq);
set(paramObj, "proc_control.physics.added_mass", nodeParams.proc_control.physics.added_mass);
set(paramObj, "proc_control.physics.thrusters", nodeParams.proc_control.physics.thrusters);
set(paramObj, "proc_control.physics.dvl_lost_override", nodeParams.proc_control.physics.dvl_lost_override);
set(paramObj, "proc_control.physics.dvl_rotation", nodeParams.proc_control.physics.dvl_rotation);
set(paramObj, "proc_control.physics.hydro_pose", nodeParams.proc_control.physics.hydro_pose);
set(paramObj, "proc_control.physics.sonar_pose", nodeParams.proc_control.physics.sonar_pose);
set(paramObj, "proc_control.physics.depth_pose", nodeParams.proc_control.physics.depth_pose);
%%