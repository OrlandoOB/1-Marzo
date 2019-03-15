function [ dtdy ] = ODE_LOTKA( t,y )
%Función para Definir una Ecuación Diferencial (ODE)
%   Resolver ODEs con las condiciones iniciales. Obtenga la solución 
%   sin ayuda de sofware  y después compare resultados con MATLAB

%Definición de Constantes
a = 0.4;
b = 0.4;
c = 2;
d = 0.09;

%Ecuación Difrencial
%(dx/dt = a*x -b*x*y) (dy/dt = c*x*y-d*y)
dtdy = diag([a*y - b*y*y(2), c*y*y(1)- d*y]);
end
