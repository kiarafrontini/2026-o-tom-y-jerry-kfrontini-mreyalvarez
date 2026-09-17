object casa {
  var cuidador = tom
   var suciedad = 0
   var quilombero = elQuilombero

   method suciedad (suciedadCasa){
    suciedad = suciedadCasa
   }
   
   method cuidador(elCuidador){
    cuidador = elCuidador 
   }

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

  method atrapaQuilombero (quilombero) {
    if (velocidad > quilombero.velocidad){
      return true
    } else return false 
    }

    method limpiar(){
      energia -= 40
      casa.suciedad(casa.suciedad()-100)
      }
    

  method interrumpirSueño(){
    energia -= 20
  }
}

object jerry {
  var peso = 50 
  var velocidad =10 - peso
  method hacerQuilombo(){
    casa.suciedad += 110
  }

  method robarcomida (){
    peso +=1
  }

}

object tuffy {
  var velocidad = 10

  method hacerQuilombo(){

  }
  }

object robocat{
  method limpiar (){
    casa.suciedad = 0
  }

  method atraparQuilombero(quilombero)= true


}

