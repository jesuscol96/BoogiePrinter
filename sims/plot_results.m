%Plot results

close all;
%Cinematica articulacion 1
figure();
subplot(3,1,1)
plot(t,q1_p);
title('Respuesta posicion Q1');
xlabel('Tiempo (s)');
ylabel('Posición (cm)');
subplot(3,1,2)
plot(t,q1_v);
title('Respuesta velocidad Q1');
xlabel('Tiempo (s)');
ylabel('Aceleracion (cm)');
subplot(3,1,3)
plot(t,q1_a);
title('Respuesta aceleracion Q1');
xlabel('Tiempo (s)');
ylabel('Aceleracion (cm/s2)');

%Cinematica motor 1
figure();
subplot(3,1,1)
plot(t,q1p);
hold on
plot(t,motor_posicion_q1);
legend('Demanda','Respuesta');
title('Respuesta posicion motor 1');
xlabel('Tiempo (s)');
ylabel('Posición (rad)');
subplot(3,1,2)
plot(t,q1v);
hold on
plot(t,Wm_q1);
legend('Demanda','Respuesta');
title('Respuesta velocidad motor 1');
xlabel('Tiempo (s)');
ylabel('Velocidad (rad/s)');
subplot(3,1,3)
plot(t,q1a);
hold on
plot(t,motor_aceleracion_q1);
legend('Demanda','Respuesta');
title('Respuesta aceleracion motor 1');
xlabel('Tiempo (s)');
ylabel('Aceleracion (rad/s2)');

%Señal de control y PWM del motor 1
figure()
subplot(2,1,1);
plot(t,Vcontrol_q1);
title('Senal de control motor 1');
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');
subplot(2,1,2);
plot(t,Vpwm_q1);
title('Senal de control motor 1 (PWM)');
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');

%Corriente, torque y potencia del motor 1
figure()
subplot(3,1,1);
plot(t,torque_q1);
title('Torque motor 1');
xlabel('Tiempo (s)');
ylabel('Torque (N.m)');
subplot(3,1,2);
plot(t,Im_q1);
title('Corriente motor 1');
xlabel('Tiempo (s)');
ylabel('Corriente (A)');
subplot(3,1,3);
plot(t,Vcontrol_q1.*Im_q1);
title('Potencia motor 1');
xlabel('Tiempo (s)');
ylabel('Potencia (W)');


%Cinematica articulacion 2
figure();
subplot(3,1,1)
plot(t,q2_p);
title('Respuesta posicion Q2');
xlabel('Tiempo (s)');
ylabel('Posición (cm)');
subplot(3,1,2)
plot(t,q2_v);
title('Respuesta velocidad Q2');
xlabel('Tiempo (s)');
ylabel('Aceleracion (cm)');
subplot(3,1,3)
plot(t,q2_a);
title('Respuesta aceleracion Q2');
xlabel('Tiempo (s)');
ylabel('Aceleracion (cm/s2)');

%Cinematica motor 2
figure();
subplot(3,1,1)
plot(t,q2p);
hold on
plot(t,motor_posicion_q2);
legend('Demanda','Respuesta');
title('Respuesta posicion motor 2');
xlabel('Tiempo (s)');
ylabel('Posición (rad)');
subplot(3,1,2)
plot(t,q2v);
hold on
plot(t,Wm_q2);
legend('Demanda','Respuesta');
title('Respuesta velocidad motor 2');
xlabel('Tiempo (s)');
ylabel('Velocidad (rad/s)');
subplot(3,1,3)
plot(t,q2a);
hold on
plot(t,motor_aceleracion_q2);
legend('Demanda','Respuesta');
title('Respuesta aceleracion motor 2');
xlabel('Tiempo (s)');
ylabel('Aceleracion (rad/s2)');

