&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
&& calcula a media por cada uma das 4 variaveis e calcula a variancia &&
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
Set talk off
close all
exclusao=2 && 8%
SELECT 1
USE d:\ai\medicina\tabley0
go bottom
store recno() to x
dimension var(x,9)
y=0
go top
do while .not. eof()
 y=y+1
 store var1 to var(y,1)
 store var2 to var(y,2)
 store var3 to var(y,3)
 store var4 to var(y,4)
 store var5 to var(y,5)
 store var6 to var(y,6)
 store var7 to var(y,7)
 store var8 to var(y,8)
 
 store species    to var(y,9)

 skip
enddo
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
&& SELECIONA MAIOR E MENOR DE CADA ATRIBUTO          &&
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
&& definição de limites superior e inferior por categoria nao normalizado da base aberta
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

dimension maiorx(3,8)
dimension menorx(3,8) &&& tres sao as categoria e quatro as variaveis
for ss=1 to 3
 for ss1=1 to 8
  maiorx(ss,ss1)=0.00
  menorx(ss,ss1)=10000000000000.000
 endfor
endfor
? y
wait
&&
dimension totalx(3,8)
dimension valor(3,8)
dimension media(3,8)

for zx1=1 to 3
 for zx2=1 to 8
    ? zx1,zx2
    totalx(zx1,zx2)=0
    valor(zx1,zx2)=0
    media(zx1,zx2)=0
 endfor
endfor
for z=1 to y
&&? "Maior e menor por tipo de servico geral normalizado "
&&? var1(z,1),"-",var1(z,2),"-",var1(z,3),"-",var1(z,4),"-",var(z,5),"-", 
&&wait
if var(z,9)="NO TROMBOSIS TEP OR"
  totalx(1,1)=totalx(1,1)+1
  valor(1,1)=valor(1,1)+var(z,1)
  valor(1,2)=valor(1,2)+var(z,2)
  valor(1,3)=valor(1,3)+var(z,3)
  valor(1,4)=valor(1,4)+var(z,4)
  valor(1,5)=valor(1,5)+var(z,5)
  valor(1,6)=valor(1,6)+var(z,6)
  valor(1,7)=valor(1,7)+var(z,7)
  valor(1,8)=valor(1,8)+var(z,8)

 if var(z,1)>=maiorx(1,1)
  maiorx(1,1)=var(z,1)
 endif
 if var(z,1)<menorx(1,1)
  menorx(1,1)=var(z,1)
 endif
 &&wait
 if var(z,2)>=maiorx(1,2)
  maiorx(1,2)=var(z,2)
 endif
 if var(z,2)<menorx(1,2)
  menorx(1,2)=var(z,2)
 endif
 
 if var(z,3)>=maiorx(1,3)
  maiorx(1,3)=var(z,3)
 endif
 if var(z,3)<menorx(1,3)
  menorx(1,3)=var(z,3)
 endif
 
 if var(z,4)>=maiorx(1,4)
  maiorx(1,4)=var(z,4)
 endif
 if var(z,4)<menorx(1,4)
  menorx(1,4)=var(z,4)
 endif
 
 if var(z,5)>=maiorx(1,5)
  maiorx(1,5)=var(z,5)
 endif
 if var(z,5)<menorx(1,5)
  menorx(1,5)=var(z,5)
 endif
 
  if var(z,6)>=maiorx(1,6)
  maiorx(1,6)=var(z,6)
 endif
 if var(z,6)<menorx(1,6)
  menorx(1,6)=var(z,6)
 endif
 
  if var(z,7)>=maiorx(1,7)
  maiorx(1,7)=var(z,7)
 endif
 if var(z,7)<menorx(1,7)
  menorx(1,7)=var(z,7)
 endif
 
  if var(z,8)>=maiorx(1,8)
  maiorx(1,8)=var(z,8)
 endif
 if var(z,8)<menorx(1,8)
  menorx(1,8)=var(z,8)
 endif
 && ? maior(1,1)
 && wait
endif

