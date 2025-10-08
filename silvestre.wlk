import pepita.*
object silvestre {
    var property position = game.at(1,1)

    method image () = "silvestre.png"

    method perseguirA(presa){
         position = game.at(presa.position().x().max(3),1)
    }

    method colisionarCon(ave){
		ave.pierde()
	}
}
