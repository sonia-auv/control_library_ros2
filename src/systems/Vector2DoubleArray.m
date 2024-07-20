classdef Vector2DoubleArray < matlab.System
    % untitled Add summary here
    %
    % This template includes the minimum set of functions required
    % to define a System thisect with discrete state.

    % Public, tunable properties
    properties (Nontunable)
        arraySize;
        constantName;
    end

    properties(DiscreteState)
        lastMsg;
        lastValues;
    end

    % Pre-computed constants
    properties(Access = private)

    end

    methods(Access = private)
        %% string2array
        function array = extractionArray(this,str, nbElements)
            array = ones(1, nbElements);

            fprintf("input : %s : %s \n", this.constantName,char(str));
            for i = 1:nbElements
                [token, remain] = strtok(str, ',');
                array(i) = real(str2double(token));
                str = remain(2:end);
            end
        end
    end

    methods(Access = protected)
        function setupImpl(this)
            % Perform one-time calculations, such as computing constants
        end

        function array = stepImpl(this,vector, length)
            if this.arraySize(1) == 1
                this.lastValues(1,:) = vector(1:length);
            else
                for i = 1 : this.arraySize(1)
                    this.lastValues(i,:) = vector(i,1:this.arraySize(2));
                end
            end
            array = this.lastValues;
        end

        function resetImpl(this)
            % Initialize / reset discrete-state properties
            this.lastMsg = zeros(1,400);
            this.lastValues = zeros(this.arraySize(1), this.arraySize(2));


        end


        %% Definire outputs
        function [array] = getOutputSizeImpl(this)

            array = [this.arraySize(1), this.arraySize(2)];

        end

        function [array] = isOutputFixedSizeImpl(this)
            array = true;

        end

        function [array] = getOutputDataTypeImpl(this)
            array = "double";

        end

       function [array] = isOutputComplexImpl(this)
            array = false;

       end

       function [sz,dt,cp] = getDiscreteStateSpecificationImpl(this,name)
           if strcmp(name,'lastMsg')
                sz = [1, 400];
                dt = "double";
                cp = false;
           elseif strcmp(name,'lastValues')
                sz = [this.arraySize(1), this.arraySize(2)];
                dt = "double";
                cp = false;
           elseif strcmp(name,'row')
                sz = [1,1];
                dt = "double";
                cp = false;
           elseif strcmp(name,'columns')
                sz = [1,1];
                dt = "double";
                cp = false;
           end
       end
    end

end
