classdef ZUPT < matlab.System
    %ZUPT Summary of this class goes here
    %   Detailed explanation goes here
    
    properties(DiscreteState)
        staticTicks
    end

    properties(Nontunable)
        sampleTime = 0.02;
    end
    
    methods (Access=protected)
        %% Reset and Setup Functions
        function resetImpl(this)
            this.staticTicks = uint8(0);
        end
        function setupImpl(this)
            this.staticTicks = uint8(0);
        end

        %% Step FunctionthrusterNewtonUpperLimit
        function [isStatic] = stepImpl(this, accel, gyro, thrusterNewton,...
                staticWindow, thrusterNewtonUpperLimit,...
                thrusterNewtonLowerLimit, accelLimit, gyroLimit)
            %stepImpl Function that executes 

            if this.checkNewtonThrust(thrusterNewton, thrusterNewtonUpperLimit, thrusterNewtonLowerLimit)...
                    && this.checkSensor(accel, accelLimit)...
                    && this.checkSensor(gyro, gyroLimit)...
                    && this.staticTicks * this.sampleTime <= staticWindow
                this.staticTicks = this.staticTicks + 1;
            else
                this.staticTicks = uint8(0);
            end

            isStatic = double(this.staticTicks) * this.sampleTime > staticWindow;
        end

        function flag = checkNewtonThrust(this, thrust, upperLimit, lowerLimit)
            flag = true;
            for i=1:4
                if thrust(i) > upperLimit(i)...
                        || thrust(i) < lowerLimit(i)
                    flag = false;
                    break;
                end
            end
        end

        function flag = checkSensor(~, sensor, thresh)
            flag = true;
            for i=1:3
                if abs(sensor(i)) > thresh(i)
                    flag = false;
                    break;
                end
            end
        end
    
        %% Output Datatypes definitions
        function [isStatic] = getOutputSizeImpl(this)
            isStatic = 1;
        end
        function [isStatic] = isOutputFixedSizeImpl(this)
            isStatic = true;
        end
        function [isStatic] = getOutputDataTypeImpl(this)
            isStatic = "logical";
        end
        function [isStatic] = isOutputComplexImpl(this)
            isStatic = false;
        end
        function [sz,dt,cp] = getDiscreteStateSpecificationImpl(this,name)
            if strcmp(name,'staticTicks')
                 sz = 1;
                 dt = "uint8";
                 cp = false;
            end
        end 
    end
end

