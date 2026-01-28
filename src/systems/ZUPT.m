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
            this.staticTicks = 0;
        end
        function setupImpl(this)
        end

        %% Step Function
        function [isStatic] = stepImpl(this, accel, gyro, pwm)
            %stepImpl Function that executes 
            if all(pwm(1:4) > this.pwmUpperLimit) && all(pwm(1:4) < this.pwmLowerLimit) ...
                && all(abs(accel) < this.accelLimit) && all(abs(gyro) < this.gyroLimit) ...
                && this.staticTicks * this.sampleTime <= this.staticWindow
                
                this.staticTicks = this.staticTicks + 1;

            else
                this.staticTicks = 0;

            end

            isStatic = this.staticTicks * this.sampleTime > this.staticWindow;
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
                 dt = "int8";
                 cp = false;
            end
        end
        
        
    end
end

