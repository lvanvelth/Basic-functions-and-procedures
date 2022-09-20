
  procedure darUnPaso(var x,y: Integer; vx, vy : Integer);
  begin
    x:=x+vx;
    y:=y+vy;
  end;

  function estanChocando(x1,y1,x2,y2: Integer):Boolean; 
  const DIS=RADIO*2;
  begin 
    if  sqrt(sqr(x2-x1)+sqr(y2-y1))<DIS then estanChocando:=True
    else estanChocando:=False
  end;

  function esPosicionValida(x1,y1:Integer):Boolean; 
  begin
    if(x1-RADIO>=0) and (x1+RADIO<=ANCHO) and (y1-RADIO>=0) and (y1+RADIO<=ALTO) then esPosicionValida:=True
    else esPosicionValida:=False
  end;

  function predecirColision(x1,y1,vx1,vy1,x2,y2,vx2,vy2:Integer): Integer; 
  var count: Integer;
  begin
    count:=0;
    while not estanChocando(x1,y1,x2,y2) and esPosicionValida(x1,y1) and esPosicionValida(x2,y2) do  
    begin
      darUnPaso(x1,y1,vx1,vy1);
      darUnPaso(x2,y2,vx2,vy2);
      count:=count+1;
    end;
    if estanChocando(x1,y1,x2,y2) and esPosicionValida(x1,y1) and esPosicionValida(x2,y2) then predecirColision:=count
    else predecirColision:=-1
  end;
    
  

