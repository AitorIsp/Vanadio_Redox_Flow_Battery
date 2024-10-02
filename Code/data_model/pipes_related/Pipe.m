classdef Pipe < handle
    % Pipe - Just a pipe
    %
    % Pipe class inerit form handle, so, the objects of this class are
    % handle objects.
    %
    % Pipe Properties:
    %   roughness - roughness of the pipe (m)
    %   shape - the shape of the pipe. This property is a Shape object.
    %   darcyCoeficientFun - function to calculate darcy coeficient. This
    %   function is dependant of the pipe shape.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    properties (Access=protected)
        roughness
        shape
        darcyCoeficientFun
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    methods (Access=private)

        %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Constructor %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
        % -------------------------------------------------------------------------------------------------------------%
        % -------------------------------------------------------------------------------------------------------------%

        function obj = Pipe(roughness, shape)
            obj.roughness = roughness;
            obj.shape = shape;
        end

    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

    methods (Access=public)
        
        %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Getters and setters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
        % -------------------------------------------------------------------------------------------------------------%
        % -------------------------------------------------------------------------------------------------------------%
        
        function roughness = getRoughness(obj)
            roughness = obj.roughness;
        end

        function shape = getShape(obj)
            shape = obj.shape;
        end

        function darcyCoeficient = getDarcyCoeficient(obj)
            darcyCoeficient = obj.darcyCoeficientFun(obj.shape);
        end

    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    methods (Static, Access=public)
        
        %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Create objects %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
        % -------------------------------------------------------------------------------------------------------------%
        % -------------------------------------------------------------------------------------------------------------%

        function pipe = createCylindricalPipe(roughness, length, diameter)
            pipe = Pipe(roughness, Cylinder(length, diameter));
            pipe.darcyCoeficientFun = @ (shape) 64;
        end

        function pipe = createRectangularPipe(roughness, length, width, heigth)
            pipe = Pipe(roughness, Rectangle(length, width, heigth)); 
            pipe.darcyCoeficientFun = @ (shape) 55.5 + 40.9*0.03^(shape.getHeigth()/shape.getWidth());
        end

    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end

