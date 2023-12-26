E_d = [0.5 1 2 3 4 5 6 7 8];
f_o = [5.319 5.464 5.682 5.814 5.917 6.024 6.061 6.135 6.173];
plot_curve(2, E_d, f_o, 'E_d(V)', 'f_o(MHz)', '静态调制特性曲线', '%.3f');

% 鉴频器S曲线
f = [5.6 5.7 5.8 5.9 6 6.1 6.2 6.3 6.4 6.5 6.6 6.7 6.8 6.9 7 7.1];
V_o = [-0.105 -0.144 -0.190 -0.225 -0.217 -0.159 -0.078 0.001 0.078 0.149 0.212 0.255 0.265 0.241 0.198 0.158];
figure;
hold on;
grid on;
plot(f, V_o, '-o');
xlabel('f (MHz)');
ylabel('V_o (V)');
title('鉴频器S曲线');

offset = zeros(size(V_o));
for i = 2:length(V_o)
    if abs(V_o(i) - V_o(i-1)) < 0.05
        offset(i) = offset(i-1) + 0.01;
    else
        offset(i) = 0;
    end
end

text(f, V_o + offset, num2str(V_o'), 'VerticalAlignment', 'top', 'HorizontalAlignment', 'left');

% 动态调制特性曲线

V_PP = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
V_o1 = [0 91.2 104 102 117 116 122 130 132 138 144];
V_o2 = [0 55.2 40.8 37.6 31.2 26 28 16 2 -4 -12];

    figure;
    hold on;
    grid on;
    plot(V_PP, V_o1, '-o', 'DisplayName', '峰值');
    plot(V_PP, V_o2, '--o', 'DisplayName', '谷值');
    hold off;

    % Add labels and legend
    text(V_PP , V_o1, num2str(V_o1'), 'VerticalAlignment', 'top', 'HorizontalAlignment', 'left');
    text(V_PP , V_o2, num2str(V_o2'), 'VerticalAlignment', 'top', 'HorizontalAlignment', 'left');
    xlabel('V_{PP} (V)');
    ylabel('V_{out} (mV)');
    title('动态调制特性曲线');
    legend('Location','northwest');
