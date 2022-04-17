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
		var recompensa
		if (defensaActual < 200) {
			recompensa = defensaActual / 5
			defensaActual = (defensaActual + 20).min(200)
		}
		else {
			recompensa = 0
		}
		return recompensa
	}
}

object aurora {	//Una vaca.
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
		return 15 //Recompensa otorgada.
	}
	method estaViva() {
		return estaViva
	}
}

object tipa {	//Un arbol
	var alturaActual = 8
	method altura() {
		return alturaActual
	}
	method recibirAtaque(potenciaDelAtaque) {
	}
	method recibirTrabajo() {
		alturaActual += 1
		return (alturaActual-1) * 2 //Recompensa otorgada.
	}
}