%Señal de control y PWM del motor 2
figure()
subplot(2,1,1);
plot(t,Vcontrol_q2);
title('Senal de control motor 2');
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');
subplot(2,1,2);
plot(t,Vpwm_q2);
title('Senal de control motor 2 (PWM)');
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');

%Corriente, torque y potencia del motor 2
figure()
subplot(3,1,1);
plot(t,torque_q2);
title('Torque motor 2');
xlabel('Tiempo (s)');
ylabel('Torque (N.m)');
subplot(3,1,2);
plot(t,Im_q2);
title('Corriente motor 2');
xlabel('Tiempo (s)');
ylabel('Corriente (A)');
subplot(3,1,3);
plot(t,Vcontrol_q2.*Im_q2);
title('Potencia motor 2');
xlabel('Tiempo (s)');
ylabel('Potencia (W)');

%Cinematica articulacion 3
figure();
subplot(3,1,1)
plot(t,q3_p);
title('Respuesta posicion Q3');
xlabel('Tiempo (s)');
ylabel('Posición (cm)');
subplot(3,1,2)
plot(t,q3_v);
title('Respuesta velocidad Q3');
xlabel('Tiempo (s)');
ylabel('Aceleracion (cm)');
subplot(3,1,3)
plot(t,q3_a);
title('Respuesta aceleracion Q3');
xlabel('Tiempo (s)');
ylabel('Aceleracion (cm/s2)');

%Cinematica motor 3
figure();
subplot(3,1,1)
plot(t,q3p);
hold on
plot(t,motor_posicion_q3);
legend('Demanda','Respuesta');
title('Respuesta posicion motor 3');
xlabel('Tiempo (s)');
ylabel('Posición (rad)');
subplot(3,1,2)
plot(t,q3v);
hold on
plot(t,Wm_q3);
legend('Demanda','Respuesta');
title('Respuesta velocidad motor 3');
xlabel('Tiempo (s)');
ylabel('Velocidad (rad/s)');
subplot(3,1,3)
plot(t,q3a);
hold on
plot(t,motor_aceleracion_q3);
legend('Demanda','Respuesta');
title('Respuesta aceleracion motor 3');
xlabel('Tiempo (s)');
ylabel('Aceleracion (rad/s2)');

%Señal de control y PWM del motor 3
figure()
subplot(2,1,1);
plot(t,Vcontrol_q3);
title('Senal de control motor 3');
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');
subplot(2,1,2);
plot(t,Vpwm_q3);
title('Senal de control motor 3 (PWM)');
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');

%Corriente, torque y potencia del motor 2
figure()
subplot(3,1,1);
plot(t,torque_q3);
title('Torque motor 3');
xlabel('Tiempo (s)');
ylabel('Torque (N.m)');
subplot(3,1,2);
plot(t,Im_q3);
title('Corriente motor 3');
xlabel('Tiempo (s)');
ylabel('Corriente (A)');
subplot(3,1,3);
plot(t,Vcontrol_q3.*Im_q3);
title('Potencia motor 3');
xlabel('Tiempo (s)');
ylabel('Potencia (W)');


%Movimientos de las articulaciones
figure();
subplot(3,1,1)
plot(t,q1_p);
hold on;
plot(t,q2_p);
hold on;
plot(t,q3_p);
legend('Q1','Q2','Q3');
title('Respuesta posicion');
xlabel('Tiempo (s)');
ylabel('Posicion (cm)');
subplot(3,1,2)
plot(t,q1_v);
hold on;
plot(t,q2_v);
hold on;
plot(t,q3_v);
legend('Q1','Q2','Q3');
title('Respuesta velocidad');
xlabel('Tiempo (s)');
ylabel('Velocidad (cm/s)');
subplot(3,1,3)
plot(t,q1_a);
hold on;
plot(t,q2_a);
hold on;
plot(t,q3_a);
legend('Q1','Q2','Q3');
title('Respuesta aceleracion');
xlabel('Tiempo (s)');
ylabel('Aceleracion (cm/s2)');
