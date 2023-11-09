t = [0 5 12 20 28 34 61 93 128 146 173 180 183 222];
mean = [-1.25 -0.64 -0.13 0.09 0.17 0.23 0.60 0.44 0.41 0.42 0.60 0.81 0.88 0.57];
stdev = [0.7 0.47 0.28 0.23 0.21 0.22 0.27 0.25 0.25 0.25 0.30 0.31 0.31 0.30];

f1 = figure(1);
plot(t, mean, Marker=".", MarkerSize=20)
hold on
plot(t, stdev, Marker=".", MarkerSize=20)
xlabel('t (min)')
ylabel('mean, sted (%)')
grid on
grid minor

legend('mean', 'stdev', Location='south')
saveas(f1, 'mean_stdev_t.png')

%% 

[T, i] = sort([25.4 23.3 23.8 24.1 24.5 25.0 25.5 25.9]);
mean = [0.47 -1.35 -0.18 0.07 0.20 0.33 0.66 0.72];
mean = mean(i);
stdev = [0.27 0.42 0.27 0.26 0.24 0.26 0.26 0.28];
stdev = stdev(i);

f2 = figure(2);
plot(T, mean, Marker=".", MarkerSize=20)
hold on
plot(T, stdev, Marker=".", MarkerSize=20)
xlabel('T (C)')
ylabel('mean, sted (%)')
grid on
grid minor

legend('mean', 'stdev', Location='south')
saveas(f2, 'mean(T)_stdev(T).png')

