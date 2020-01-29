
dy=input("Enter y' : ");

x0=input("Enter x0 :");
xn=input("Enter xn :");
y=input("Enter y :");
h=input("Enter h :");

fprintf('x \t\t y (Euler)\n'); %table

for x=x0:h:xn-h
  y=y+dy(x,y)*h;
  x=x+h;
  fprintf('%f\t %f\n',x,y);
end
