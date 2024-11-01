% Welcome to the Exciting MATLAB World!
% 🌟 Practice Session: HW-10 🚀
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

r_TM = (n2 .* cos(theta_i) - n1 .* cos_theta_t) ./ (n2 .* cos(theta_i) + n1 .* cos_theta_t);
R_TM = r_TM.^2;

t_TM = (2 * n1 * cos(theta_i)) ./ (n2 .* cos(theta_i) + n1 .* cos_theta_t);
T_TM = (4 * n1 * n2 * cos_theta_t .* cos(theta_i)) ./ (n2 .* cos(theta_i) + n1 .* cos_theta_t).^2;

figure;
plot(theta_i * (180 / pi), R_TM, 'b-', 'LineWidth', 1.5); 
hold on;
plot(theta_i * (180 / pi), T_TM, 'r--', 'LineWidth', 1.5); 
hold off;

xlabel('Incident Angle (Degrees)');
ylabel('Coefficient');
title('Reflection and Transmission Coefficients vs Incident Angle');
legend('Reflection Coefficient (R_{TM})', 'Transmission Coefficient (T_{TM})');
grid on;
