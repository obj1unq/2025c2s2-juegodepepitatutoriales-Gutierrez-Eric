import silvestre.*
import nido.*
import direcciones.*
import wollok.game.*

object pepita {
	var energia = 500
	var property position= game.at(1,5)
	var property image = "pepita.png"
	var property objetivo = nido
	var property perseguidor = silvestre


	method comer(comida) {
			energia = energia + comida.energiaQueOtorga()
			game.removeVisual(comida)
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}


	 method moverHacia(direccion){
        position = direccion.siguiente(position)
    }

	method pierde(){
		image = "pepita-gris.png"
		game.say(self,"Perdi")
		game.onTick(300,"Pierde",{game.stop()})
	}

	method gana(){
		image = "pepita-grande.png"
		game.say(self,"Gane")
		game.onTick(300,"Gana",{game.stop()})
	}

	method pierdeAltura(){
		position = game.at(position.x(),(position.y()-1).max(0))
	}

}
