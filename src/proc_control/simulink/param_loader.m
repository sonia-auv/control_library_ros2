function [nodeParams] = param_loader(path)
%PARAM_LOADER Summary of this function goes here
%   Detailed explanation goes here
nodeParams = readyaml(path);
end

