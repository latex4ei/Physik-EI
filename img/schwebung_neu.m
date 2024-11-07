
%Code von Timotheus Lass für und mit Darius Peters
t=0:0.0001:6.5*pi; %Zeitvektor t
f1=5; %Frequenz 1
f2=5.2; %Frquenz 2
%Signal und Plot schwarze Kurve
y1=cos(2*pi*((f1-f2)/2)*t);
p1=plot(t,y1,'Color',[0 0 0],'LineWidth',1.2);
hold on
%Achsenbeschriftung und -bearbeitung
xlabel('t');
ylabel('y(t)');
ax=gca;
xticks(-1000);
yticks(-1000);
ax.XAxisLocation='origin';
%annotation('arrow',[0.1, 0.9],[0.515, 0.515]);
xlim([0 6.5*pi]);
ylim([-2 2]);
%Signal und Plot rote Kurve
y2=-cos(2*pi*((f1-f2)/2)*t);
p2=plot(t,y2,'r','LineWidth',1.2);
%Signal und Plot blaue Kurve
y3=cos(2*pi*((f1-f2)/2)*t).*sin(2*pi*((f1+f2)/6)*t);
p3=plot(t,y3,'b');
legend('Hüllkurve','Hüllkurve','Ton');
exportgraphics(gcf, 'schwebung_neu.png', 'ContentType', 'image', 'Resolution', 600);
hold off;
