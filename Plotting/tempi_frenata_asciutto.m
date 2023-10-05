velocita=[0 40 50 60 70 80 90 100 110];   %vettore con le velocità di riferimetno
%dist_a=[0 9 14 20 27 36 45 56 67];
dist_a=[0 26 35 45 56 69 83 98 113];        %vettore con le distanze di riferiemtno sull'asciutto
v_int = -20:0.1:150;                     %vettore con i campioni dell'asse della velocità
p = polyfit(velocita,dist_a,2);         %genera i coefficienti di un polinomio di grdo 3 interpolando i valori sull'asciutto
dist_a_int= polyval(p,v_int);           %genera i valori nelle ordinate del polionomio ottenuto sopra

figure
plot(velocita,dist_a,'o',v_int,dist_a_int,':.');
xlim([0 150]);
ylim([0 200]);
title('distanza di frenta');