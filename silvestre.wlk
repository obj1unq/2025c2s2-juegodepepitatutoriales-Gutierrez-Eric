import pepita.*
object silvestre {
    var property position = game.at(1,1)

    method image () = "silvestre.png"

    method moverse(){
         position = game.at(pepita.position().x(),1)
    }

    method perseguirA(pepita){
    }
}
