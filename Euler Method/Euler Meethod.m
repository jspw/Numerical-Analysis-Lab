
function eulermethod (f,xrange,y0,h)
  
x=xrange(1):h:xrange(2);

y(1)=y0;
for i=2:length(x)
  y(i)=y(i-1)+h*f(x(i-1),y(i-1));
end
retval =[x' y']

endfunction
