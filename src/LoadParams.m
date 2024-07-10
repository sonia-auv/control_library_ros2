auv = getenv("AUV");
switch auv
        case 'AUV8'
            nodeParams = readyaml("config/AUV8.yaml");
            ros2node("proc_control", 8, Parameters=nodeParams);
            % system("ros2 param load /proc_control ./config/AUV8_copy.yaml");
        case 'AUV7'
            [simulink, simulation, physics, kalman, MPC, mode] = ConfigAUV7();
            %nodeParams = readyaml("config/AUV7.yaml");
            %node = ros2node("proc_control", 7, Parameters=nodeParams);
            % system("ros2 param load proc_control ./config/AUV7.yaml");
        otherwise
            return;
end