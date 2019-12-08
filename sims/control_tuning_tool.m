%Modelo del motor empleado

clear;
close all;

%Parametros de la simulacion
ts = 0.0001;
tmax = 0.3;
t = [0:ts:tmax];
N = length(t);

%Parametros del motor
Jm = 3.2*10^-6;
Lm = 0.01;	%H
Bm = 1.34*10^-4;
Rm = 10.9;
Km = 0.036;

%Tranfer Function
s = tf('s');

%Funcion de transferencia del motor
G_motor_num = Km;
G_motor_den = [Jm*Lm (Bm*Lm + Rm*Jm) (Rm*Bm+Km^2)];
Gm = tf(G_motor_num,G_motor_den);

%Controlador de velocidad
Kpv = 0.157;
Kiv = 7.85;
Kdv = 0;
Gcv = Kpv + Kiv/s + Kdv*s;

%Controlador de posicion
Kpp = 7.85;
Kip = 0;
Kdp = 0.157;
Gcp = Kpp + Kip/s + Kdp*s;


%Lazo abierto
Gav = Gcv*Gm; %velocidad
Gap = (Gcp*Gm)/s; %posicion

%Lazo cerrado
Gsv = Gav / (1+ Gav);
Gsp = Gap / (1+ Gap);


%Motor step
figure();
step(Gm,t);
title('Respuesta del motor para un escalon de un 1 voltio')
ylabel('Velocidad angular (rad/s)');
xlabel('Tiempo');
grid()

%{
%Step
x = step(100*Gsv,t);
figure()
plot(t,x);
title('Respuesta al escalon del motor controlado en velocidad')
ylabel('Velocidad angular (rad/s)');
xlabel('Tiempo');
grid()


%Step
x = step(100*Gsp,t);
figure()
plot(t,x);
title('Respuesta al escalon del motor controlado en posicion')
ylabel('Posicion (rad)');
xlabel('Tiempo (s)');
grid()


%LGR
Kmax = 15;
Krlocus = [0:0.001:10];
figure();
rlocus(Gap);

%}

