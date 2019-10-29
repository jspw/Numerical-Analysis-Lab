function ret = runga_kutta_method(f, xrange, y0, h)
   
    x = [xrange(1):h:xrange(2)]; % explore the x array from xrange
    y(1) = y0; % y(1) for x1 formally y0 for x0
    
    % loop through all remaining x and for find out their corresponding y
    for i=2:length(x)
      
        % runnga kutta 4rth order itertion
        k1 = h*f(x(i-1),y(i-1));
        k2 = h*f( x(i-1)+(h/2), y(i-1)+(h/2*k1) );
        
        % next y
         y(i) = y(i-1)+0.5*(k1+k2);
    endfor
    
    
    ret = [x', y']; % convert horizontal array to vertical
    return; 
endfunction