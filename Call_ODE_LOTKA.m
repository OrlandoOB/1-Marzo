function [ t,y ] = Call_ODE_LOTKA( )
%Función para Resolver una Ecuación Difrencial (ODE)
%previamente definida
%   Se definen el dominio del tiempo en el cual se trabajará (tspan)
%   Se define las condiciones iniciales para un tiempo cero t=0,y=N [y(0)=N] 
%   Se definen las salidas de los diferenciales para resolverlas según los
%   algoritmos "ode45, ode15s, ode23, ode113"
    
tspan = [0 50];

y0 = [100 8];

[t, y ]= ode23(@ODE_LOTKA,tspan,y0);

plot(t,y)
grid

%legend('(dx/dt = a*x-b*x*y) (dy/dt = c*x*y-d*y)');
%title('Ecuación Lotka-Volterra');
%xlabel('Eje t');
%ylabel('Eje y');

subplot(1,2,1) 
plot(t,y) 
title('Time history')  
subplot(1,2,2) 
plot(y(:,1),y(:,2)) 
title('Phase plane plot')
end
