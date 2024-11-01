% Welcome to the Exciting MATLAB World!
% 🌟 Practice Session: HW-12 🚀
% 🧠 Your Brain Gym: Tackling MATLAB with Seyed Mohammad Sajadi's Magic
% 🎯 Student Number: 402448040
% Ready, set, code! 💻✨

close all;
clear all;
clc;

theta_i = linspace(0, 90, 200) * (pi / 180); 
n1 = 1.00;
n2 = 1.45;

cos_theta_t = sqrt(1 - (n1 / n2)^2 .* sin(theta_i).^2);

r_TE = (n1 .* cos(theta_i) - n2 .* cos_theta_t) ./ (n1 .* cos(theta_i) + n2 .* cos_theta_t);
R_TE = r_TE.^2;

t_TE = (2 * n1 * cos(theta_i)) ./ (n1 .* cos(theta_i) + n2 .* cos_theta_t);
T_TE = (4 * n2 * n1 * cos_theta_t .* cos(theta_i)) ./ (n1 .* cos(theta_i) + n2 .* cos_theta_t).^2;

figure;
plot(theta_i * (180 / pi), R_TE, 'b-', 'LineWidth', 1.5); 
hold on;
plot(theta_i * (180 / pi), T_TE, 'r--', 'LineWidth', 1.5); 
hold off;

xlabel('Incident Angle (Degrees)');
ylabel('Coefficient');
title('Reflection and Transmission Coefficients vs Incident Angle');
legend('Reflection Coefficient (R_{TE})', 'Transmission Coefficient (T_{TE})');
grid on;