if var(z,9)="AT LEAST ONE TYPE (T"
  totalx(2,1)=totalx(2,1)+1
&&  ?  Totalx(2,1)
  valor(2,1)=valor(2,1)+var(z,1)
  valor(2,2)=valor(2,2)+var(z,2)
  valor(2,3)=valor(2,3)+var(z,3)
  valor(2,4)=valor(2,4)+var(z,4)
  valor(2,5)=valor(2,4)+var(z,5) 
  valor(2,6)=valor(2,6)+var(z,6)
  valor(2,7)=valor(2,7)+var(z,7)
  valor(2,8)=valor(2,8)+var(z,8)
 
 
 if var(z,1)>=maiorx(2,1)
  maiorx(2,1)=var(z,1)
 endif
 if var(z,1)<menorx(2,1)
  menorx(2,1)=var(z,1)
 endif

 if var(z,2)>=maiorx(2,2)
  maiorx(2,2)=var(z,2)
 endif
 if var(z,2)<menorx(2,2)
  menorx(2,2)=var(z,2)
 endif
 
 if var(z,3)>=maiorx(2,3)
  maiorx(2,3)=var(z,3)
 endif
 if var(z,3)<menorx(2,3)
  menorx(2,3)=var(z,3)
 endif
 
 if var(z,4)>=maiorx(2,4)
  maiorx(2,4)=var(z,4)
 endif
 if var(z,4)<menorx(2,4)
  menorx(2,4)=var(z,4)
 endif
 
  if var(z,5)>=maiorx(2,5)
  maiorx(2,5)=var(z,5)
 endif
 if var(z,5)<menorx(2,5)
  menorx(2,5)=var(z,5)
 endif
 
 if var(z,6)>=maiorx(2,6)
  maiorx(2,6)=var(z,6)
 endif
 if var(z,6)<menorx(2,6)
  menorx(2,6)=var(z,6)
 endif
 
  if var(z,7)>=maiorx(2,7)
  maiorx(2,7)=var(z,7)
 endif
 if var(z,7)<menorx(2,7)
  menorx(2,7)=var(z,7)
 endif
 
  if var(z,8)>=maiorx(2,8)
  maiorx(2,8)=var(z,8)
 endif
 if var(z,8)<menorx(2,8)
  menorx(2,8)=var(z,8)
 endif

endif

if var(z,9)="YES BOTH TYPES (TEP"
  totalx(3,1)=totalx(3,1)+1
  valor(3,1)=valor(3,1)+var(z,1)
  valor(3,2)=valor(3,2)+var(z,2)
  valor(3,3)=valor(3,3)+var(z,3)
  valor(3,4)=valor(3,4)+var(z,4)
  valor(3,5)=valor(3,4)+var(z,5)
  valor(3,6)=valor(3,6)+var(z,6)
  valor(3,7)=valor(3,7)+var(z,7)
  valor(3,8)=valor(3,8)+var(z,8)

 if var(z,1)>=maiorx(3,1)
  maiorx(3,1)=var(z,1)
 endif
 if var(z,1)<menorx(3,1)
  menorx(3,1)=var(z,1)
 endif

 if var(z,2)>=maiorx(3,2)
  maiorx(3,2)=var(z,2)
 endif
 if var(z,2)<menorx(3,2)
  menorx(3,2)=var(z,2)
 endif
 
 if var(z,3)>=maiorx(3,3)
  maiorx(3,3)=var(z,3)
 endif
 if var(z,3)<menorx(3,3)
  menorx(3,3)=var(z,3)
 endif
 
 if var(z,4)>=maiorx(3,4)
  maiorx(3,4)=var(z,4)
 endif
 if var(z,4)<menorx(3,4)
  menorx(3,4)=var(z,4)
 endif
  
  if var(z,5)>=maiorx(3,5)
  maiorx(3,5)=var(z,5)
 endif
 if var(z,5)<menorx(3,5)
  menorx(3,5)=var(z,5)
 endif 
 
 
  if var(z,6)>=maiorx(3,6)
  maiorx(3,6)=var(z,6)
 endif
 if var(z,6)<menorx(3,6)
  menorx(3,6)=var(z,6)
 endif
 
  if var(z,7)>=maiorx(3,7)
  maiorx(3,7)=var(z,7)
 endif
 if var(z,7)<menorx(3,7)
  menorx(3,7)=var(z,7)
 endif
 
  if var(z,8)>=maiorx(3,8)
  maiorx(3,8)=var(z,8)
 endif
 if var(z,8)<menorx(3,8)
  menorx(3,8)=var(z,8)
 endif 
