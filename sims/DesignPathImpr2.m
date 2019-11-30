function [pathf] = DesignPathImpr2(ti,tf,qi,qf,vi,vf,ttot)
    %pathplaning example 
    syms a b c d t  ;%creates the symbolics variables 
    q = symfun(a*t^3 + b*t^2 + c*t + d, t);%creates the symbolic functions 
    qp = symfun(3*a*t^2 + 2*b*t + c,t);
    [s1, s2 ,s3, s4]= solve([q(ti)==qi, q(tf)==qf, qp(ti)==vi, qp(tf)==vf],[a,b,c,d]);%solves the equations

    coef = [s1 s2 s3 s4];%creates the coefitients as functions of qi qf and tf
    tarr = symfun([t^3 t^2 t 1], t); %creates the time polynomy
    path = symfun(coef*tarr',t);%Creates the path
    ts = ttot(2)-ttot(1);
    teval = ti:ts:tf;
    patheval = eval(subs(path,teval));%Evaluates the function in the time interval
    %figure()
    % plot(teval,patheval);%plots the path vs time
    %returning the values
    pathf = patheval; 
    

%This function was made for the calculation of a cubic-polynomic path for a
%given robot. It considers the initial conditions of the joints angle