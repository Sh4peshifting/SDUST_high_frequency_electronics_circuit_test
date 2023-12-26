function plot_data(displayname1, displayname2, displayname3, x1, x2, x3, y1, y2, y3, x_name, y_name, title_name)

    % Plot the data for each resistance
    figure;
    hold on;
    grid on;
    plot(x1, y1, '-o', 'DisplayName', displayname1);
    plot(x2, y2, '--o', 'DisplayName', displayname2);
    plot(x3, y3, '-.o', 'DisplayName', displayname3);
    hold off;

    % Add labels and legend
    xlabel(x_name);
    ylabel(y_name);
    title(title_name);
    legend('Location','northwest');

end