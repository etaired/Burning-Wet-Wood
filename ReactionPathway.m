% Reaction Pathway for Wet Wood Combustion

% Data
steps = {'Water Evaporation', 'Pyrolysis', 'Combustion'};
energy = [30, 50, 100]; % Relative energy input needed for each step

% Plot
figure;
bar(steps, energy, 'FaceColor', [0.6 0.3 0.1]);
title('Reaction Pathway for Wet Wood Combustion');
ylabel('Energy Input (%)');
grid on;
