function [ t,y ] = callPenInv( )
%Función para Resolver una Ecuación Difrencial (ODE)
%previamente definida
%   Se definen el dominio del tiempo en el cual se trabajará (tspan)
%   Se define las condiciones iniciales para un tiempo cero t=0,y=N [y(0)=N] 
%   Se definen las salidas de los diferenciales para resolverlas según los
%   algoritmos "ode45, ode15s, ode23, ode113"

%Tiempo de 0n a 100
tspan = [0 100];

%Condiciones iniciales
%[x(1) x(2) x(3) x(4)]
y0 = [0 0 0 0];

[t, y ]= ode15s(@PenInv,tspan,y0);

%Posición VS Tiempo
plot(t,y(:,1))
grid

%Posición Angular VS Tiempo
figure
plot(t,y(:,2))
grid

%Velocidad VS Tiempo
figure
plot(t,y(:,3))
grid

%Velocidad Angular VS Tiempo
figure
plot(t,y(:,4))
grid

end
