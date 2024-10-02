classdef (Abstract) Shape < handle
    % Shape - abstract class with contains generic parameters of shapes can
    % have.
    %
    % Shape Properties:
    %   length - length of the shape (m)
    %   diameter - diameter of the shape (m)
    %   area - area of the shape (m^2)
    %   crossArea - cross section area of the shape (m^2)
    %   volume - volume of the shape (m^3)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   

    properties (Access=protected)
        length
        diameter
        area
        crossArea
        volume
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   

    methods (Access=public)
        
        %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Constructor %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
        % -------------------------------------------------------------------------------------------------------------%
        % -------------------------------------------------------------------------------------------------------------%

        function obj = Shape(length)
            obj.length = length;
        end

        %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Getters and setters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
        % -------------------------------------------------------------------------------------------------------------%
        % -------------------------------------------------------------------------------------------------------------%

        function length = getLength(obj)
            length = obj.length;
        end

        function setLength(obj, length)
            obj.length = length;
            obj.setArea();
            obj.setVolume();
        end

        function area = getArea(obj)
            area = obj.area;
        end

        function crossArea = getCrossArea(obj)
            crossArea = obj.crossArea;
        end

        function diameter = getDiameter(obj)
            diameter = obj.diameter;
        end

        function volume = getVolume(obj)
            volume = obj.volume;
        end
        
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    

    methods (Abstract, Access=protected)
        setArea(obj)
        setVolume(obj)
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  

end