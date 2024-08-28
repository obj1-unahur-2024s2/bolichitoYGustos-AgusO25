import objetos.*
import personas.*

object bolichito {
    var objetosVidriera = munieco
    var objetosMostrador = pelota
     
     method objetosVidriera(unObjetosEnVidriera) {objetosVidriera = unObjetosEnVidriera}
     method objetosMostrador(unObjetoDelMostrador) {objetosMostrador = unObjetoDelMostrador} // Setter
     method objetosVidriera() {return objetosVidriera}
     method objetosMostrador() {return objetosMostrador} //Adquiridor

    method esBrillante(){
         {return objetosVidriera.esBrillante() && objetosMostrador.esBrillante()
     }
    }
    method esMonoCromatico(){
         {return objetosMostrador.color() == objetosVidriera.color()  
     }
    }

    method estaEquilibrado(){
        return objetosMostrador.peso() > objetosVidriera.peso()
    }

    method tieneObjetoDeColor(unColor) {
        return objetosMostrador.color() == unColor || 
        objetosVidriera.color() == unColor
    }

    method puedeMejorar(){
        return not self.estaEquilibrado() || self.esMonoCromatico()
    }

    method puedoOfrecerleAlgoA(unaPersona){
        return unaPersona.leGusta(objetosMostrador) ||
          unaPersona.leGusta(objetosVidriera)
    }

}
