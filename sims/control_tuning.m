%Modelo del motor empleado

clear;
close all;

%Parametros de la simulacion
ts = 0.00001;
tmax = 2;
t = [0:ts:tmax];
N = length(t);

%Parametros del motor
Jm = 3.125^-7;	
Lm = 1*10^-3;	%H
Bm = 1.5*10^-4;
Rm = 5.2;
Km = 0.035;

%Tranfer Function
s = tf('s');

%Funcion de transferencia del motor
G_motor_num = Km;
G_motor_den = [Jm*Lm (Bm*Lm + Rm*Jm) (Rm*Bm+Km^2)];
Gm = tf(G_motor_num,G_motor_den);

%Controlador de velocidad
Kpv = 18;
Kiv = 180;
Kdv = 0.4;
Gcv = Kpv + Kiv/s + Kdv*s;

%Controlador de posicion
Kpp = 21.2;
Kip = 0;
Kdp = 2.12;
Gcp = Kpp + Kip/s + Kdp*s;

%Lazo abierto
Gav = Gcv*Gm; %velocidad
Gap = (Gcp*Gm)/s; %posicion

%Lazo cerrado
Gsv = Gav / (1+ Gav);
Gsp = Gap / (1+ Gap);

%LGR
Kmax = 15;
Krlocus = [0:0.0001:10];
figure();
rlocus(Gap,Krlocus);

%Step
x = step(Gsp,t);
figure()
plot(t,x);


