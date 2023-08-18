import objetos.*

object rosa {
	method leGusta(objeto) {
		return objeto.peso() <= 2000
	}	
}

object estefania {
	method leGusta(objeto) {
		return objeto.color().esFuerte()
	}
}

object luisa {
	method leGusta(objeto) {
		return objeto.material().brilla()
	}
}

object juan {
	method leGusta(objeto) {
		return !objeto.color().esFuerte() or objeto.peso().between(1200,1800)  
	}
}

object bolichito {
	var objetoVidriera
	var objetoMostrador
	
	method objetoVidriera() = objetoVidriera
	method objetoVidriera(unObjeto) {
		objetoVidriera = unObjeto
	}
	method objetoMostrador() = objetoMostrador
	method objetoMostrador(unObjeto) {
		objetoMostrador = unObjeto
	}
	method esBrillante() = objetoVidriera.material().brilla() and objetoMostrador.material().brilla()
	method esMonocromatico() = objetoVidriera.color() == objetoMostrador.color()
	method estaDesequilibrado() = objetoMostrador.peso() > objetoVidriera.peso()
	method tieneAlgoDeColor(color) = objetoVidriera.color() == color or objetoMostrador.color() == color
}
