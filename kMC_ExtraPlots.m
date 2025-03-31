clear;
clc;
load fractions.mat 
load normalized.mat
contourf(Normalized.Values{29, 1}(:, 2:2:10))
xlabel('Temperature (K)','FontSize',12,'FontWeight','bold');
ylabel('time (s)','FontSize',12,'FontWeight','bold');
xticklabels({'300','','325','','350','','375','','400'})
title('Normalized Nominal Powder Porosity')
colorbar
for i = 1:length(fco.Values) 
    fco.Values{i,1}(:,1:2:9) = [];
end
for i = 1:length(fco.Values) 
    fco.Values{i,1}(1,:) = [];
end
for i = 1:length(fco.Values) 
    figure
    contourf(fco.Values{i,1});
    xlabel('Temperature (K)','FontSize',12,'FontWeight','bold');
    ylabel('time (s)','FontSize',12,'FontWeight','bold');
    xticklabels({'300','','325','','350','','375','','400'})
    colorbar
end
%