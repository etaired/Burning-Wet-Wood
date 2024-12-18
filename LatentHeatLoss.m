% Energy Loss Due to Water Content

% Data
moisture_content = 0:0.05:0.5; % Range of water content from 0% to 50%
latent_heat = 2260; % kJ/kg (latent heat of vaporization for water)
energy_input = 10000; % Total energy input in kJ

% Energy Loss
energy_lost = moisture_content * latent_heat * 0.5; % Simplified energy diversion

% Plot
figure;
plot(moisture_content*100, energy_lost, 'b-o', 'LineWidth', 2);
title('Energy Loss Due to Water Content in Wet Wood');
xlabel('Moisture Content (%)');
ylabel('Energy Lost to Vaporize Water (kJ)');
grid on;
