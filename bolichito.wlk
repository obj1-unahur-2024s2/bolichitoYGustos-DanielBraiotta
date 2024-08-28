import objetos.*
import personas.*

object bolichito {
  var objetoEnMostrador = pelota
  var objetoEnVidriera = munieco

  method objetoEnVidriera(unObjetoEnVidriera) {//setter
    objetoEnVidriera = unObjetoEnVidriera
    }

  method objetoEnMostrador(unObjetoEnMostrador) {//setter
    objetoEnMostrador = unObjetoEnMostrador
    } 

  method objetoEnVidriera() {//getter
    return objetoEnVidriera
  }
  method objetoEnMostrador() {//getter
    return objetoEnMostrador
  }

  method esBlillante() {
    return objetoEnMostrador.esBlillante() && objetoEnVidriera.esBlillante()
  }
  method esMonocromatico() {
    return objetoEnMostrador.color() == objetoEnVidriera.color()
  }
    method estaEquilibrado() {
    return objetoEnMostrador.peso() > objetoEnVidriera.peso()
  }

  method tieneObjetoDeColor(unColor) {
    return objetoEnMostrador.color() == unColor && objetoEnVidriera.color() == unColor
  }

  method puedeMejorar() {
    return !self.estaEquilibrado() || self.esMonocromatico()
  }

  method puedeOfreserAlgoA(unaPersona) {
    return unaPersona.leGusta(objetoEnVidriera)|| unaPersona.leGusta(objetoEnMostrador)
  }
}