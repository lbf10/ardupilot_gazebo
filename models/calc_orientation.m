X=-340.90
Y= 342.02
Z= 15.97

X = X/1000;
Y = Y/1000;
Z = Z/1000;

H = sqrt(X*X+Y*Y);
x = -X*sin(5*pi/180)/H
y = -Y*sin(5*pi/180)/H
z = cos(5*pi/180)

R = [cos(-pi/2) -sin(-pi/2); sin(-pi/2) cos(-pi/2)];

n = [R*[X;Y]; 0];
alpha = 5*pi/180;

quaternion = [cos(alpha/2);sin(alpha/2)*n];

row = atan2(2*quaternion(3)*quaternion(4)+2*quaternion(1)*quaternion(2),quaternion(4)^2-quaternion(3)^2-quaternion(2)^2+quaternion(1)^2)
pitch = -asin(2*quaternion(2)*quaternion(4)-2*quaternion(1)*quaternion(3))
yaw = atan2(2*quaternion(2)*quaternion(3)+2*quaternion(1)*quaternion(4),quaternion(2)^2+quaternion(1)^2-quaternion(4)^2-quaternion(3)^2)