endif


endfor
Media(1,1)=valor(1,1)/totalx(1,1)
Media(1,2)=valor(1,2)/totalx(1,1)
Media(1,3)=valor(1,3)/totalx(1,1)
Media(1,4)=valor(1,4)/totalx(1,1)
Media(1,5)=valor(1,5)/totalx(1,1)
Media(1,6)=valor(1,6)/totalx(1,1)
Media(1,7)=valor(1,7)/totalx(1,1)
Media(1,8)=valor(1,8)/totalx(1,1)

Media(2,1)=valor(2,1)/totalx(2,1)
Media(2,2)=valor(2,2)/totalx(2,1)
Media(2,3)=valor(2,3)/totalx(2,1)
Media(2,4)=valor(2,4)/totalx(2,1)
Media(2,5)=valor(2,5)/totalx(2,1)
Media(2,6)=valor(2,6)/totalx(2,1)
Media(2,7)=valor(2,7)/totalx(2,1)
Media(2,8)=valor(2,8)/totalx(2,1)

Media(3,1)=valor(3,1)/totalx(3,1)
Media(3,2)=valor(3,2)/totalx(3,1)
Media(3,3)=valor(3,3)/totalx(3,1)
Media(3,4)=valor(3,4)/totalx(3,1)
Media(3,5)=valor(3,5)/totalx(3,1)
Media(3,6)=valor(3,6)/totalx(3,1)
Media(3,7)=valor(3,7)/totalx(3,1)
Media(3,8)=valor(3,8)/totalx(3,1)

&&? media
for zx= 1 to 3
  ? "Menor e maior por tipo e por especie"
  ? zx,1,"- Menor - ", menorx(zx,1)," - Maior - ",maiorx(zx,1)
  ? zx,2,"- Menor - ", menorx(zx,2)," - Maior - ",maiorx(zx,2)
  ? zx,3,"- Menor - ", menorx(zx,3)," - Maior - ",maiorx(zx,3)
  ? zx,4,"- Menor - ", menorx(zx,4)," - Maior - ",maiorx(zx,4)
  ? zx,5,"- Menor - ", menorx(zx,5)," - Maior - ",maiorx(zx,5)
  ? zx,6,"- Menor - ", menorx(zx,6)," - Maior - ",maiorx(zx,6)
  ? zx,7,"- Menor - ", menorx(zx,7)," - Maior - ",maiorx(zx,7)
  ? zx,8,"- Menor - ", menorx(zx,8)," - Maior - ",maiorx(zx,8)
      
  wait
  for zx1=1 to 8
   ? "Valor : ",valor(zx,zx1)
   ? "quant : ",totalx(zx,zx1)
   ? "Media : ", Media(zx,zx1)
  endfor
