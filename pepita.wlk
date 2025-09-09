
object pepita {
	var energia = 100
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

}

object nido {
	var property position = game.at(8,8)
	var property image = "nido.png"
}

