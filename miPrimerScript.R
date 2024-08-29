# Este es nuestro primer script de R en clase:
#Creamos un objeto numerico llamado a:
a=5
#Creamos un objeto numerico llamado A:
A=5
#Creamos un objeto numerico llamado "A.2":
A.2=5
#Creamos un vector de numeros:
vector1=c(1,2,pi,10)
#Creamos un vector con una secuencia de numeros del 1 al 100,000:
t=1:100000
#Creamos una secuencia de nuemros pero ahora se incremnetan en 0.02 unidades:
t2=seq(from=1,to=10,by=0.02)
#Creamos un objeto con una sola cadena de texto:
objetoTexto1="UMSNH"
#Creamos un vector con cadenas de texto:
vectorTexto=c("FCCA","UMSNH","2024")

#Creamos un objeto tipo data.frame con los calculos del numero e:
#Primero creamos los objetos que seran insumos para el calculo de VF:
VA=1
i=1
nTotal=10000
t=1:nTotal
tablaNumeroe=data.frame(
                        t=t,
                        VF=VA*((1+(i/t))^t)
                        )

#Creamos un objeto tipo lista  con la tabla del numero e y algunos otros objetos:
objetolista1=list(
                  tablaE=tablaNumeroe,
                  valorActual=VA,
                  tasaInteres=i,
                  periodosSimulados=nTotal
                  )
#Ahora grafico los valores de la tabla del numero e:
plot(x=tablaNumeroe$t,y=tablaNumeroe$VF,type="l",
     col="green")