endfor
go top
do while .not. eof()

   if species="NO TROMBOSIS TEP OR"
    replace varl1 with (var1-media(1,1))/media(1,1)
    replace varl2 with (var2-media(1,2))/media(1,2)
    replace varl3 with (var3-media(1,3))/media(1,3)
    replace varl4 with (var4-media(1,4))/media(1,4)
    replace varl5 with (var5-media(1,5))/media(1,5)
    replace varl6 with (var6-media(1,6))/media(1,6)
    replace varl7 with (var7-media(1,7))/media(1,7)
    replace varl8 with (var8-media(1,8))/media(1,8)
   endif
   if species="AT LEAST ONE TYPE (T"
    replace varl1 with (var1-media(2,1))/media(2,1)
    replace varl2 with (var2-media(2,2))/media(2,2)
    replace varl3 with (var3-media(2,3))/media(2,3)
    replace varl4 with (var4-media(2,4))/media(2,4)
    replace varl5 with (var5-media(2,5))/media(2,5)
    replace varl6 with (var6-media(2,6))/media(2,6)
    replace varl7 with (var7-media(2,7))/media(2,7)
    replace varl8 with (var8-media(2,8))/media(2,8)
   endif
   if species="YES BOTH TYPES (TEP"
    replace varl1 with (var1-media(3,1))/media(3,1)
    replace varl2 with (var2-media(3,2))/media(3,2)
    replace varl3 with (var3-media(3,3))/media(3,3)
    replace varl4 with (var4-media(3,4))/media(3,4)
    replace varl5 with (var5-media(3,5))/media(3,5)
    replace varl6 with (var6-media(3,6))/media(3,6)
    replace varl7 with (var7-media(3,7))/media(3,7)
    replace varl8 with (var8-media(3,8))/media(3,8)
   endif
   
   skip
enddo

mediageral=abs(varl1)+abs(varl2)+abs(varl3)+abs(varl4)+abs(varl5)+abs(varl6)+abs(varl7)+abs(varl8)
COPY TO d:\ai\medicina\tablex0 
select 2
use d:\ai\medicina\tablex0
dele all for  abs(varl1)>exclusao .or.  abs(varl2)>exclusao .or. abs(varl3)>exclusao .or. abs(varl4)>exclusao .or. abs(varl5)>exclusao .or. abs(varl6)>exclusao .or. abs(varl7)>exclusao .or. abs(varl8)>exclusao 
pack
 
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
&&& Selecionamos o subset de amostras que sao consideradas validas como base de analise &&
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


go bottom
store recno() to yy1
dimension varx(yy1,9)
go top
y1=0
go top
do while .not. eof()
 y1=y1+1
 store var1 to varx(y1,1)
 store var2 to varx(y1,2)
 store var3 to varx(y1,3)
 store var4 to varx(y1,4)
 store var5 to varx(y1,5)
 store var6 to varx(y1,6)
 store var7 to varx(y1,7)
 store var8 to varx(y1,8)
 
 
 store species    to varx(y1,9)

 skip
enddo
? y1
wait
dimension maiorx(3,8)
dimension menorx(3,8) &&& tres sao as categoria e quatro as variaveis
for ss=1 to 3
 for ss1=1 to 8
  maiorx(ss,ss1)=0.00
  menorx(ss,ss1)=1000000.000
 endfor
endfor


for z=1 to y1
 &&? "Maior e menor por tipo de servico geral normalizado "
 &&? var1(z,1),"-",var1(z,2),"-",var1(z,3),"-",var1(z,4),"-",var(z,5),"-", 
 &&wait
if varx(z,9)="NO TROMBOSIS TEP OR"


 if varx(z,1)>=maiorx(1,1)
  maiorx(1,1)=varx(z,1)
 endif
 if varx(z,1)<menorx(1,1)
  menorx(1,1)=varx(z,1)
 endif
 &&wait
 if varx(z,2)>=maiorx(1,2)
  maiorx(1,2)=varx(z,2)
 endif
 if varx(z,2)<menorx(1,2)
  menorx(1,2)=varx(z,2)
 endif
 
 if varx(z,3)>=maiorx(1,3)
  maiorx(1,3)=varx(z,3)
 endif
 if varx(z,3)<menorx(1,3)
  menorx(1,3)=varx(z,3)
 endif
 
 if varx(z,4)>=maiorx(1,4)
  maiorx(1,4)=varx(z,4)
 endif
 if varx(z,4)<menorx(1,4)
  menorx(1,4)=varx(z,4)
 endif
   if var(z,5)>=maiorx(1,5)
  maiorx(1,5)=var(z,5)
 endif
 if var(z,5)<menorx(1,5)
  menorx(1,5)=var(z,5)
 endif 
 
   if var(z,6)>=maiorx(1,6)
  maiorx(1,6)=var(z,6)
 endif
 if var(z,6)<menorx(1,6)
  menorx(1,6)=var(z,6)
 endif
 
  if var(z,7)>=maiorx(1,7)
  maiorx(1,7)=var(z,7)
 endif
 if var(z,7)<menorx(1,7)
  menorx(1,7)=var(z,7)
 endif
 
  if var(z,8)>=maiorx(1,8)
  maiorx(1,8)=var(z,8)
 endif
 if var(z,8)<menorx(1,8)
  menorx(1,8)=var(z,8)
 endif
 && ? maior(1,1)
 && wait
