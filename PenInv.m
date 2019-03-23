function [ dydt ] = PenInv( t,y )
%Función para Definir una Ecuación Diferencial (ODE)
%   Resolver ODEs con las condiciones iniciales. Obtenga la solución 
%   sin ayuda de sofware  y después compare resultados con MATLAB

%Definición de Constantes
M=1;
l=5;
m=1;
J=0.5;
g=9.8;
u=1;

%Ecuación Difrencial
%x1 -> y(1)
%x2 -> y(2)
%x3 -> y(3)
%x4 -> y(4)
T=y(2);
Tp=y(4);
%Espacios de Estados
dydt = zeros(4,1); 
dydt(1) = y(3);
dydt(2) = y(4);
dydt(3) = (- sin(T)*Tp^2*l^3*m^2 - J*sin(T)*Tp^2*l*m + g*cos(T)*sin(T)*l^2*m^2 + u*l^2*m + J*u)/(J*m + J*M + l^2*m^2 - l^2*m^2*cos(T)^2 + M*l^2*m);
dydt(4) = (l*m*(- l*m*cos(T)*sin(T)*Tp^2 + u*cos(T) + M*g*sin(T) + g*m*sin(T)))/(J*m + J*M + l^2*m^2 - l^2*m^2*cos(T)^2 + M*l^2*m);
end
