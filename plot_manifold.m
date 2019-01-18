% plotFig7manifold.m
% Philip Pare
% 6/26/17

% plot_manifold.m
% Mark Transtrum
% 1/10/18

load('manifold_data.mat')
figure()
clf
hold on;
plot3(log(result2(:,1)),log(result2(:,2)),log(result2(:,3)),'.-')

[mag,ph] = bode(sysSPA1,w);
plot3(log(mag(:,:,1)),log(mag(:,:,2)),log(mag(:,:,3)),'g+','MarkerSize',25,'LineWidth',4)

[mag,ph] = bode(sysSPA,w);
plot3(log(mag(:,:,1)),log(mag(:,:,2)),log(mag(:,:,3)),'gx','MarkerSize',25,'LineWidth',4)

[mag,ph] = bode(sys1,w);
plot3(log(mag(:,:,1)),log(mag(:,:,2)),log(mag(:,:,3)),'k^','MarkerSize',15,'LineWidth',4)

[mag,ph] = bode(sys0,w);
plot3(log(mag(:,:,1)),log(mag(:,:,2)),log(mag(:,:,3)),'ko','MarkerSize',15,'LineWidth',4)

[mag,ph] = bode(sysBT2,w);
plot3(log(mag(:,:,1)),log(mag(:,:,2)),log(mag(:,:,3)),'m.','MarkerSize',45)

plot3(log(magOpt(:,:,1)),log(magOpt(:,:,2)),log(magOpt(:,:,3)),'d','Color', [153/255  0    204/255],'MarkerSize',15,'LineWidth',4)

plot3(xtop,ytop,ztop,'Color','c','LineWidth',5)
plot3(xlef,ylef,zlef,'Color','r','LineWidth',5)
plot3(xrig,yrig,zrig,'Color','c','LineWidth',5)

grid on
view(3)

% axis('equal')
axis([.6 1.2 -3 1 -8 1])
