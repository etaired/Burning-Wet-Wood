% Combustion Efficiency: Dry vs Wet Wood

% Data
burn_efficiency = linspace(0, 1, 50); % Efficiency from 0 to 100%
CO2_dry = burn_efficiency;            % Dry wood burns cleanly
CO2_wet = 0.7 * burn_efficiency;      % Wet wood burns less cleanly
CO_wet = 0.3 * (1 - burn_efficiency); % Incomplete combustion byproducts

% Plot
figure;
plot(burn_efficiency*100, CO2_dry*100, 'g-', 'LineWidth', 2);
hold on;
plot(burn_efficiency*100, CO2_wet*100, 'r--', 'LineWidth', 2);
plot(burn_efficiency*100, CO_wet*100, 'k:', 'LineWidth', 2);
hold off;

% Labels
title('Combustion Efficiency and Byproducts');
xlabel('Combustion Efficiency (%)');
ylabel('Percentage of Products (%)');
legend('CO2 (Dry Wood)', 'CO2 (Wet Wood)', 'CO + Soot (Wet Wood)');
grid on;
