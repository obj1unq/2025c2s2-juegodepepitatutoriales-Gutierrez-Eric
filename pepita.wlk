import silvestre.*
import nido.*
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



	//NO SE ME OCURRIO COMO APLICAR POLIMORFISMO SIN USAR MUCHOS IF

	method moverHaciaDerecha(){
		if(energia > 0){
		position = game.at(((position.x()+1).min(game.width()-1)),position.y())
		energia = energia - 9
		} else {
		image = "pepita-gris.png"
	}
}

	method moverHaciaIzquierda(){
			if(energia > 0){
		position = game.at(((position.x()-1).min(game.width()-1)),position.y())
		energia = energia - 9
		} else {
		image = "pepita-gris.png"
	}
}


	method moverHaciaArriba(){
			if(energia > 0){
		position = game.at((position.x()),(position.y()+1).min(game.width()-1))
		energia = energia - 9
		} else {
		image = "pepita-gris.png"
	}
}	

	method moverHaciaAbajo(){
			if(energia > 0){
		position = game.at((position.x()),(position.y()-1).max(0))
		energia = energia - 9
		} else {
		image = "pepita-gris.png"
		}
	}

	method pierdeAltura(){
		position = game.at(position.x(),(position.y()-1).max(0))
	}

}
