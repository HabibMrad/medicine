&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
&& calcula a media por cada uma das 4 variaveis e calcula a variancia &&
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
Set talk off
close all
exclusao=0.04 && 8%
SELECT 1
USE d:\ai\medicina\table0
go bottom
store recno() to x
dimension var(x,5)
y=0
go top
do while .not. eof()
 y=y+1
 store sepallengt to var(y,1)
 store sepalwidth to var(y,2)
 store petallengt to var(y,3)
 store petalwidth to var(y,4)
 store species    to var(y,5)

 skip
enddo
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
&& SELECIONA MAIOR E MENOR DE CADA ATRIBUTO          &&
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
&& defini��o de limites superior e inferior por categoria nao normalizado da base aberta
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

dimension maiorx(3,4)
dimension menorx(3,4) &&& tres sao as categoria e quatro as variaveis
for ss=1 to 3
 for ss1=1 to 4
  maiorx(ss,ss1)=0.00
  menorx(ss,ss1)=10000000000000.000
 endfor
endfor
? y
wait
&&
dimension totalx(3,4)
dimension valor(3,4)
dimension media(3,4)

for zx1=1 to 3
 for zx2=1 to 4
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
if var(z,5)="NO TROMBOSIS TEP OR"
  totalx(1,1)=totalx(1,1)+1
  valor(1,1)=valor(1,1)+var(z,1)
  valor(1,2)=valor(1,2)+var(z,2)
  valor(1,3)=valor(1,3)+var(z,3)
  valor(1,4)=valor(1,4)+var(z,4)

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
 && ? maior(1,1)
 && wait
endif

if var(z,5)="AT LEAST ONE TYPE (T"
  totalx(2,1)=totalx(2,1)+1
&&  ?  Totalx(2,1)
  valor(2,1)=valor(2,1)+var(z,1)
  valor(2,2)=valor(2,2)+var(z,2)
  valor(2,3)=valor(2,3)+var(z,3)
  valor(2,4)=valor(2,4)+var(z,4)
 
 
 
 
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

endif

if var(z,5)="YES BOTH TYPES (TEP"
  totalx(3,1)=totalx(3,1)+1
  valor(3,1)=valor(3,1)+var(z,1)
  valor(3,2)=valor(3,2)+var(z,2)
  valor(3,3)=valor(3,3)+var(z,3)
  valor(3,4)=valor(3,4)+var(z,4)



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

endif


endfor
Media(1,1)=valor(1,1)/totalx(1,1)
Media(1,2)=valor(1,2)/totalx(1,1)
Media(1,3)=valor(1,3)/totalx(1,1)
Media(1,4)=valor(1,4)/totalx(1,1)

Media(2,1)=valor(2,1)/totalx(2,1)
Media(2,2)=valor(2,2)/totalx(2,1)
Media(2,3)=valor(2,3)/totalx(2,1)
Media(2,4)=valor(2,4)/totalx(2,1)

Media(3,1)=valor(3,1)/totalx(3,1)
Media(3,2)=valor(3,2)/totalx(3,1)
Media(3,3)=valor(3,3)/totalx(3,1)
Media(3,4)=valor(3,4)/totalx(3,1)
&&? media
for zx= 1 to 3
  ? "Menor e maior por tipo e por especie"
  ? zx,1,"- Menor - ", menorx(zx,1)," - Maior - ",maiorx(zx,1)
  ? zx,2,"- Menor - ", menorx(zx,2)," - Maior - ",maiorx(zx,2)
  ? zx,3,"- Menor - ", menorx(zx,3)," - Maior - ",maiorx(zx,3)
  ? zx,4,"- Menor - ", menorx(zx,4)," - Maior - ",maiorx(zx,4)
  wait
  for zx1=1 to 4
   ? "Valor : ",valor(zx,zx1)
   ? "quant : ",totalx(zx,zx1)
   ? "Media : ", Media(zx,zx1)
  endfor
endfor
go top
do while .not. eof()

   if species="NO TROMBOSIS TEP OR"
    replace sepal1 with (sepallengt-media(1,1))/media(1,1)
    replace sepal2 with (sepalwidth-media(1,2))/media(1,2)
    replace petal1 with (petallengt-media(1,3))/media(1,3)
    replace petal2 with (petalwidth-media(1,4))/media(1,4)
   endif
   if species="AT LEAST ONE TYPE (T"
    replace sepal1 with (sepallengt-media(2,1))/media(2,1)
    replace sepal2 with (sepalwidth-media(2,2))/media(2,2)
    replace petal1 with (petallengt-media(2,3))/media(2,3)
    replace petal2 with (petalwidth-media(2,4))/media(2,4)
   endif
   if species="YES BOTH TYPES (TEP"
    replace sepal1 with (sepallengt-media(3,1))/media(3,1)
    replace sepal2 with (sepalwidth-media(3,2))/media(3,2)
    replace petal1 with (petallengt-media(3,3))/media(3,3)
    replace petal2 with (petalwidth-media(3,4))/media(3,4)
   endif
   
   skip
enddo

mediageral=abs(petal1)+abs(petal2)+abs(sepal1)+abs(sepal2)
COPY TO d:\ai\medicina\tablex0 
select 2
use d:\ai\medicina\tablex0
dele all for  abs(petal1)>1 .or.  abs(petal2)>.20 .or. abs(sepal1)>.40 .or. abs(sepal2)>1 
pack
 
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
&&& Selecionamos o subset de amostras que sao consideradas validas como base de analise &&
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