endif

if varx(z,9)="AT LEAST ONE TYPE (T"

 if varx(z,1)>=maiorx(2,1)
  maiorx(2,1)=varx(z,1)
 endif
 if varx(z,1)<menorx(2,1)
  menorx(2,1)=varx(z,1)
 endif

 if varx(z,2)>=maiorx(2,2)
  maiorx(2,2)=varx(z,2)
 endif
 if var(z,2)<menorx(2,2)
  menorx(2,2)=var(z,2)
 endif
 
 if varx(z,3)>=maiorx(2,3)
  maiorx(2,3)=varx(z,3)
 endif
 if varx(z,3)<menorx(2,3)
  menorx(2,3)=varx(z,3)
 endif
 
 if varx(z,4)>=maiorx(2,4)
  maiorx(2,4)=varx(z,4)
 endif
 if varx(z,4)<menorx(2,4)
  menorx(2,4)=varx(z,4)
 endif
    if var(z,5)>=maiorx(2,5)
  maiorx(2,5)=var(z,5)
 endif
 if var(z,5)<menorx(2,5)
  menorx(2,5)=var(z,5)
 endif 
 if var(z,6)>=maiorx(2,6)
  maiorx(2,6)=var(z,6)
 endif
 if var(z,6)<menorx(2,6)
  menorx(2,6)=var(z,6)
 endif
 
  if var(z,7)>=maiorx(2,7)
  maiorx(2,7)=var(z,7)
 endif
 if var(z,7)<menorx(2,7)
  menorx(2,7)=var(z,7)
 endif
 
  if var(z,8)>=maiorx(2,8)
  maiorx(2,8)=var(z,8)
 endif
 if var(z,8)<menorx(2,8)
  menorx(2,8)=var(z,8)
 endif
endif

if varx(z,9)="YES BOTH TYPES (TEP"

 if varx(z,1)>=maiorx(3,1)
  maiorx(3,1)=varx(z,1)
 endif
 if varx(z,1)<menorx(3,1)
  menorx(3,1)=varx(z,1)
 endif

 if varx(z,2)>=maiorx(3,2)
  maiorx(3,2)=varx(z,2)
 endif
 if varx(z,2)<menorx(3,2)
  menorx(3,2)=varx(z,2)
 endif
 
 if varx(z,3)>=maiorx(3,3)
  maiorx(3,3)=varx(z,3)
 endif
 if varx(z,3)<menorx(3,3)
  menorx(3,3)=varx(z,3)
 endif
 
 if varx(z,4)>=maiorx(3,4)
  maiorx(3,4)=varx(z,4)
 endif
 if varx(z,4)<menorx(3,4)
  menorx(3,4)=varx(z,4)
 endif

  if var(z,5)>=maiorx(3,5)
  maiorx(3,5)=var(z,5)
 endif
 if var(z,5)<menorx(3,5)
  menorx(3,5)=var(z,5)
 endif 
   if var(z,6)>=maiorx(3,6)
  maiorx(3,6)=var(z,6)
 endif
 if var(z,6)<menorx(3,6)
  menorx(3,6)=var(z,6)
 endif
 if var(z,7)>=maiorx(3,7)
  maiorx(3,7)=var(z,7)
 endif
 if var(z,7)<menorx(3,7)
  menorx(3,7)=var(z,7)
 endif
 
  if var(z,8)>=maiorx(3,8)
  maiorx(3,8)=var(z,8)
 endif
 if var(z,8)<menorx(3,8)
  menorx(3,8)=var(z,8)
 endif 
