%Planificador de trayectorias:
%Recibe una cantidad determinada de puntos (t,x), realiza una aproximacion polinomica de 
%grado N, y retorna el resultado de la aproximacion.

function  [xp,xv,xa] = pathPlanner(t,x,N,tsim)

	coef_p = polyfit(t,x,N);
	coef_v = polyder(coef_p);
	coef_a = polyder(coef_v);

	xp = polyval(coef_p,tsim)';
	xv = polyval(coef_v,tsim)';
	xa = polyval(coef_a,tsim)';
