select 1
use d:\ai\medicina\tablex0
select 2
use d:\ai\medicina\BD3
go top
do while .not. eof()
 store tm   to tvar1
 store asa  to tvar2
 store var3 to tvar3
 store imc  to tvar4
 store resultado to trange
 select 1
 append blank
 replace sepallengt with tvar1
 replace sepalwidth with tvar2
 replace petallengt with tvar3
 replace petalwidth with tvar4
 replace species with trange
 select 2
 skip
enddo