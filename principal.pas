{* fpc -Co -Cr -Miso -gl principal.pas *}

{
   InCo- Fing
   Laboratorio 2021 Segundo Semestre

   Programa Principal
}

program Principal;

const
   RADIO =  40; { radio de la pelota   }
   ALTO  = 400; { ancho del rectángulo }
   ANCHO = 800; { alto del rectángulo  }

{ Con esta directiva queda incluido el archivo tarea1.pas }
{$INCLUDE tarea1.pas}


procedure MostrarBoolean(b : boolean);
begin
   if b then
      writeln(' true')
   else
      writeln('false')
end;
   
(****************************************)
(* Variables del Programa *)
(****************************************)
var
   x, y , x1, y1, x2, y2,
   vx, vy , vx1, vx2, vy1 , vy2 : integer;
   
   opcion : char;


(****************************************)
(* Programa Principal *)
(****************************************)
begin
   
   repeat
      read(opcion);
     
      case opcion of
        'p': begin {dar un paso}
              readln(x,y,vx,vy);
              darUnPaso(x,y,vx,vy);
              writeln(x,y)
             end;
        'h': begin { estan chocando }
               readln(x1,y1,x2,y2);
               MostrarBoolean(estanChocando(x1,y1,x2,y2))
             end;
           
        'v' : begin { es posicion valida }
               readln(x,y);
               MostrarBoolean(esPosicionValida(x,y))
             end;
        'c' : begin { predecir colision }
                 readln(x1, y1, vx1, vy1,x2, y2, vx2, vy2);
                 writeln(predecirColision(x1, y1, vx1, vy1, x2, y2, vx2, vy2))          
              end;
      else
         readln;
    end
      
  until opcion = 'q';	
   
end.

