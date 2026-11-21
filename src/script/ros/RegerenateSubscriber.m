function RegerenateSubscriber()
% Réapplique le type de message de chaque bloc ROS 2 Subscribe.
%
% Le bloc Constant interne (message vide) revient au type par défaut de la
% librairie (SL_Bus_geometry_msgs_Point) au chargement du modèle. Sans
% message reçu, le Subscriber retourne ce bus et la simulation plante avec
% "returns a bus type whose number of fields does not match".

subs = find_system("proc_control", 'LookUnderMasks', 'all', 'FollowLinks', 'on', 'MatchFilter', @Simulink.match.allVariants, 'ReferenceBlock', 'ros2lib/Subscribe');

warnState = warning('off', 'Simulink:Commands:SetParamLinkChangeWarn');
cleanup = onCleanup(@() warning(warnState));

for i = 1:numel(subs)
    ros.slros2.internal.block.SubscribeBlockMask.dispatch('messageTypeEdit', subs{i});
end

end