#Esta funcion realiza el calculo y grafica de la
#aproximacion del numero e con t(numero de periodos a nuestro gusto) como argumento de entrada

simulaNumeroE=function(nTotal){
  #Creamos un objeto tipo data.frame con los calculos del numero e:
  #Primero creamos los objetos que seran insumos para el calculo de VF:
  VA=1
  i=1
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
  
  return(objetolista1)
}
