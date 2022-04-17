//Armas de Floki

object ballesta {
	var flechas = 10
	method potencia() {
		return 4
	}
	method descargar() {
		flechas = 0
	}
	method utilizar() {
		flechas -= 1
	}
	method estaCargada() {
		return flechas > 0
	}
	method cantFlechas() {
		return flechas
	}
	
}

object jabalina {
	var estaUsada = false
	method potencia() {
		return 30
	}
	method utilizar() {
		estaUsada = true
	}
	method estaCargada() {
		return not estaUsada
	}
}