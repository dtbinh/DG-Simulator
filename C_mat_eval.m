function C = C_mat_eval(e,w,x,v, m,J)
phiSYM=e(1);
thetaSYM=e(2);
psiSYM=e(3);
phidotSYM=w(1);
thetadotSYM=w(2);
psidotSYM=w(3);
xSYM=x(1);
ySYM=x(2);
zSYM=x(3);
xdotSYM=v(1);
ydotSYM=v(2);
zdotSYM=v(3);
mass=m;
J11=J(1,1);
J12=J(1,2);
J13=J(1,3);
J22=J(2,2);
J23=J(2,3);
J33=J(3,3);

C=[0 0 0 0 0 0
    0 0 0 0 0 0
    0 0 0 0 0 0
    0 0 0 0 thetadotSYM*((cos(phiSYM)*(J23*cos(phiSYM)+J22*sin(phiSYM)))/2+(cos(phiSYM)*(J23*cos(phiSYM)-J33*sin(phiSYM)))/2+(sin(phiSYM)*(J22*cos(phiSYM)-J23*sin(phiSYM)))/2-(sin(phiSYM)*(J33*cos(phiSYM)+J23*sin(phiSYM)))/2)-psidotSYM*((cos(phiSYM)*(J22*cos(phiSYM)*cos(thetaSYM)-J23*cos(thetaSYM)*sin(phiSYM)))/2-(sin(phiSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J33*cos(thetaSYM)*sin(phiSYM)))/2+(J11*cos(thetaSYM))/2-(cos(phiSYM)*(J33*cos(phiSYM)*cos(thetaSYM)-J13*sin(thetaSYM)+J23*cos(thetaSYM)*sin(phiSYM)))/2-(sin(phiSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J12*sin(thetaSYM)+J22*cos(thetaSYM)*sin(phiSYM)))/2+(J13*cos(phiSYM)*sin(thetaSYM))/2+(J12*sin(phiSYM)*sin(thetaSYM))/2) -thetadotSYM*((J11*cos(thetaSYM))/2+(sin(thetaSYM)*(J13*cos(phiSYM)+J12*sin(phiSYM)))/2+(J13*cos(phiSYM)*sin(thetaSYM))/2+(J12*sin(phiSYM)*sin(thetaSYM))/2+(cos(phiSYM)*cos(thetaSYM)*(J22*cos(phiSYM)-J23*sin(phiSYM)))/2-(cos(phiSYM)*cos(thetaSYM)*(J33*cos(phiSYM)+J23*sin(phiSYM)))/2-(cos(thetaSYM)*sin(phiSYM)*(J23*cos(phiSYM)+J22*sin(phiSYM)))/2-(cos(thetaSYM)*sin(phiSYM)*(J23*cos(phiSYM)-J33*sin(phiSYM)))/2)-psidotSYM*((cos(phiSYM)*cos(thetaSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J33*cos(thetaSYM)*sin(phiSYM)))/2-(sin(thetaSYM)*(J12*cos(phiSYM)*cos(thetaSYM)-J13*cos(thetaSYM)*sin(phiSYM)))/2+(cos(thetaSYM)*sin(phiSYM)*(J22*cos(phiSYM)*cos(thetaSYM)-J23*cos(thetaSYM)*sin(phiSYM)))/2+(cos(phiSYM)*cos(thetaSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J12*sin(thetaSYM)+J22*cos(thetaSYM)*sin(phiSYM)))/2-(cos(thetaSYM)*sin(phiSYM)*(J33*cos(phiSYM)*cos(thetaSYM)-J13*sin(thetaSYM)+J23*cos(thetaSYM)*sin(phiSYM)))/2)
    0 0 0 psidotSYM*((J11*cos(thetaSYM))/2+(sin(thetaSYM)*(J13*cos(phiSYM)+J12*sin(phiSYM)))/2+(J13*cos(phiSYM)*sin(thetaSYM))/2+(J12*sin(phiSYM)*sin(thetaSYM))/2+(cos(phiSYM)*cos(thetaSYM)*(J22*cos(phiSYM)-J23*sin(phiSYM)))/2-(cos(phiSYM)*cos(thetaSYM)*(J33*cos(phiSYM)+J23*sin(phiSYM)))/2-(cos(thetaSYM)*sin(phiSYM)*(J23*cos(phiSYM)+J22*sin(phiSYM)))/2-(cos(thetaSYM)*sin(phiSYM)*(J23*cos(phiSYM)-J33*sin(phiSYM)))/2)-phidotSYM*(J13*cos(phiSYM)+J12*sin(phiSYM))-thetadotSYM*((cos(phiSYM)*(J23*cos(phiSYM)+J22*sin(phiSYM)))/2+(cos(phiSYM)*(J23*cos(phiSYM)-J33*sin(phiSYM)))/2+(sin(phiSYM)*(J22*cos(phiSYM)-J23*sin(phiSYM)))/2-(sin(phiSYM)*(J33*cos(phiSYM)+J23*sin(phiSYM)))/2) -phidotSYM*((cos(phiSYM)*(J23*cos(phiSYM)+J22*sin(phiSYM)))/2+(cos(phiSYM)*(J23*cos(phiSYM)-J33*sin(phiSYM)))/2+(sin(phiSYM)*(J22*cos(phiSYM)-J23*sin(phiSYM)))/2-(sin(phiSYM)*(J33*cos(phiSYM)+J23*sin(phiSYM)))/2)-psidotSYM*((cos(thetaSYM)*(J12*cos(phiSYM)-J13*sin(phiSYM)))/2-(cos(phiSYM)*(J12*cos(thetaSYM)+J23*cos(phiSYM)*sin(thetaSYM)+J22*sin(phiSYM)*sin(thetaSYM)))/2+(sin(phiSYM)*(J13*cos(thetaSYM)+J33*cos(phiSYM)*sin(thetaSYM)+J23*sin(phiSYM)*sin(thetaSYM)))/2+(cos(phiSYM)*sin(thetaSYM)*(J23*cos(phiSYM)-J33*sin(phiSYM)))/2+(sin(phiSYM)*sin(thetaSYM)*(J22*cos(phiSYM)-J23*sin(phiSYM)))/2) phidotSYM*((J11*cos(thetaSYM))/2+(sin(thetaSYM)*(J13*cos(phiSYM)+J12*sin(phiSYM)))/2+(J13*cos(phiSYM)*sin(thetaSYM))/2+(J12*sin(phiSYM)*sin(thetaSYM))/2+(cos(phiSYM)*cos(thetaSYM)*(J22*cos(phiSYM)-J23*sin(phiSYM)))/2-(cos(phiSYM)*cos(thetaSYM)*(J33*cos(phiSYM)+J23*sin(phiSYM)))/2-(cos(thetaSYM)*sin(phiSYM)*(J23*cos(phiSYM)+J22*sin(phiSYM)))/2-(cos(thetaSYM)*sin(phiSYM)*(J23*cos(phiSYM)-J33*sin(phiSYM)))/2)+psidotSYM*((cos(thetaSYM)*(J13*cos(phiSYM)*cos(thetaSYM)-J11*sin(thetaSYM)+J12*cos(thetaSYM)*sin(phiSYM)))/2-(sin(thetaSYM)*(J11*cos(thetaSYM)+J13*cos(phiSYM)*sin(thetaSYM)+J12*sin(phiSYM)*sin(thetaSYM)))/2+(cos(phiSYM)*cos(thetaSYM)*(J13*cos(thetaSYM)+J33*cos(phiSYM)*sin(thetaSYM)+J23*sin(phiSYM)*sin(thetaSYM)))/2+(cos(phiSYM)*sin(thetaSYM)*(J33*cos(phiSYM)*cos(thetaSYM)-J13*sin(thetaSYM)+J23*cos(thetaSYM)*sin(phiSYM)))/2+(cos(thetaSYM)*sin(phiSYM)*(J12*cos(thetaSYM)+J23*cos(phiSYM)*sin(thetaSYM)+J22*sin(phiSYM)*sin(thetaSYM)))/2+(sin(phiSYM)*sin(thetaSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J12*sin(thetaSYM)+J22*cos(thetaSYM)*sin(phiSYM)))/2)
    0 0 0 psidotSYM*((cos(phiSYM)*cos(thetaSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J33*cos(thetaSYM)*sin(phiSYM)))/2-(sin(thetaSYM)*(J12*cos(phiSYM)*cos(thetaSYM)-J13*cos(thetaSYM)*sin(phiSYM)))/2+(cos(thetaSYM)*sin(phiSYM)*(J22*cos(phiSYM)*cos(thetaSYM)-J23*cos(thetaSYM)*sin(phiSYM)))/2+(cos(phiSYM)*cos(thetaSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J12*sin(thetaSYM)+J22*cos(thetaSYM)*sin(phiSYM)))/2-(cos(thetaSYM)*sin(phiSYM)*(J33*cos(phiSYM)*cos(thetaSYM)-J13*sin(thetaSYM)+J23*cos(thetaSYM)*sin(phiSYM)))/2)-thetadotSYM*((sin(phiSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J33*cos(thetaSYM)*sin(phiSYM)))/2-(cos(phiSYM)*(J22*cos(phiSYM)*cos(thetaSYM)-J23*cos(thetaSYM)*sin(phiSYM)))/2+(J11*cos(thetaSYM))/2+(cos(phiSYM)*(J33*cos(phiSYM)*cos(thetaSYM)-J13*sin(thetaSYM)+J23*cos(thetaSYM)*sin(phiSYM)))/2+(sin(phiSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J12*sin(thetaSYM)+J22*cos(thetaSYM)*sin(phiSYM)))/2+(J13*cos(phiSYM)*sin(thetaSYM))/2+(J12*sin(phiSYM)*sin(thetaSYM))/2)+phidotSYM*(J12*cos(phiSYM)*cos(thetaSYM)-J13*cos(thetaSYM)*sin(phiSYM)) -phidotSYM*((sin(phiSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J33*cos(thetaSYM)*sin(phiSYM)))/2-(cos(phiSYM)*(J22*cos(phiSYM)*cos(thetaSYM)-J23*cos(thetaSYM)*sin(phiSYM)))/2+(J11*cos(thetaSYM))/2+(cos(phiSYM)*(J33*cos(phiSYM)*cos(thetaSYM)-J13*sin(thetaSYM)+J23*cos(thetaSYM)*sin(phiSYM)))/2+(sin(phiSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J12*sin(thetaSYM)+J22*cos(thetaSYM)*sin(phiSYM)))/2+(J13*cos(phiSYM)*sin(thetaSYM))/2+(J12*sin(phiSYM)*sin(thetaSYM))/2)-thetadotSYM*(cos(phiSYM)*(J12*cos(thetaSYM)+J23*cos(phiSYM)*sin(thetaSYM)+J22*sin(phiSYM)*sin(thetaSYM))-sin(phiSYM)*(J13*cos(thetaSYM)+J33*cos(phiSYM)*sin(thetaSYM)+J23*sin(phiSYM)*sin(thetaSYM)))-psidotSYM*((cos(thetaSYM)*(J13*cos(phiSYM)*cos(thetaSYM)-J11*sin(thetaSYM)+J12*cos(thetaSYM)*sin(phiSYM)))/2-(sin(thetaSYM)*(J11*cos(thetaSYM)+J13*cos(phiSYM)*sin(thetaSYM)+J12*sin(phiSYM)*sin(thetaSYM)))/2+(cos(phiSYM)*cos(thetaSYM)*(J13*cos(thetaSYM)+J33*cos(phiSYM)*sin(thetaSYM)+J23*sin(phiSYM)*sin(thetaSYM)))/2+(cos(phiSYM)*sin(thetaSYM)*(J33*cos(phiSYM)*cos(thetaSYM)-J13*sin(thetaSYM)+J23*cos(thetaSYM)*sin(phiSYM)))/2+(cos(thetaSYM)*sin(phiSYM)*(J12*cos(thetaSYM)+J23*cos(phiSYM)*sin(thetaSYM)+J22*sin(phiSYM)*sin(thetaSYM)))/2+(sin(phiSYM)*sin(thetaSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J12*sin(thetaSYM)+J22*cos(thetaSYM)*sin(phiSYM)))/2) phidotSYM*((cos(phiSYM)*cos(thetaSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J33*cos(thetaSYM)*sin(phiSYM)))/2-(sin(thetaSYM)*(J12*cos(phiSYM)*cos(thetaSYM)-J13*cos(thetaSYM)*sin(phiSYM)))/2+(cos(thetaSYM)*sin(phiSYM)*(J22*cos(phiSYM)*cos(thetaSYM)-J23*cos(thetaSYM)*sin(phiSYM)))/2+(cos(phiSYM)*cos(thetaSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J12*sin(thetaSYM)+J22*cos(thetaSYM)*sin(phiSYM)))/2-(cos(thetaSYM)*sin(phiSYM)*(J33*cos(phiSYM)*cos(thetaSYM)-J13*sin(thetaSYM)+J23*cos(thetaSYM)*sin(phiSYM)))/2)-thetadotSYM*((cos(thetaSYM)*(J13*cos(phiSYM)*cos(thetaSYM)-J11*sin(thetaSYM)+J12*cos(thetaSYM)*sin(phiSYM)))/2-(sin(thetaSYM)*(J11*cos(thetaSYM)+J13*cos(phiSYM)*sin(thetaSYM)+J12*sin(phiSYM)*sin(thetaSYM)))/2+(cos(phiSYM)*cos(thetaSYM)*(J13*cos(thetaSYM)+J33*cos(phiSYM)*sin(thetaSYM)+J23*sin(phiSYM)*sin(thetaSYM)))/2+(cos(phiSYM)*sin(thetaSYM)*(J33*cos(phiSYM)*cos(thetaSYM)-J13*sin(thetaSYM)+J23*cos(thetaSYM)*sin(phiSYM)))/2+(cos(thetaSYM)*sin(phiSYM)*(J12*cos(thetaSYM)+J23*cos(phiSYM)*sin(thetaSYM)+J22*sin(phiSYM)*sin(thetaSYM)))/2+(sin(phiSYM)*sin(thetaSYM)*(J23*cos(phiSYM)*cos(thetaSYM)-J12*sin(thetaSYM)+J22*cos(thetaSYM)*sin(phiSYM)))/2)];


end