go bottom
store recno() to yy1
dimension varx(yy1,5)
go top
y1=0
go top
do while .not. eof()
 y1=y1+1
 store sepallengt to varx(y1,1)
 store sepalwidth to varx(y1,2)
 store petallengt to varx(y1,3)
 store petalwidth to varx(y1,4)
 store species    to varx(y1,5)

 skip
enddo

dimension maiorx(3,4)
dimension menorx(3,4) &&& tres sao as categoria e quatro as variaveis
for ss=1 to 3
 for ss1=1 to 4
  maiorx(ss,ss1)=0.00
  menorx(ss,ss1)=1000000.000
 endfor
endfor


for z=1 to y1
 &&? "Maior e menor por tipo de servico geral normalizado "
 &&? var1(z,1),"-",var1(z,2),"-",var1(z,3),"-",var1(z,4),"-",var(z,5),"-", 
 &&wait
if varx(z,5)="NO TROMBOSIS TEP OR"


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
 && ? maior(1,1)
 && wait
endif

if varx(z,5)="AT LEAST ONE TYPE (T"

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

endif

if varx(z,5)="YES BOTH TYPES (TEP"

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

endif


endfor

&&? media
for zx= 1 to 3
  ? "Menor e maior por tipo e por especie"
  ? zx,1,"- Menor - ", menorx(zx,1)," - Maior - ",maiorx(zx,1)
  ? zx,2,"- Menor - ", menorx(zx,2)," - Maior - ",maiorx(zx,2)
  ? zx,3,"- Menor - ", menorx(zx,3)," - Maior - ",maiorx(zx,3)
  ? zx,4,"- Menor - ", menorx(zx,4)," - Maior - ",maiorx(zx,4)
  wait

endfor

&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&[
&& Verificando quantos matches tem nos quatro itens
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
select 3
use d:\ai\medicina\table1
go bottom
store recno() to xx
dimension tabela(3,4)
dimension vary(xx,5)
y2=0
go top
do while .not. eof()
 y2=y2+1
 store sepallengt to vary(y2,1)
 store sepalwidth to vary(y2,2)
 store petallengt to vary(y2,3)
 store petalwidth to vary(y2,4)
 store species    to vary(y2,5)

 skip
enddo

go top
do while .not. eof()
 replace setosa1 with "NAO"
 replace setosa2 with "NAO"
 replace setosa3 with "NAO"
 replace setosa4 with "NAO"
 replace versi1  with "NAO"
 replace versi2  with "NAO"
 replace versi3  with "NAO"
 replace versi4  with "NAO"
 replace vir1    with "NAO"
 replace vir2    with "NAO"
 replace vir3    with "NAO"
 replace vir4    with "NAO"
 store recno() to ssx3
 store species to tespecie


 
for ssx1 = 1 to 3
 for ssx2= 1 to 4

   
  if ssx1=1
  && ? vary(ssx3,ssx2),menorx(ssx1,ssx2),vary(ssx3,ssx2),maiorx(ssx1,ssx2)
  && wait
  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
  && setosa
  &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
  &&? ssx3,ssx2
 
    if  vary(ssx3,ssx2)>=menorx(ssx1,ssx2) .and. vary(ssx3,ssx2)<=maiorx(ssx1,ssx2)
      if ssx2=1
       replace setosa1 with "SIM"
      endif
      if ssx2=2
       replace setosa2 with "SIM"
      endif
       if ssx2=3
       replace setosa3 with "SIM"
      endif
      if ssx2=4
       replace setosa4 with "SIM"
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
       replace versi1 with "SIM"
      endif
      if ssx2=2
       replace versi2 with "SIM"
      endif
      if ssx2=3
       replace versi3 with "SIM"
      endif    
      if ssx2=4
       replace versi4 with "SIM"
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
       replace vir1 with "SIM"
      endif
      if ssx2=2
       replace vir2 with "SIM"
      endif
      if ssx2=3
       replace vir3 with "SIM"
      endif    
      if ssx2=4
       replace vir4 with "SIM"
      endif     
  
  
  
    endif
   endif

   
   
   

 endfor
endfor
skip
enddo   

go top
do while .not. eof()
ident1=0
ident2=0
ident3=0
 REPLACE SELECAO WITH "NAO Identificado"

 
  if setosa1="SIM" 
  ident1=ident1+1
  endif
  if setosa2="SIM" 
    ident1=ident1+1
  endif
  if setosa3="SIM" 
      ident1=ident1+1
  endif
  if setosa4="SIM" 
     ident1=ident1+1
  endif


  if versi1="SIM" 
  ident2=ident2+1
  endif
  if versi2="SIM" 
    ident2=ident2+1
  endif
  if versi3="SIM" 
      ident2=ident2+1
  endif
  if versi4="SIM" 
     ident2=ident2+1
  endif



  if vIr1="SIM" 
  ident3=ident3+1
  endif
  if vIr2="SIM" 
    ident3=ident3+1
  endif
  if vIr3="SIM" 
      ident3=ident3+1
  endif
  if vIr4="SIM" 
     ident3=ident3+1
  endif
  
 if ident1>=4
   replace SELECAO with "NO TROMBOSIS TEP OR"
   ? "NO TROMBOSIS TEP OR"
 endif
 
 if ident2>=4 .and. ident1<4
     replace SELECAO with "AT LEAST ONE TYPE (T"
   ? "AT LEAST ONE TYPE (T"
 endif

 if ident3>=4
     replace SELECAO with "YES BOTH TYPES (TEP"
   ? "YES BOTH TYPES (TEP"
   WAIT
 endif

skip
enddo