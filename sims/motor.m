%Modelo del motor empleado

%Parametros de la simulacion
ts = 0.0001;
tmax = 3;
t = [0:ts:tmax];
N = length(t);

%Parametros del motor
Jm = 3.125^-7;	
Lm = 1*10^-3;	%H
Bm = 1.5*10^-4;
Rm = 5.2;
Km = 0.035;
Im_max = 2;

%Parametros PWM
f_pwm=3000; %freq in Hz
Vin_pwm=24;
Vout_pwm = 24;

%Controlador de velocidad
Kpv = 18;
Kiv = 180;
Kdv = 0.4;

%Controlador de posicion
Kpp = 21.2;
Kip = 0;
Kdp = 2.12;

%Trayectorias
t_ref = [0,1,2,3,4,5,6] ./ 2;
N_deg = 5;

%Articulacion Q1
q1_ref = [0,20,45,70,60,80,100];
[q1p,q1v,q1a] = pathPlanner(t_ref,q1_ref,N_deg,t);
F_load_q1 = 0; %N
Kt_q1 = 10; %Relacion fuerza lineal / torque de actuador 
Kv_q1 = 0.005; %Relacion Velocidad de la articulacion / velocidad angular del actuador

%Articulacion Q2
q2_ref = [0,5,8,13,10,15,18];
[q2p,q2v,q2a] = pathPlanner(t_ref,q2_ref,N_deg,t);
F_load_q2 = 0; %N
Kt_q2 = 10; 
Kv_q2 = 0.005;

%Articulacion Q3
q3_ref = [0,5,8,13,10,15,18];
[q3p,q3v,q3a] = pathPlanner(t_ref,q3_ref,N_deg,t);
F_load_q3 = 0; %N
Kt_q3 = 10; 
Kv_q3 = 0.005;


%Parametros articulacion
Ma = 1; %kg
Ba = 6*10^-2;
Jeq = Jm;
Beq = Bm;




