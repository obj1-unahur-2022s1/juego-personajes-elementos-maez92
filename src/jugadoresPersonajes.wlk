import armas.*
object luisa {
	
}


object floki {
	const arma = ballesta
	method armaActual(){ return arma }
	method encontrar(elemento) {
		arma.utilizar()
		if (arma.estaCargada()) {
			elemento.recibirAtaque(arma.potencia())
		}
	}
}


object mario {
	var valorRecolectado = 0

}

//Elementos y enemigos?

object castillo {
	var defensaActual = 150
	method defensa() {
		return defensaActual
	}
}