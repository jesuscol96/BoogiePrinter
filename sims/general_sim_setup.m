%Modelo del motor empleado

%Parametros de la simulacion
ts = 0.0001;
tmax = 2;
t = [0:ts:tmax];
N = length(t);

%Parametros del motor
Jm = 3.2*10^-6;
Lm = 0.01;	%H
Bm = 1.34*10^-4;
Rm = 10.9;
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

%Constantes de conversion
Kt_q1 = 10; %Relacion fuerza lineal / torque de actuador 
Kt_q2 = 10; 
Kt_q3 = 10; 
Kv_q1 = 0.6; %Relacion Velocidad de la articulacion / velocidad angular del actuador (cm/rad)
Kv_q2 = 0.6;
Kv_q3 = 0.6;

%Espacio de trabajo
Width = 22; %cm
Thick = 22; %cm
Height = 20; %cm

%Trayectoria 3D
traj = [ %x,y,z (cm) cada fila
10+5*cos((pi/180)*0) 10+5*sin((pi/180)*0) 0;
10+5*cos((pi/180)*36) 10+5*sin((pi/180)*36) 1;
10+5*cos((pi/180)*72) 10+5*sin((pi/180)*72) 2;
10+5*cos((pi/180)*108) 10+5*sin((pi/180)*108) 3;
10+5*cos((pi/180)*144) 10+5*sin((pi/180)*144) 4;
10+5*cos((pi/180)*180) 10+5*sin((pi/180)*180) 5;
10+5*cos((pi/180)*216) 10+5*sin((pi/180)*216) 6;
10+5*cos((pi/180)*252) 10+5*sin((pi/180)*252) 7;
10+5*cos((pi/180)*288) 10+5*sin((pi/180)*288) 8,
10+5*cos((pi/180)*324) 10+5*sin((pi/180)*324) 9;
10+5*cos((pi/180)*360) 10+5*sin((pi/180)*360) 10;
];
T = [0 1/Kv_q1 0; -1/Kv_q2 0 0;0 0 -1/Kv_q3];
q = T * traj';

%Trayectorias
t_ref = [0:0.2:2];
N_deg = 7;

%Articulacion Q1
q1_ref = q(2,:) + Width;%q(1,:);
[q1p,q1v,q1a] = pathPlanner(t_ref,q1_ref,N_deg,t);
F_load_q1 = 0; %N

%Articulacion Q2
q2_ref = q(2,:) + Width/Kv_q2;
[q2p,q2v,q2a] = pathPlanner(t_ref,q2_ref,N_deg,t);
F_load_q2 = 0; %N

%Articulacion Q3
q3_ref =  q(3,:) +Height/Kv_q3;
[q3p,q3v,q3a] = pathPlanner(t_ref,q3_ref,N_deg,t);
F_load_q3 = 0; %N



%Parametros articulacion
Ma = 1; %kg
Ba = 6*10^-2;
Jeq = Jm;
Beq = Bm;



