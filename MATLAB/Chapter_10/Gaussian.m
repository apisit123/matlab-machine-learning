%% Gaussian Demo
% Demonstrate an oscillator. 
%% See also
% RungeKutta, RHSOscillator, TimeLabel

%% Copyright
% Copyright (c) 2016 Princeton Satellite Systems, Inc. 
% All rights reserved.

%% Initialize
mu            = 2;           % Mean
sigma         = [1 2 3 4]; % Standard deviation
n             = length(sigma);
x             = linspace(-7,10);

%% Simulation
xPlot = zeros(n,length(x));
s     = cell(1,n);

for k = 1:length(sigma)
  s{k}       = sprintf('Sigma = %3.1f',sigma(k));
  f          = -(x-mu).^2/(2*sigma(k)^2);
  xPlot(k,:) = exp(f)/sqrt(2*pi*sigma(k)^2);
end

%% Plot the results
h = figure;
set(h,'Name','Gaussian');
plot(x,xPlot)
grid
xlabel('x');
ylabel('Gaussian');
grid on
legend(s)
