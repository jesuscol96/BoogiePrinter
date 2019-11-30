function [pathx,pathy,pathz,tout] = Pathcalc2(xarray,yarray,zarray,tin,tpoints)
    xlength = length(xarray);
    ylength = length(yarray);
    zlength = length(zarray);
    tpointlength = length(tpoints);
    pathxint = zeros(tpointlength,xlength);
    pathyint = zeros(tpointlength,ylength);
    pathzint = zeros(tpointlength,zlength);
    pathx = zeros(length(tin));
    pathy = zeros(length(tin));
    pathz = zeros(length(tin));
    pathx(1) = xarray(1);
    pathy(1) = yarray(1);
    pathz(1) = zarray(1);
    ts = tin(2) - tin(1);
    tpointcon = [0 tpoints];
    for i = 1:tpointlength-1 
        pathxint(1:round(((tpoints(i+1)-tpoints(i))/ts))+1,i) = DesignPathImpr2(tpoints(i),tpoints(i+1),xarray(i),xarray(i+1),0,0,tin);
        pathyint(1:round(((tpoints(i+1)-tpoints(i))/ts))+1,i) = DesignPathImpr2(tpoints(i),tpoints(i+1),yarray(i),yarray(i+1),0,0,tin);
        pathzint(1:round(((tpoints(i+1)-tpoints(i))/ts))+1,i) = DesignPathImpr2(tpoints(i),tpoints(i+1),zarray(i),zarray(i+1),0,0,tin);
    end
    % ts = tin(2) - tin(1)
    for i = 1:tpointlength-1
        % ((tpointcon(i+1)-tpointcon(i))/ts)+2
        % ((tpoints(i+1))/ts)+1
        % ((tpoints(i+1))/ts)+1
        pathx(round((tpointcon(i+1)/ts))+2:round((tpoints(i+1)/ts))+1) = pathxint(2:round(((tpoints(i+1)-tpoints(i))/ts))+1,i)';
        pathy(round((tpointcon(i+1)/ts))+2:round((tpoints(i+1)/ts))+1) = pathyint(2:round(((tpoints(i+1)-tpoints(i))/ts))+1,i)';
        pathz(round((tpointcon(i+1)/ts))+2:round((tpoints(i+1)/ts))+1) = pathzint(2:round(((tpoints(i+1)-tpoints(i))/ts))+1,i)';
    end
    tout = tin;