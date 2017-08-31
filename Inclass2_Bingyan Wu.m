%% Inclass assignment 2

% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers

for ii = 1:20
    if mod(ii,2)==1
        disp(ii);
end

% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement 
% Bingyan Wu:
for ii = 1:2:20
    disp(ii);
end

% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)
% Bingyan Wu
disp(num2str(1:2:20));


%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

%a. 

for ii = 1:100
    z(ii) = ii*ii;
end
% Bingyan Wu
for ii = 1:100
    z(ii) = ii*ii;
    disp(z(ii))
end

%b. 
z = 0;
for ii = 1:100
    z = z + ii;
end

%Bingyan Wu:
z = sum(1:100)

%c.
xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,x)^2);
end

% Bingyan
z = sqrt(xx(:,1).^2 + xx(:,2).^2);

% d. what is the formula in c computing?
% Bingyan Wu: It is calculating the Pythagorean Theorem

%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.

% Bingyan Wu:
x = 0:0.1:(4*pi);
sinx = [sin(x)]';
cosx = [cos(x)]';
plot(x,sinx,'r--',x,cosx,'b-')


%b. repeat the above but where each graph is in a different subplot in the
% same figure. 

%Bingyan Wu
x = 0:0.1:(4*pi);
sinx =[sin(x)]';
cosx = [cos(x)]';
subplot(211)
plot(x,sinx,'r--');
subplot(212);
plot(x,cosx,'b-');


%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);
%plot the data in the xy plane.

%Bingyan Wu:
for ii = 1:100
      z(ii)=sqrt(xy_dat(ii,1)^2+xy_dat(ii,2)^2);
 end
     scatter(xy_dat(:,1),xy_dat(:,2),20,z,'filled');
%now imagine there is some fluorescence data corresponding to the same
%cells
fluor = rand(100,1);
% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command

%Bingyan Wu:
fluor = rand(100,1);
scatter(xy_dat(:,1),xy_dat(:,2),20,fluor,'filled');