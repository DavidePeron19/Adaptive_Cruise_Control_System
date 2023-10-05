figure;
subplot(1,2, 1);
p=plot(out.tout, out.velocit, 'Color', '#142B8C','LineWidth', 1.5);
title('Risposta al Gradino');xlabel('Tempo [s]');ylabel('Ampiezza');xlim([-1,200]);

p.DataTipTemplate.DataTipRows(1).Label = "Tempo di Salita:";
p.DataTipTemplate.DataTipRows(1).Format = '%5.2f s%';
p.DataTipTemplate.DataTipRows(2).Label = "Velocità:";
p.DataTipTemplate.DataTipRows(2).Format = '%5.4f km/h%';

dp2=datatip(p, 7.8, 19.6);
dp=datatip(p, 0.5, 1);
alldatacursors = findall(gcf,'type','hggroup'); 
set(alldatacursors,'FontSize',14);
subplot(1,2, 2);
t=plot(out.tout, out.accelerazione, 'Color', '#142B8C','LineWidth', 1.5);
title('Decelerazione di 90 km/h');xlabel('Tempo [s]');ylabel('Accelerazione [m/s^2]');xlim([-1, 55]);
t.DataTipTemplate.DataTipRows(1).Label = "Decelerazione Massima:";
t.DataTipTemplate.DataTipRows(1).Value = 'YData';
t.DataTipTemplate.DataTipRows(1).Format = '%5.2f m/s^2%';
t.DataTipTemplate.DataTipRows(2).Label = "Tempo:";
t.DataTipTemplate.DataTipRows(2).Format = '%5.2f s%';
t.DataTipTemplate.DataTipRows(2).Value = 'XData';
dt=datatip(t, 0, -19.6); 
alldatacursors = findall(gcf,'type','hggroup'); 
set(alldatacursors,'FontSize',14);
