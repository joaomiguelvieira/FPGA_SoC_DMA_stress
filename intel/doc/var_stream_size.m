clearvars;
close all;

raw_data = [4	1600	1.26	0.07	1.33	0.1844
8	1600	2.56	0.21	2.67	0.3608
16	1600	5.1	0.46	5.33	0.6501
32	1600	1.01	0.74	10.67	0.6849
64	1600	1.92	1.8	2.56	0.0483
128	1600	3.83	3.28	3.88	0.0499
256	1600	7.68	6.48	7.76	0.1265
512	1600	15.35	13.13	15.52	0.1966
1024	1600	31.05	28.85	97.52	4.7198
2048	1600	61.43	51.85	62.06	0.8548
4096	1600	122.92	106.39	124.12	1.5419
8192	1600	245.01	108.5	431.16	18.503
16384	1600	491.42	330.99	564.97	13.2892
32768	1600	983.42	840.21	992.97	13.6119
65536	1600	1037.57	879.68	1379.71	27.3668
131072	1600	1403.5	879.68	1416.99	42.1867
262144	1600	1437.81	1365.33	1515.28	11.4446
524288	1600	1452.93	1415.08	1487.34	7.998
1048576	1600	1524.21	1502.26	1548.86	6.5499
2097152	1600	1557.13	1528.54	1570.31	7.6081
4194304	1600	1565.65	1546.86	1576.21	4.3642
8388608	1600	1574.12	1557.05	1578.14	3.2217
16777216	1600	1576.29	1561.76	1580.22	3.1045
33554432	1600	1579.5	1561.51	1583.58	3.5933];

stream_size = raw_data(:,1)';
expected = raw_data(:,2)';
average = raw_data(:,3)';
minimum = raw_data(:,4)';
maximum = raw_data(:,5)';
deviation = raw_data(:,6)';
efficiency = average ./ expected;

figure('Position', [699, 259, 1000, 200]);
plot(log2(stream_size), average, '-x');
hold on;
plot(log2(stream_size), 1600 * ones(24), '--');
grid on;
xlim([min(log2(stream_size)), max(log2(stream_size))]);
ylim([0, 1.1 * max(average)]);
xticks(log2(stream_size));
xticklabels({'2^2','2^3','2^4','2^5','2^6','2^7','2^8','2^9','2^{10}','2^{11}','2^{12}','2^{13}','2^{14}','2^{15}','2^{16}','2^{17}','2^{18}','2^{19}','2^{20}','2^{21}','2^{22}','2^{23}','2^{24}','2^{25}',});
ylabel("Bandwidth [MB/s]");
xlabel("Stream size [B]");
legend("Observed bandwidth", "Expected bandwidth", "Location", "southeast", "Orientation", "Horizontal");
saveas(gcf,'var_stream_size','epsc');