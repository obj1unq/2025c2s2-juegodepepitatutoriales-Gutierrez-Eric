import silvestre.*

object pepita {
	var energia = 500
	var property position= game.at(1,5)
	var property image = "pepita.png"

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	method seEncuentraCon(){
		if(position == silvestre.position()){
			image = "pepita-gris.png"
		}
	}

}

object nido {
	var property position = game.at(8,8)
	var property image = "nido.png"
}

