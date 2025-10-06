import wollok.game.*

class Manzana {

	const base = 5
	var madurez = 1
	const property position 
	
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}

	method image() {
		return "manzana.png"
	}

	method colisionarCon(ave){
		ave.comer(self)
	}
}


class Alpiste {

	const property position 
	const peso 
	
	method energiaQueOtorga() {
		return peso
	} 

	method image() { 
		return "alpiste.png"
	}

	method colisionarCon(ave){
		ave.comer(self)
	}

	method text(){
		return peso.toString()
	}
}

