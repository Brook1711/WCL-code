lamda = 3e8/28e9;
PL_1m = -20*log10(4*pi/lamda);
distance = 0:0.1:50;
PL = zeros(length(distance));
PL = PL_1m - 10 * 3.5*log10(distance)
plot(distance, PL);