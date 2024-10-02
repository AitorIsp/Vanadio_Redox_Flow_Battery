classdef Rectangle < Shape

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

    properties (Access=protected)
        width
        heigth     
    end
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

    methods (Access=public)

        %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Constructor %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
        % -------------------------------------------------------------------------------------------------------------%
        % -------------------------------------------------------------------------------------------------------------%

        function obj = Rectangle(length, width, heigth)
            obj = obj@Shape(length);
            obj.width = width;
            obj.heigth = heigth;           
            obj.setDiameter();
            obj.setArea();
            obj.setCrossSectionArea();  
            obj.setVolume();
        end

        %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Getters and setters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
        % -------------------------------------------------------------------------------------------------------------%
        % -------------------------------------------------------------------------------------------------------------%
        
        function heigth = getHeigth(obj)
            heigth = obj.heigth;
        end

        % H is the heigth of the shape (m)
        function setHeigth(obj, heigth)
            obj.heigth = heigth;
            obj.setDiameter();
            obj.setCrossSectionArea();
            obj.setVolume();
        end

        function width = getWidth(obj)
            width = obj.width;
        end

        % W is the width of the shape (m)
        function setWidth(obj, width)
            obj.width = width;
            obj.setDiameter();
            obj.setArea();
            obj.setCrossSectionArea();
            obj.setVolume();
        end

        %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Other %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
        % -------------------------------------------------------------------------------------------------------------%
        % -------------------------------------------------------------------------------------------------------------%

        function rebuild(obj, length, width, heigth)
            obj.length = length;
            obj.width = width;
            obj.heigth = heigth;
            obj.setDiameter();
            obj.setArea();
            obj.setCrossSectionArea();
        end

    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

    methods (Access=protected)

        %% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Special getters and setters %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
        % -------------------------------------------------------------------------------------------------------------%
        % -------------------------------------------------------------------------------------------------------------%

        function setDiameter(obj)
            obj.diameter = 2*obj.width*obj.heigth/(obj.width + obj.heigth); 
        end

        function setArea(obj)
            % obj.area = obj.length*obj.width;
        end

        function setCrossSectionArea(obj)
            obj.crossArea = obj.heigth*obj.width;
        end

        function setVolume(obj)
            obj.volume = obj.heigth*obj.length*obj.width;
        end

    end

    % Ver problema ancho largo la gente de los articulos trolos 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

end


