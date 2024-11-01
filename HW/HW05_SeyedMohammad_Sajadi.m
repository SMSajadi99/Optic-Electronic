% Welcome to the Exciting MATLAB World!
% 🌟 Practice Session: HW-05 🚀
% 🧠 Your Brain Gym: Tackling MATLAB with Seyed Mohammad Sajadi's Magic
% 🎯 Student Number: 402448040
% Ready, set, code! 💻✨

close all;
clear all;
clc;

E01 = 1;    
E02 = 0.7;   
omega = 2*pi; 
theta1 = 0; 
theta2 = pi/4; 
t = linspace(0, 2*pi, 500);

Ex = E01 * cos(omega * t - theta1); % TE wave (horizontal)
Ey = -E02 * cos(omega * t - theta2); % TM wave (vertical)

theta = theta2 - theta1; 
ellipse_x = E01 * cos(omega * t);
ellipse_y = -E02 * cos(omega * t - theta);
z = t;


figure;
axis tight manual 
filename = 'polarization_with_TE_TM.gif';

for i = 1:length(t)
    plot3(ellipse_x(1:i), ellipse_y(1:i), z(1:i), 'b', 'LineWidth', 2);
    hold on;
    plot3(Ex(1:i), zeros(1, i), z(1:i), 'r', 'LineWidth', 1.5);
    plot3(zeros(1, i), Ey(1:i), z(1:i), 'g', 'LineWidth', 1.5);
    scatter3(ellipse_x(i), ellipse_y(i), z(i), 50, 'b', 'filled'); 
    hold off;
    
    xlim([-E01 E01]); ylim([-E02 E02]); zlim([0 2*pi]);
    xlabel('E_x (TE)'); ylabel('E_y (TM)'); zlabel('Time');
    title('Elliptical Polarization with TE and TM Components');
    grid on;
    
    frame = getframe(gcf);
    im = frame2im(frame);
    [imind, cm] = rgb2ind(im, 256);
    
    if i == 1
        imwrite(imind, cm, filename, 'gif', 'Loopcount', inf, 'DelayTime', 0.05);
    else
        imwrite(imind, cm, filename, 'gif', 'WriteMode', 'append', 'DelayTime', 0.05);
    end
end
