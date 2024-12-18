% Activation Energy Graph: Dry vs Wet Wood

% Data
reaction_progress = 0:0.01:1; % Normalized progress
Ea_dry = exp(-10 * (reaction_progress - 0.5).^2);   % Gaussian-shaped activation hump
Ea_wet = 0.8 * exp(-10 * (reaction_progress - 0.5).^2) + 0.2; % Higher Ea with energy loss

% Plot
figure;
plot(reaction_progress, Ea_dry, 'LineWidth', 2);
hold on;
plot(reaction_progress, Ea_wet, 'r--', 'LineWidth', 2);
hold off;

% Labels
title('Activation Energy for Combustion: Dry vs Wet Wood');
xlabel('Reaction Progress');
ylabel('Energy (kJ/mol)');
legend('Dry Wood', 'Wet Wood');
grid on;
