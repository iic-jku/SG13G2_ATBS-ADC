clear all;
close all;
clc;

listing = dir ('\fig');
figure(1)
sgtitle("Matlab co-simultion for weyls discrepancy", 'FontSize',10);
N = 3;
labels = size(N);
for i = 1:N
    fig = openfig(sprintf('%s.fig',listing(i).name));
    xData = get(fig,'XData'); %get the x data
    yData = get(fig,'YData'); %get the y data
    stairs(xData,yData)
    %labels(i) = sprintf("D_{max} = %s",listing(i).name(end-1:end));
end
hold on
%legend(labels);