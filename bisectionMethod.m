y = input("Enter function : ");
x1 = input("Enter the value of x1: ");
x2 = input("Enter the value of x2: ");
if y(x1)*y(x2)>0
  fprintf("No roots exist within the given interval\n");
  return
end
if y(x1) == 0
  fprintf("x1 is one of the roots\n");
  return 
elseif y(x2) == 0
  fprintf("x2 is one of the roots\n");
  return 
 end
 
for i=1:100
   xh=(x1+x2)/2; %bisection
   if y(x1)*y(xh)<0
     x2=xh;
   else 
     x1=xh;
   end
   if(abs(y(x1))) <1.0E-8
      break
   end
   fprintf("x1 = %f & x2 = %f\n",x1,x2);
   data(i)=xh;
end
fprintf("The approximate root :%f\nThe number of bisections: %d\n",x1,i);

plot(data);