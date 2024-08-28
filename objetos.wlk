object rojo {
  method esColorFuerte() {
    return true
  }
}

object verde {
  method esColorFuerte() {
    return true

  }
}

object celeste {
  method esColorFuerte() {
    return false
  }
}
object pardo {
  method esColorFuerte() {
    return false
  }
}

//materiales
object cobre {
  method esBrillante() {
    return true
  }
}

object vidrio {
  method esBrillante() {
    return true
  }
}

object lino {
  method esBrillante() {
    return false
  }
}

object madera {
  method esBrillante() {
    return false
  }
}

object cuero {
  method esBrillante() {
    return false
  }
}

//cosas

object remera {
  method color() {
    return rojo
  }

  method material() {
    return lino
  }

  method peso() {
    return 800
  }
  method esDeColorFuerte() {
    return self.color().esColorFuerte()

  }

method esDeMaterialQueBrilla() {
  return self.material().esBrillante()
}

}


object pelota {
  method color() {
    return pardo
  }

  method material() {
    return cuero
  }

  method peso() {
    return 1300
  }
   method esDeColorFuerte() {
    return self.color().esColorFuerte()

  }
  method esDeMaterialQueBrilla() {
    return self.material().esBrillante()
}

}

object bibloteca {

  method color() {
    return verde
  }

  method material() {
    return madera
  }

  method peso() {
    return 8000
  }
   method esDeColorFuerte() {
    return self.color().esColorFuerte()

  }

  method esDeMaterialQueBrilla() {
   return self.material().esBrillante()
  }
}

object munieco {
   var peso = 0
  method color() {
    return celeste
  }

  method material() {
    return vidrio
  }

  method peso() {
    return peso
  }

  method peso(unPeso) {
    peso = unPeso
  }
   method esDeColorFuerte() {
    return self.color().esColorFuerte()

  }

  method esDeMaterialQueBrilla() {
   return self.material().esBrillante()
  }
}

object placa {
  var peso = 0 
  var color = verde
  method material() {
    return cobre
  }

  method peso() {
    return peso
  }

  method peso(unPeso) {
    peso = unPeso
  }

  method color() {
    return color
  }
  method color(unColor) {
    color = unColor
  }
   method esDeColorFuerte() {
    return self.color().esColorFuerte()

  }
  method esDeMaterialQueBrilla() {
   return self.material().esBrillante()
  }

}

object cajita {
  var objetoAdentro = placa

  method objetoAdentro(unObjeto) {objetoAdentro = unObjeto} //Setter
  method objetoAdentro() {return objetoAdentro} //Getter
  method peso() {return 400 + objetoAdentro.peso()}
  method material() {return cobre}
  method color() {return rojo}
  

}