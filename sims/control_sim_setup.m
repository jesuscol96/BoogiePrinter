%Modelo del motor empleado

close all;
clear;
%Parametros de la simulacion
ts = 0.0001;
tmax = 3;
t = [0:ts:tmax];
N = length(t);

%Parametros del motor
Jm = 3.2*10^-6;
Lm = 0.01;	%H
Bm = 1.34*10^-4;
Rm = 10.86;
Km = 0.036;
Im_max = 2;

%Parametros PWM
f_pwm=3000; %freq in Hz
Vin_pwm=24;
Vout_pwm = 24;

%Controlador de velocidad
Kpv = 0.157;
Kiv = 7.85;
Kdv = 0;

%Controlador de posicion
Kpp = 7.85;
Kip = 0;
Kdp = 0.157;

%Articulacion Q1
F_load = 0; %N

%Parametros articulacion
Jeq = Jm;
Beq = Bm;
Kt=0.0001;

%Trayectorias
t_ref = [0:0.6:6];
N_deg = 5;


%Trayectorias
t_ref = [0:0.2:2];
N_deg = 5;

%Articulacion Q1
q1_ref = [0,20,15,30,50,40,45,60,70,100,120];
[q1p,q1v,q1a] = pathPlanner(t_ref,q1_ref,N_deg,t);
F_load_q1 = 0; %N
Kt_q1 = 10; %Relacion fuerza lineal / torque de actuador 
Kv_q1 = 0.5; %Relacion Velocidad de la articulacion / velocidad angular del actuador
