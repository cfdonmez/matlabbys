% bu k�s�m genetik algoritma y�ntemiyle minimum de�eri buluyor
% population size = 20
% iterasyon = 50 olarak ayarland�
function [x,fval,exitflag,output,population,score] = gaAlgo(nvars,lb,ub,PopulationSize_Data)


options = optimoptions('ga');


options = optimoptions(options,'PopulationSize', 20);
options = optimoptions(options,'MaxStallGenerations',25,'MaxGenerations',50)
options = optimoptions(options,'Display', 'iter');
options = optimoptions(options,'PlotFcn', { @gaplotbestf });
[x,fval,exitflag,output,population,score] = ...
ga(@hatice,nvars,[],[],[],[],lb,ub,[],[],options);

