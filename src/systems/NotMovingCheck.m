classdef NotMovingCheck < matlab.System
    %NotMovingCheck Is moving check using accel, gyro, and thrusters.
    %
    %   This System allows us to check if the AUV is moving based on if the
    %   accelerometer, gyroscope, and thruster values are within the
    %   defined values that represent static or not. For the result to be
    %   true, it needs to hold the static state for as long as the window
    %   size is defined.
    
    properties(DiscreteState)
        window
        windowIndex
    end

    properties(Nontunable)
        sampleTime = 0.02;  % Sample Time [s]
        windowSize = 1;     % Window Size [s]
    end
    
    methods (Access=protected)
        %% Reset and Setup Functions
        function resetImpl(this)
            N = int32(round(this.windowSize / this.sampleTime));
            this.window = false(1,N);
            this.windowIndex = uint8(1);
        end
        function setupImpl(this)
            N = int32(round(this.windowSize / this.sampleTime));
            this.window = false(1,N);
            this.windowIndex = uint8(1);
        end

        %% Step Function
        function [isStatic] = stepImpl(this, accel, gyro, thrusters,... 
                accelLimit, gyroLimit, thrusterLimitUpper, thrusterLimitLower)
            
            % Check if it's current value is stable or not
            staticStatus = true;
            if ~this.sensorInLimit(accel, accelLimit)
                staticStatus = false;
            end
            if staticStatus && ~this.sensorInLimit(gyro, gyroLimit)
                staticStatus = false;
            end
            if staticStatus && ~this.thrustersInLimit(thrusters, thrusterLimitUpper, thrusterLimitLower)
                staticStatus = false;
            end

            this.window(this.windowIndex) = staticStatus;
            this.windowIndex = this.windowIndex + 1;
            if this.windowIndex > int32(round(this.windowSize / this.sampleTime))
                this.windowIndex = uint8(1);
            end

            isStatic = all(this.window);
        end

        function valid = sensorInLimit(~, sensor, limit)
            valid = true;
            for i=1:3
                if abs(sensor(i)) > limit(i)
                    valid = false;
                    break;
                end
            end
        end

        function valid = thrustersInLimit(~,thruster, upperLimit, lowerLimit)
            valid = true;
            for i=1:4
                if thruster(i) > upperLimit(i) || thruster(i) < lowerLimit(i)
                    valid = false;
                    break;
                end
            end
        end
    
        %% Output Datatypes definitions
        function [isStatic] = getOutputSizeImpl(~)
            isStatic = 1;
        end
        function [isStatic] = isOutputFixedSizeImpl(~)
            isStatic = true;
        end
        function [isStatic] = getOutputDataTypeImpl(~)
            isStatic = "logical";
        end
        function [isStatic] = isOutputComplexImpl(~)
            isStatic = false;
        end
        function [sz,dt,cp] = getDiscreteStateSpecificationImpl(this,name)
            if strcmp(name,'window')
                 sz = [1, int32(round(this.windowSize / this.sampleTime))];
                 dt = "logical";
                 cp = false;
            elseif strcmp(name, "windowIndex")
                sz = 1;
                dt = "uint8";
                cp = false;
            end
        end 
    end
end

