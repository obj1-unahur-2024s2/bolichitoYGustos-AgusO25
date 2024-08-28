import objetos.*
import personas.*

object bolichito {
    var objetosVidriera = munieco
    var objetosMostrador = pelota
     
     method objetosVidriera(unObjetosEnVidriera) {objetosVidriera = unObjetosEnVidriera}
     method objetosMostrador(unObjetoDelMostrador) {objetosMostrador = unObjetoDelMostrador}
     method objetosVidriera() {return objetosVidriera}
     method objetosMostrador() {return objetosMostrador}

    method esBrillante(){
         {return objetosVidriera.esBrillante() && objetosMostrador.esBrillante()
     }
    }
    method esMonoCromatico(){
         {return objetosMostrador.color() == objetoVidriera.color()  
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
