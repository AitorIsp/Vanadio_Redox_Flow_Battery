%% Example of the creation of pipe objects

%% Case 1
% Create a cylindrical cross section type pipe

pip1Type = 'Cylinder';
pip1Roughness = 1;
pip1Length = 1;
pip1Diameter = 1;
pip1 = PipeFactory.getFactory().createPipe(pip1Type, pip1Roughness, pip1Length, pip1Diameter);

%% Case 2
% Create a rectangular cross section type pipe

pip2Type = 'Rectangular';
pip2Roughness = 1;
pip2Length = 1;
pip2Width = 1;
pip2Heigth = 1;

pip2 = PipeFactory.getFactory().createPipe(pip2Type, pip2Roughness, pip2Length, pip2Width, pip2Heigth);