velocita=[40 50 60 70 80 90 100 110];   %vettore con le velocità di riferimetno
dist_b=[13 20 29 40 52 65 80 97];       %vettore con le distanze di riferiemtno sul bagnato
dist_a=[9 14 20 27 36 45 56 67];        %vettore con le distanze di riferiemtno sull'asciutto
v_int = 40:0.1:150;                     %vettore con i campioni dell'asse della velocità
p = polyfit(velocita,dist_b,3);         %genera i coefficienti di un polinomio di grdo 3 interpolando i valori sul bagnato
dist_b_int= polyval(p, v_int);          %genera i valori nelle ordinate del polionomio ottenuto sopra    
p = polyfit(velocita,dist_a,3);         %genera i coefficienti di un polinomio di grdo 3 interpolando i valori sull'asciutto
dist_a_int= polyval(p,v_int);           %genera i valori nelle ordinate del polionomio ottenuto sopra

figure
plot(velocita,dist_b,'o',v_int,dist_b_int,':.');
hold on;
plot(velocita,dist_a,'o',v_int,dist_a_int,':.');
xlim([40 150]);
ylim([0 200]);
title('distanza di frenta');