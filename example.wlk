object casa {
  var cuidador = tom
  var suciedad = 0
  var quilombero = null

  method suciedad (suciedadCasa){
    suciedad = suciedadCasa
  }

  method menosSuciedad(cantidad){
    suciedad -= cantidad
  }

  method masSuciedad(cantidad){
    suciedad += cantidad
  }
   
  method cuidador(elCuidador){ //setter 
    cuidador = elCuidador 
  }
  method cuidador() = cuidador //getter

  method quilombero(elQuilombero){
    quilombero = elQuilombero
  }

}

object tom {
  var energia = 0

  method velocidad () = 5 + energia / 10

  method dormir(){
    energia += 50
  }

  method atrapaQuilombero (quilombero) = self.velocidad() > quilombero.velocidad()

    method limpiar(){
      energia -= 40
      casa.menosSuciedad(100)
      }
    

  method interrumpirSueno(){
    energia -= 20
  }
}

object jerry {
  var peso = 50
  
  method velocidad() =10 - peso

  method hacerQuilombo(){
    casa.masSuciedad(110)
    self.robarComida()
  }

  method robarComida (){
    peso +=1
  }

}

object tuffy {
  method velocidad() = 10

  method hacerQuilombo(){
    casa.cuidador().interrumpirSueno()
  }
  }

object robocat{
  method limpiar (){
    casa.suciedad(0)
  }

  method atraparQuilombero(quilombero)= true

  method dormir(){
    //no modifica nada?
  }

  method interrumpirSueno(){
    //no hace nada
  }

}

object pandilla{
  const pandilleros = []

  method agregarPandillero( pandillero){
    pandilleros.add(pandillero)
  }

  method velocidad(){
    return self.masLento().velocidad().div(2)
  }

  method masLento(){
    return pandilleros.min({p => p.velocidad()})
  }

  method hacerQuilombo(){
    pandilleros.forEach({p => p.hacerQuilombo()})
    if(pandilleros.size()> 3){
      casa.cuidador().interrumpirSueno()
    }
  }

}

