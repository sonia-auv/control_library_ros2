function proc_planner

% Si on roule en simulation
% if coder.target('MATLAB')
%     setenv("AUV","AUV8");
    
%     if ~ ros2.internal.Global.isNodeActive
%         % partir le node ros matlab
%         rosinit;
%     end
    
%     system("rosparam load ./config/proc_planner_config.yaml");
% end

fprintf('INFO : proc planner : Load config for %s \n', getenv("AUV"));

% Démarer le planner
planner = ros_node();

% Variables locals
rosSpin = 1;
r = ros2rate(planner.internalNode, rosSpin);

planner.spin(r);


end