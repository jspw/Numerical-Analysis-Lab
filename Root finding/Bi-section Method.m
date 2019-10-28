function retval = bisectionMethod (f,a,b)
  
  fa=f(a);
  fb=f(b);
  
  if((fa*fb)>=0)
  retval='No root available';
    
    return;
  end 
  retval(1,:)=[a,b,0,0];
  initfinal=0;
  for i=2:20
   
     fa=f(a);
     fb=f(b);
     c=(a+b)/2;   
     fc=f(c);
     retval(i,:)=[a,b,c,fc];
    if(abs(c-initfinal)<0.0001)
    fprintf('root:%.4f\n',c);
    
    return;
    end
    initfinal=c;
    
    if(fa*fc<0)
    b=c;
    else a=c;
    
    end
   
  
    end  
  

endfunction
