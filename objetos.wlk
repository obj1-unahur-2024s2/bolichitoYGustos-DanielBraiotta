//colores
object rojo {
  method esFuerte() {
    return true
  }
}
object verde {
  method esFuerte() {
    return true
  }
}
object celeste {
  method esFuerte() {
    return false
  }
}
object pardo {
  method esFuerte() {
    return false
  }
}
//materiales
object cobre {
  method esbrillante() {
    return true
  }
}
object vidrio {
  method esbrillante() {
    return true
  }
}
object lino {
  method esbrillante() {
    return false
  }
}
object madera {
  method esbrillante() {
    return false
  }
}
object cuero {
  method esbrillante() {
    return false
  }
}
//cosas
object relera {
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
    return self.color().esFuerte()
  }
  method esDeMaterialQueBrilla() {
    return self.material().esbrillante()
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
    return self.color().esFuerte()
  }
    method esDeMaterialQueBrilla() {
    return self.material().esbrillante()
  }
}
object biblioteca {
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
    return self.color().esFuerte()
  }
    method esDeMaterialQueBrilla() {
    return self.material().esbrillante()
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
  method peso() {//getter
    return peso
  }
  method peso(unPeso) {//setter
    peso = unPeso
  }
    method esDeColorFuerte() {
    return self.color().esFuerte()
  }
    method esDeMaterialQueBrilla() {
    return self.material().esbrillante()
  }
}

object placa {
  var peso = 0
  var color = rojo

  method material() {
    return cobre
  }
  method peso() {//getter
    return peso
  }
  method peso(unPeso) {//setter
    peso = unPeso
  }
    method color() {//getter
    return color
  }
  method color(unColor) {//setter
    peso = unColor
  }
    method esDeColorFuerte() {
    return self.color().esFuerte()
  }
    method esDeMaterialQueBrilla() {
    return self.material().esbrillante()
  }

}
object cajita {
  var objetoAdentro = placa

  method color() {
    return rojo
  }
  method material() {
    return cobre
  }

  method objetoAdentro() {
    return objetoAdentro
  }

  method objetoAdentro(unObjeto) {
    objetoAdentro = unObjeto
  }

  method peso() {
    return 400 + objetoAdentro.peso()
  }
    method esDeColorFuerte() {
    return self.color().esFuerte()
  }
    method esDeMaterialQueBrilla() {
    return self.material().esbrillante()
  }

}