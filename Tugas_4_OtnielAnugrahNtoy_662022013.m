% clc
% clear
% 
% x = linspace(-2*pi, 2*pi, 1000);
% y = sin(x);
% z = cos(x);
% theta = linspace(0, 2*pi, 100);
% rho = abs(sin(2*theta).*cos(2*theta));
% [X, Y] = meshgrid(-3:.1:3);
% Z = peaks(X,Y);
% data = randi(10, 1, 5);
% randomData = randn(1000,1);
% 
% figure('Name', '20 Plot Berbeda', 'NumberTitle', 'off');
% set(gcf,'Position',[100 100 1200 800]); % agar lebih lebar
% 
% %Line Plot
% subplot(5,4,1); 
% plot(x, y); 
% title('Line Plot');
% 
% % %Multiple Line
% % subplot(5,4,2); 
% % plot(x, y, x, z); 
% % title('Multi Line');
% % 
% % %Scatter Plot
% % subplot(5,4,3); 
% % scatter(x, y); 
% % title('Scatter');
% % 
% % %Bar Chart
% % subplot(5,4,4); 
% % bar(data); 
% % title('Bar');
% % 
% %Horizontal Bar
% subplot(5,4,5); 
% barh(data); 
% title('Bar Horizontal');
% % 
% % %Pie Chart
% % subplot(5,4,6); 
% % pie(data); 
% % title('Pie');
% % 
% % %Area Plot
% % subplot(5,4,8); 
% % area(x, y); 
% % title('Area');
% % 
% % %Stem Plot
% % subplot(5,4,9); 
% % stem(x(1:50), y(1:50)); 
% % title('Stem');
% % 
% % %Stairs Plot
% % subplot(5,4,10); 
% % stairs(x(1:50), y(1:50)); 
% % title('Stairs');
% % 
% % %Polar Plot
% % subplot(5,4,11); 
% % polarplot(theta, rho); 
% % title('Polar');
% % 
% % %Compass Plot
% % u = cos(theta); v = sin(theta);
% % subplot(5,4,12); compass(u, v); 
% % title('Compass');
% % 
% % %Quiver Plot
% % [xq, yq] = meshgrid(-2:0.5:2, -2:0.5:2);
% % subplot(5,4,13); 
% % quiver(xq, yq, xq, yq); 
% % title('Quiver');
% % 
% % %Contour Plot
% % subplot(5,4,14); 
% % contour(X, Y, Z); 
% % title('Contour');
% % 
% %Surface Plot
% subplot(5,4,15); 
% surf(X, Y, Z); 
% title('Surface');
% 
% %Mesh Plot
% subplot(5,4,16); 
% mesh(X, Y, Z); 
% title('Mesh');
% 
% %Waterfall
% subplot(5,4,17); 
% waterfall(X, Y, Z); 
% title('Waterfall');
% 
% %Boxplot
% group = [ones(50,1); 
%     2*ones(50,1)];
% values = [randn(50,1); 
%     randn(50,1)+1];
% subplot(5,4,19); 
% boxplot(values, group); 
% title('Boxplot');
% % 
% %Animated Line (snapshot only)
% subplot(5,4,20); 
% plot(x, y); 
% title('Animasi Line (Static)');

% ini untuk Plot 3D
clc
clear

% Grid dan fungsi dasar
[x, y] = meshgrid(-5:0.5:5, -5:0.5:5);
z1 = sin(sqrt(x.^2 + y.^2));
z2 = peaks(x, y);
r = sqrt(x.^2 + y.^2) + eps;
z3 = sin(r)./r;

figure('Name', '12 Plot 3D', 'NumberTitle', 'off');
set(gcf,'Position',[100 100 1400 800]);

%Mesh
subplot(3,4,1);
mesh(x, y, z1);
title('mesh');

%Surf
subplot(3,4,2);
surf(x, y, z1);
title('surf');

%Contour3
subplot(3,4,3);
contour3(x, y, z1);
title('contour3');

%Meshc
subplot(3,4,4);
meshc(x, y, z1);
title('meshc');

%Surfc
subplot(3,4,5);
surfc(x, y, z1);
title('surfc');

% 6. Waterfall
subplot(3,4,6);
waterfall(x, y, z2);
title('waterfall');

%Ribbon
subplot(3,4,7);
z = sin(0:0.1:10);
subplot(3,4,7);
ribbon(z);
title('ribbon');

%Cylinder
subplot(3,4,8);
[Xc,Yc,Zc] = cylinder;
surf(Xc,Yc,Zc);
title('cylinder');

%Sphere
subplot(3,4,9);
[Xs, Ys, Zs] = sphere;
surf(Xs,Ys,Zs);
title('sphere');

%Cone (gunakan cylinder dengan radius mengecil)
subplot(3,4,10);
[R,Z] = cylinder([1 0]);
surf(R, R, Z);
title('cone');

%Ellipsoid
subplot(3,4,11);
[Xe,Ye,Ze] = ellipsoid(0,0,0,2,1,1.5,30);
surf(Xe,Ye,Ze);
title('ellipsoid');

%Isosurface (3D volume)
subplot(3,4,12);
[x3,y3,z3] = meshgrid(-2:0.2:2);
v = x3.^2 + y3.^2 + z3.^2;
isosurface(x3,y3,z3,v,1.5);
title('isosurface');
