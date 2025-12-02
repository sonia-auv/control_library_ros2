classdef SlamVisCombine < matlab.System
    %SLAMVISCOMBINE Summary of this class goes here
    %   Detailed explanation goes here
    
    methods (Access = protected)
        %% Reset Function
        function resetImpl(this)
            
        end
        
        %% Initial Setup (run once at start)
        function setupImpl(this)
        end
        
        %% Step Function run each tick
        function [x_lin, y_lin, z_lin, x_ang, y_ang, z_ang, error] = stepImpl(this, markers, markers_length)
            %STEPIMPL Block Step Function
            if markers_length.CurrentLength == 2
                [x_lin, y_lin, z_lin] = this.extractXYZ(markers(1));
                [x_ang, y_ang, z_ang] = this.extractXYZ(markers(2));
                error = uint8(0);
            else
                [x_lin, y_lin, z_lin, x_ang, y_ang, z_ang] = deal(0);
                error = uint8(1);
            end
        end

        function [x, y, z] = extractXYZ(~, marker)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            point = marker.points(2);
            x = point.x;
            y = point.y;
            z = point.z;
        end

        %% Output type definitions
        function [x_lin, y_lin, z_lin, x_ang, y_ang, z_ang, error] = getOutputSizeImpl(~)
            x_lin = [1, 1];
            y_lin = [1, 1];
            z_lin = [1, 1];
            x_ang = [1, 1];
            y_ang = [1, 1];
            z_ang = [1, 1];
            error = [1, 1];
        end 

        function [x_lin, y_lin, z_lin, x_ang, y_ang, z_ang, error] = isOutputFixedSizeImpl(~)
            x_lin = true;
            y_lin = true;
            z_lin = true;
            x_ang = true;
            y_ang = true;
            z_ang = true;
            error = true;
        end 

        function [x_lin, y_lin, z_lin, x_ang, y_ang, z_ang, error] = getOutputDataTypeImpl(~)
            x_lin = "double";
            y_lin = "double";
            z_lin = "double";
            x_ang = "double";
            y_ang = "double";
            z_ang = "double";
            error = "uint8";
        end

        function [x_lin, y_lin, z_lin, x_ang, y_ang, z_ang, error] = isOutputComplexImpl(~)
            % Return true for each output port with complex data
            x_lin = false;
            y_lin = false;
            z_lin = false;
            x_ang = false;
            y_ang = false;
            z_ang = false;
            error = false;

            % Example: inherit complexity from first input port
            % out = propagatedInputComplexity(obj,1);
        end
    end
end

