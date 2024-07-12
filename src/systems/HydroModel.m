classdef HydroModel < matlab.System
    % Simules la valeurs retourner via les hydrophones


    % Public, tunable properties
    properties (Nontunable)
    Physics;
    simulation;
    pingerStartPosition;

    end

    properties(DiscreteState)

    end

    % Pre-computed constants
    properties(Access = private)
       pingerPosition = ros2message('geometry_msgs/Vector3');
    end

    methods(Access = protected)
        function setupImpl(this)
            % Perform one-time calculations, such as computing constants
        end

        function [HydroMesurements] = stepImpl(this,isNewPosition,pingerPosition,worldPosition,quaternion)

            if isNewPosition
                this.updatePignerPosition(pingerPosition);
            end
            % Ajout du bruit sur la position du pinger.
            p =[this.pingerPosition.x ;
                this.pingerPosition.y ;
                this.pingerPosition.z ] + (rand(3,1)  *this.simulation.hydro.maxDeviation);

            % Calculer les angles des hydros.
            HydroMesurements = pinger2hydroAngles(worldPosition, quaternion.' ,this.Physics.hydroPose.', p);
        end

        function resetImpl(this)
            % Initialize / reset discrete-state properties
            %this.pingerPosition = this.pingerStartPosition;
            this.pingerPosition = struct('x',0,'y',0,'z',0);
            this.pingerPosition.x = this.pingerStartPosition(1);
            this.pingerPosition.y = this.pingerStartPosition(2);
            this.pingerPosition.z = this.pingerStartPosition(3);
        end

        function updatePignerPosition(this,msg )
            this.pingerPosition.x = msg.x;
            this.pingerPosition.y = msg.y;
            this.pingerPosition.z = msg.z;
        end

      %% Definire outputs
      function [HydroMesurements] = getOutputSizeImpl(this)
          HydroMesurements = [3,1];

      end

      function [HydroMesurements] = isOutputFixedSizeImpl(this)
          HydroMesurements = true;

      end

      function [HydroMesurements] = getOutputDataTypeImpl(this)
          HydroMesurements = "double";

      end

     function [HydroMesurements] = isOutputComplexImpl(this)
         HydroMesurements = false;

     end
     function [sz,dt,cp] = getDiscreteStateSpecificationImpl(this,name)
         if strcmp(name,'init')
              sz = [1 1];
              dt = "double";
              cp = false;

         end
     end

     function this = slexBusesMATLABSystemMathOpSysObj(varargin)
      % Support name-value pair arguments
      setProperties(this,nargin,varargin{:});
     end

    end
end
