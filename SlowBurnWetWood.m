% Energy Output Over Time: Dry vs Wet Wood

% Time and Energy Data
time = 0:1:100;  % Time in minutes
energy_dry = exp(-0.05*time) .* sin(0.1*time).^2;  % Sharp, efficient burn
energy_wet = 0.6 * exp(-0.03*time) .* sin(0.08*time).^2; % Slower, less efficient burn

% Plot
figure;
plot(time, energy_dry, 'b-', 'LineWidth', 2);
hold on;
plot(time, energy_wet, 'r--', 'LineWidth', 2);
hold off;

% Labels
title('Heat Output Over Time: Dry vs Wet Wood');
xlabel('Time (minutes)');
ylabel('Heat Output (arbitrary units)');
legend('Dry Wood', 'Wet Wood');
grid on;
