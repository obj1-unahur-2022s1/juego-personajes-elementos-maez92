import armas.*

// JUGADORA

object luisa {
	var personajeActivo
	method setPersonajeActivo(personaje) {
		personajeActivo = personaje
	}
	method aparece(elemento) {
		personajeActivo.encontrar(elemento)
	}
	method personajeActivo() {
		return personajeActivo
	}
}

// PERSONAJES

object floki {
	var arma = ballesta
	method armaActual(){ return arma }
	method encontrar(elemento) {
		arma.utilizar()
		if (arma.estaCargada()) {
			elemento.recibirAtaque(self.armaActual().potencia())
		}
	}
	method setArmaActual(nuevaArma) {
		arma = nuevaArma
	}
}


object mario {
	var valorRecolectado = 0
	var ultimoElementoEncontrado
	method encontrar(elemento) {
		valorRecolectado += elemento.recibirTrabajo()
		ultimoElementoEncontrado = elemento
	}
	method esFeliz() {
		return valorRecolectado >= 50 or ultimoElementoEncontrado.altura() >= 10 // agregar validacion para ver si se encontro algun elemento.
	}
	method totalRecolectado() {
		return valorRecolectado
	}
	method ultimoElementoEncontrado() {
		return ultimoElementoEncontrado
	}
}

//Elementos

object castillo {
	var defensaActual = 150
	method defensa() {
		return defensaActual
	}
	method altura() {
		return 20
	}
	method recibirAtaque(potenciaDelAtaque) {
		defensaActual -= potenciaDelAtaque
	}
	method recibirTrabajo() {
		var recompensa = 0
		if (defensaActual < 200) {
			defensaActual = (defensaActual + 20).min(200)
			recompensa = defensaActual / 5
		}
		else {
			recompensa = 0
		}
		return recompensa
	}
}

object aurora {
	var estaViva = true
	method altura() {
		return 1
	}
	method recibirAtaque(potenciaDelAtaque) {
		if (potenciaDelAtaque > 10) {
				estaViva = false
		}
	}
	method recibirTrabajo() {
		return 15 //Recompensa otorgada
	}
	method estaViva() {
		return estaViva
	}
}

object tipa {
	var alturaActual = 8
	method altura() {
		return alturaActual
	}
	method recibirAtaque(potenciaDelAtaque) {
	}
	method recibirTrabajo() {
		alturaActual += 1
		return alturaActual * 2 //Recompensa otorgada
	}
}