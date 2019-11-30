xarray = [0,1,3,4,6];
yarray = [0,2,3,10,5];
zarray = [0,4,5,20,7];
ts = 0.01;
tfinal = 10;
t = 0:ts:tfinal;
tpoints = [0,3, 5,7.1,tfinal];
[pathx,pathy,pathz,tout] = Pathcalc2(xarray,yarray,zarray,t,tpoints);
figure()
suptitle('Trayectorias en cada eje de la punta de la impresora')
subplot(2,2,1)
plot(tout,pathx(:,1));
title('Trayectoria en el eje X')
xlabel('Tiempo(s)')
ylabel('Distancia(mm)')
subplot(2,2,2)
plot(tout,pathy(:,1));
title('Trayectoria en el eje Y')
xlabel('Tiempo(s)')
ylabel('Distancia(mm)')
subplot(2,2,3)
plot(tout,pathz(:,1));
title('Trayectoria en el eje Z')
xlabel('Tiempo(s)')
ylabel('Distancia(mm)')

