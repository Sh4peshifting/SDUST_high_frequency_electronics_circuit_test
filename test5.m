voltage_ab = [-0.42, -0.32, -0.22, -0.12, -0.02, 0.08, 0.18, 0.28, 0.38, 0.42];
voltage_o = [680, 512, 396, 220, 52.8, 158, 308, 432, 568, 656]; 
figure;
hold on;
grid on;
plot(voltage_ab, voltage_o, '-o');
xlabel('V_{AB} (V)');
ylabel('V_{O(P-P)} (mV)');
title('直流调制特性曲线');
xticks(-0.5:0.1:0.5);

for k = 1:length(voltage_ab)
    text(voltage_ab(k), voltage_o(k), ['  (' num2str(voltage_ab(k)) ',' num2str(voltage_o(k)) ')']);
end