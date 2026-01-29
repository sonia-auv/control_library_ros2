classdef ZUPT < matlab.System
    %ZUPT Summary of this class goes here
    %   Detailed explanation goes here
    
    properties(DiscreteState)
        staticTicks
    end

    properties(Nontunable)
        staticWindow = 0.5;
        thrusterNewtonUpperLimit = 2.0;
        thrusterNewtonLowerLimit = 2.0;
        accelLimit = 0.1
        gyroLimit = 0.1
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

        %% Step Function
        function [isStatic] = stepImpl(this, accel, gyro, thrusterNewton)
            %stepImpl Function that executes 

            if this.checkNewtonThrust(thrusterNewton)...
                    && this.checkSensor(accel, this.accelLimit)...
                    && this.checkSensor(gyro, this.gyroLimit)...
                    && this.staticTicks * this.staticWindow <= this.staticWindow
                this.staticTicks = this.staticTicks + 1;
            else
                this.staticTicks = uint8(0);
            end

            isStatic = double(this.staticTicks) * this.sampleTime > this.staticWindow;
        end

        function flag = checkNewtonThrust(this, thrust)
            flag = true;
            for i=1:4
                if thrust(i) > this.thrusterNewtonUpperLimit(i)...
                        || thrust(i) < this.thrusterNewtonLowerLimit(i)
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

