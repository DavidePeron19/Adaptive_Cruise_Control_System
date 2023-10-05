figure;
plot(out.tout, out.v_l, 'Color', '#0072BD','LineWidth', 2);%#0072BD   #142B8C
hold on;
p1=plot(out.tout, out.v_h, 'Color', '#EDB120','LineWidth', 2);%#D95319  #EDB120
p1.Color(4)=0.75;
title('Comparazione tra le velocità dei due veicoli', 'FontSize',18);xlabel('Tempo [s]', 'FontSize',14);ylabel('Velocità [km/h]', 'FontSize',14);xlim([0,200]);ylim([-5, 135]);
legend('v_{leading}', 'v_{host}', 'FontSize',16,'Location', 'SouthEast');
grid on;
figure;
plot(out.tout, out.d_s, 'Color', 'red','LineWidth', 2);
hold on;
p2=plot(out.tout, out.d_lh, 'Color', '#77AC30','LineWidth', 2);
p2.Color(4)=0.75;
title('Comparazione tra distanza relativa e distanza di sicurezza', 'FontSize',14);xlabel('Tempo [s]', 'FontSize',14);ylabel('Distanza [m]', 'FontSize',16);xlim([0,200]);ylim([0, 600])
legend('Distanza di sicurezza', 'Distanza relativa', 'FontSize',16,'Location', 'SouthEast');
grid on;