% Welcome to the Exciting MATLAB World!
% 🌟 Practice Session: HW-09 🚀
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
t_TM = (2 * n1 * cos(theta_i)) ./ (n2 .* cos(theta_i) + n1 .* cos_theta_t);

figure;
plot(theta_i * (180 / pi), r_TM, 'b-', 'LineWidth', 1.5); 
hold on;
plot(theta_i * (180 / pi), t_TM, 'r--', 'LineWidth', 1.5); 
hold off;

xlabel('Incident Angle (Degrees)');
ylabel('Coefficient');
title('Reflection and Transmission Coefficients vs Incident Angle');
legend('Reflection Coefficient (r_{TM})', 'Transmission Coefficient (t_{TM})');
grid on;
