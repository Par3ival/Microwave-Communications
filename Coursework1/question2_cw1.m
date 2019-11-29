clear

f2=2.4e9; %Frequency Provided
Er=10;
E0=1;
c=3e8;

%\/\/\/\/\/\/\/\/\/\/\/\/\|
%Part A - 12cm Thick Wall |
%\/\/\/\/\/\/\/\/\/\/\/\/\|
Th=12e-2;

waved=(c)/(f2*sqrt(Er));
betad=((2*pi)/(waved))*Th;

n0=120*pi;
nr=(n0)/(sqrt(10));

nominus=n0-nr;
noplus=n0+nr;

ejbdm=exp((-1)*1j*betad);
ejbdp=exp(1j*betad);

ratioT=abs((2*1j*sin(betad))/(((noplus/nominus)*ejbdm)-((nominus/noplus)*ejbdp))); %Transmitted Ratio
ratioR=(1-ratioT)*100; %Reflected Ratio

%\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