endif


endfor

&&? media
for zx= 1 to 3
  ? "Menor e maior por tipo e por especie"
  ? zx,1,"- Menor - ", menorx(zx,1)," - Maior - ",maiorx(zx,1)
  ? zx,2,"- Menor - ", menorx(zx,2)," - Maior - ",maiorx(zx,2)
  ? zx,3,"- Menor - ", menorx(zx,3)," - Maior - ",maiorx(zx,3)
  ? zx,4,"- Menor - ", menorx(zx,4)," - Maior - ",maiorx(zx,4)
  ? zx,5,"- Menor - ", menorx(zx,5)," - Maior - ",maiorx(zx,5)
  ? zx,6,"- Menor - ", menorx(zx,6)," - Maior - ",maiorx(zx,6)
  ? zx,7,"- Menor - ", menorx(zx,7)," - Maior - ",maiorx(zx,7)
  ? zx,8,"- Menor - ", menorx(zx,8)," - Maior - ",maiorx(zx,8)
  wait

endfor

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&[
&& Verificando quantos matches tem nos quatro itens
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
select 3
use d:\ai\medicina\tabley1
go bottom
store recno() to xx
dimension tabela(3,9)
dimension vary(xx,9)
y2=0
go top
do while .not. eof()
 y2=y2+1
 store var1 to vary(y2,1)
 store var2 to vary(y2,2)
 store var3 to vary(y2,3)
 store var4 to vary(y2,4)
 store var5 to vary(y2,5)
 store var6 to vary(y2,6)
 store var7 to vary(y2,7)
 store var8 to vary(y2,8)
 store species    to vary(y2,9)

 skip
enddo

go top
do while .not. eof()
 replace var01x01 with "NAO"
 replace var01x02 with "NAO"
 replace var01x03 with "NAO"
 replace var01x04 with "NAO"
 replace var01x05 with "NAO"
 replace var01x06 with "NAO"
 replace var01x07 with "NAO" 
 replace var01x08 with "NAO"


 replace var02x01 with "NAO"
 replace var02x02 with "NAO"
 replace var02x03 with "NAO"
 replace var02x04 with "NAO"
 replace var02x05 with "NAO"
 replace var02x06 with "NAO"
 replace var02x07 with "NAO" 
 replace var02x08 with "NAO"
 
 replace var03x01 with "NAO"
 replace var03x02 with "NAO"
 replace var03x03 with "NAO"
 replace var03x04 with "NAO"
 replace var03x05 with "NAO"
 replace var03x06 with "NAO"
 replace var03x07 with "NAO" 
 replace var03x08 with "NAO"
 
 store recno() to ssx3
 store species to tespecie


 
for ssx1 = 1 to 3
 for ssx2= 1 to 8

   
  if ssx1=1
  && ? vary(ssx3,ssx2),menorx(ssx1,ssx2),vary(ssx3,ssx2),maiorx(ssx1,ssx2)
  && wait
  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
  && setosa
  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
  &&? ssx3,ssx2
 
    if  vary(ssx3,ssx2)>=menorx(ssx1,ssx2) .and. vary(ssx3,ssx2)<=maiorx(ssx1,ssx2)
      
      if ssx2=1
       replace var01x01 with "SIM"
      endif
      if ssx2=2
       replace var01x02 with "SIM"
      endif
       if ssx2=3
       replace var01x03 with "SIM"
      endif
      if ssx2=4
       replace var01x04 with "SIM"
      endif
      if ssx2=5
       replace var01x05 with "SIM"
      endif
      if ssx2=6
       replace var01x06 with "SIM"
      endif
      if ssx2=7
       replace var01x07 with "SIM"
      endif
      if ssx2=8
       replace var01x08 with "SIM"
      endif
      
      
    endif
   endif
   
   if ssx1=2
   && ? vary(ssx3,ssx2),menorx(ssx1,ssx2),vary(ssx3,ssx2),maiorx(ssx1,ssx2)
   && wait
   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
   && versicolor
   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
    if  vary(ssx3,ssx2)>=menorx(ssx1,ssx2) .and. vary(ssx3,ssx2)<=maiorx(ssx1,ssx2)
     
     if ssx2=1
       replace var02x01 with "SIM"
      endif
      if ssx2=2
       replace var02x02 with "SIM"
      endif
       if ssx2=3
       replace var02x03 with "SIM"
      endif
      if ssx2=4
       replace var02x04 with "SIM"
      endif
      if ssx2=5
       replace var02x05 with "SIM"
      endif
       if ssx2=6
       replace var02x06 with "SIM"
      endif
      if ssx2=7
       replace var02x07 with "SIM"
      endif
      if ssx2=8
       replace var02x08 with "SIM"
      endif
  
    endif
   endif
   if ssx1=3
   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
   && vir
   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
   && ? vary(ssx3,ssx2),menorx(ssx1,ssx2),vary(ssx3,ssx2),maiorx(ssx1,ssx2)
   && wait
    if  vary(ssx3,ssx2)>=menorx(ssx1,ssx2) .and. vary(ssx3,ssx2)<=maiorx(ssx1,ssx2)
     
    if ssx2=1
       replace var03x01 with "SIM"
      endif
      if ssx2=2
       replace var03x02 with "SIM"
      endif
       if ssx2=3
       replace var03x03 with "SIM"
      endif
      if ssx2=4
       replace var03x04 with "SIM"
      endif
      if ssx2=5
       replace var03x05 with "SIM"
      endif
        if ssx2=6
       replace var03x06 with "SIM"
      endif
      if ssx2=7
       replace var03x07 with "SIM"
      endif
      if ssx2=8
       replace var03x08 with "SIM"
      endif
  
  
  
    endif
   endif

   
   
   

 endfor
endfor
skip
enddo   


replace all selecao with ""
replace all otimo   with ""
go top
do while .not. eof()
store recno() to record
for ssx1 = 1 to 3


   
 


   

         
  && ? vary(ssx3,ssx2),menorx(ssx1,ssx2),vary(ssx3,ssx2),maiorx(ssx1,ssx2)
  && wait
  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
  && setosa
  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
  &&? ssx3,ssx2
  if ssx1<10
    varxx1="var0"+str(ssx1,1,0)+"x01"
     varxx2="var0"+str(ssx1,1,0)+"x02"
      varxx3="var0"+str(ssx1,1,0)+"x03"
       varxx4="var0"+str(ssx1,1,0)+"x04"
        varxx5="var0"+str(ssx1,1,0)+"x05"
         varxx6="var0"+str(ssx1,1,0)+"x06"
          varxx7="var0"+str(ssx1,1,0)+"x07"
           varxx8="var0"+str(ssx1,1,0)+"x08"
  else
    varxx1="var"+str(ssx1,2,0)+"x01"
     varxx2="var"+str(ssx1,2,0)+"x02"
      varxx3="var"+str(ssx1,2,0)+"x03"
       varxx4="var"+str(ssx1,2,0)+"x04"
        varxx5="var"+str(ssx1,2,0)+"x05"
         varxx6="var"+str(ssx1,2,0)+"x06"
          varxx7="var"+str(ssx1,2,0)+"x07"
           varxx8="var"+str(ssx1,2,0)+"x08"
  endif
  
    if  &varxx1="SIM" .and. &varxx2="SIM" .and. &varxx3="SIM" .and. &varxx4="SIM" .and. &varxx5="SIM" .and. &varxx6="SIM" .and. &varxx7="SIM" .and. &varxx8="SIM"
      ? varxx1,&varxx1,varxx2,&varxx2,varxx3,&varxx3,varxx4,&varxx4,&varxx5,&varxx6,&varxx7,&varxx8,ssx1, record
      wait
      store trim(selecao) to selecaox
      replace selecao with selecaox+str(ssx1,2,0)+" ou "
      replace otimo   with str(ssx1,2,0)
    
    endif
 



endfor
 
skip
enddo



