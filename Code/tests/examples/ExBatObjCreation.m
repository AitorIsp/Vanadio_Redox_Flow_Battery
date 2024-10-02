%% Example Title



%% Params data
% Random data to ilustrate the params of a battery

%------------------- Battery stacks and cells numbers --------------------%

nStacks = 1;
nSubStacks = 5;
nCellsPerSubStack = 30;

%-------------------------- Battery parameters ---------------------------%

iNominalDensity = 60 * (10^-3) * (10^4);  
eNom = 1.4;
e0Plus = 1;
e0Minus = -0.255;

%---------------------------- Cell parameters ----------------------------%

cellLength = 5;
cellWidth = 3;
cellHeigth = 0.06;
cellResistance = 1.33*10^-3;
cellResistivity = 2;

%--------------------------- Electrolyte data ----------------------------%

electrolyteDensity = 1350;
electrolyteDinamicViscosity = 4.93*10^-3;

%---------------------------- Electrode data -----------------------------%

electrodesLength = 0.6;
electrodesWidth = 0.5;
electrodesHeigth = 0.003;
electrodesPermeability = 6*(10^-10);

%------------------------------ Pipes data -------------------------------%

pipeRoughness = 0.0015*10^-3;

trunksShapeType = "Cylindrical";
trunksLength = 3;
trunksDiameter = 75*10^-3;

branchesShapeType = "Cylindrical";
branchesLength = 3;
branchesDiameter = 15*10^-3;

manifoldsShapeType = "Cylindrical";
manifoldsLength = 7*10^-3;
manifoldsDiameter = 40*10^-3;

channelsShapeType = "Rectangular";
channelsLength = 1;
channelsWidth = 6.0*10^-3;
channelsHeigth = 2.0*10^-3;

heigthBetweenTrunkAndTankSurface = 0.8;

%---------------------------- Derivations data ---------------------------%

bendsResistanceCoeficient = 0.2;
tJunctionsDirectResistanceCoeficient = 0.2;
tJunctionsBranchResistanceCoeficient = 0.9;

%------------------------------ Tanks data -------------------------------%

positiveTankVolume = 500;
negativeTankVolume = 500;

%------------------------------ Other data -------------------------------%

k = 8.314;
f = 96485;
z = 1;
g = 9.8;
temperature = 25 + 273;
reNumbersLimits = [0, 2000, 4000];
