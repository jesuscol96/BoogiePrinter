%Plot control
close all;
%Cinematica motor 1
figure();
plot(t,motor_posicion);
title('Respuesta posicion');
xlabel('Tiempo (s)');
ylabel('Posicion (rad)');
grid();
figure();
plot(t,Wm);
title('Respuesta velocidad');
xlabel('Tiempo (s)');
ylabel('Velocidad (rad/s)');
grid();

%Señal de control y PWM del motor 1
figure()
subplot(2,1,1);
plot(t,Vcontrol);
title('Senal de control');
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');
grid();
subplot(2,1,2);
plot(t,Vpwm);
title('Senal de control (PWM)');
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');
grid();
%Corriente, torque y potencia del motor 1
figure()
subplot(3,1,1);
plot(t,torque);
grid();
title('Torque');
xlabel('Tiempo (s)');
ylabel('Torque (N.m)');
subplot(3,1,2);
plot(t,Im);
grid();
title('Corriente');
xlabel('Tiempo (s)');
ylabel('Corriente (A)');
subplot(3,1,3);
plot(t,Vcontrol.*Im);
grid();
title('Potencia');
xlabel('Tiempo (s)');
ylabel('Potencia (W)');
