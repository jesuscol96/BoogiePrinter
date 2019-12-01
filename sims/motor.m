%Modelo del motor empleado

%Parametros de la simulacion
ts = 0.01;
tmax = 4;
t = [0:ts:tmax];
N = length(t);

%Parametros del motor
Jm = 2*10^-3;
Lm = 0.1;
Bm = 4*10^-3;
Rm = 2;
Km = 0.01;

%Parametros PWM
f_pwm=100; %freq in Hz
Vin_pwm=1;
Vout_pwm = 5;

%Parametros articulacion
Ma = 1; %kg
Ba = 6*10^-2;
F_load = 0; %N
Kt = 2; %Relacion fuerza lineal / torque de actuador 
Kv = 1; %Relacion Velocidad de la articulacion / velocidad angular del actuador
Jeq = Jm;
Beq = Bm;



%Funcion de transferencia del motor
G_motor_num = Km;
G_motor_den = [Jm*Lm (Bm*Lm + Rm*Jm) (Rm*Bm+Km)];

