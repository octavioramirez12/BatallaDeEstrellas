object pamela{
	var inventario = ["algodón", "agua oxigenada", "cinta de papel", "cinta de papel"]
	var energia = 6000
	const gritoDeVictoria = "Acá pasó la Pamela"
	
	method lucharManoAMano(enemigo){
		energia += 400
	}
	
	method inventario() = inventario
	method energia() = energia
	method energia(cantidad){energia = cantidad}
	method gritoDeVictoria() = gritoDeVictoria
	
	method quitarEnergia(cantidad){
		energia = energia - cantidad
	}
}

object pocardo{
	const gritoDeVictoria = "¡Siente el poder de la música!"
	var inventario = ["guitarra", "curitas", "cotonetes"]
	var energia = 5600
	
	method lucharManoAMano(enemigo){
		energia += 500
	}
	
	method inventario() = inventario
	method energia() = energia
	method energia(cantidad){energia = cantidad}
	method gritoDeVictoria() = gritoDeVictoria
	method quitarEnergia(cantidad){
		energia = energia - cantidad
	}
}

object tulipan{
	const gritoDeVictoria = "Hora de cuidar a las plantas"
	var inventario = ["rastrillo", "maceta", "maceta", "manguera"]
	var energia = 8400
	
	method lucharManoAMano(enemigo){
		enemigo.energia(enemigo.energia() * 0.5)
	}
	
	method inventario() = inventario
	method energia() = energia
	method energia(cantidad){energia = cantidad}
	method gritoDeVictoria() = gritoDeVictoria
	
	method quitarEnergia(cantidad){
		energia = energia - cantidad
	}
}

object toro{
	const gritoDeVictoria = "No se metan con el toro"
	var inventario = []
	var energia = 7800
	
	method lucharManoAMano(enemigo){
		var inventarioEnemigo = enemigo.inventario()
		enemigo.quitarEnergia(200 * inventarioEnemigo.size())
		
		if(!inventario.contains(inventarioEnemigo.last())){
			inventario.add(inventarioEnemigo.last())
			inventarioEnemigo.remove(inventarioEnemigo.last())
		}
	}
	
	method inventario() = inventario
	method energia() = energia
	method energia(cantidad){energia = cantidad}
	method gritoDeVictoria() = gritoDeVictoria
	
	method quitarEnergia(cantidad){
		energia = energia - cantidad
	}
}