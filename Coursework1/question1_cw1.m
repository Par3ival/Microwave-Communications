clear

%\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|
%For Running at Design Frequency |
%\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|
l1=1.2;%Rads
l2=pi/2;%Rads
z0=40;
zs=75;
zl=40-1j*45;

%Obtain Useful Impedances
ZinL=z0*((zl+1j*z0*tan(l1))/(z0+1j*zl*tan(l1))); %Equation to get zin for the load and TL to the Load
Zoc=(-1)*(1j*zs*cot(l2));

%Parallel Impedances

Zinput=(zs*Zoc)/(zs+Zoc);

%Reflection Coefficient
RefL=abs((ZinL-Zinput)/(Zinput+ZinL));%Reflect Coefficient at the Load
%Ref=abs((ZinL-Zinput)/(Zinput+ZinL));
RefA=abs(RefL*exp((-2)*(1j)*l1)); %Reflection coefficient at point A

%\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|
%For Running at 1.1x Design Frequency |
%\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|

%Rads - Electrical lengths L1 and L2 adjusted
l3=l1*1.1;
l4=l2*1.1;


%Obtain Useful Impedances
ZinL2=z0*((zl+1j*z0*tan(l3))/(z0+1j*zl*tan(l3))); %Equation to get zin for the load and TL to the Load
Zoc2=(-1)*(1j*zs*cot(l4));

%Parallel Impedances

Zinput2=(zs*Zoc2)/(zs+Zoc2);

%Reflection Coefficient
RefL2=abs((ZinL2-Zinput2)/(Zinput2+ZinL2));%Reflect Coefficient at the Load
%Ref=abs((ZinL-Zinput)/(Zinput+ZinL));
RefA2=abs(RefL2*exp((-2)*(1j)*l3)); %Reflection coefficient at point A
