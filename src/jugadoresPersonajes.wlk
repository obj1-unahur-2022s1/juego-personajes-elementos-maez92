import armas.*
import elementos.*

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

object floki {	//Personaje guerrero
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

object mario {	//Personaje trabajador.
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