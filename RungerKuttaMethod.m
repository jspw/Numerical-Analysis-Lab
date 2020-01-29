function ret = kutta(f, xrange, y0, h)
   
    x = [xrange(1):h:xrange(2)]; 
    y(1) = y0; 
    

    for i=2:length(x)
      
        k1 = h*f(x(i-1),y(i-1));
        k2 = h*f( x(i-1)+(h/2), y(i-1)+(h/2*k1) );

         y(i) = y(i-1)+0.5*(k1+k2);
    endfor
    
    
    ret = [x', y']; 
    return; 
endfunction