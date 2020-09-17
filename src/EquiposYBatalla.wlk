import Personajes.*

object batalla{
	var equipo1
	var equipo2
	
	method equipo1() = equipo1
	method equipo2() = equipo2
	
	method energiaDelEquipo(equipo)
	{
		return equipo.sum({jugador => jugador.energia()})
	}
	
	method equipo1(equipo)
	{
		if(!(equipo.size() == 2))
		{
			return "El equipo debe tener dos jugadores"
		}
		equipo1 = equipo
		return "Asignación exitosa"
	}
	
	method equipo2(equipo)
	{
		if(!(equipo.size() == 2))
		{
			return "El equipo debe tener dos jugadores"
		}
		equipo2 = equipo
		return "Asignación exitosa"
	}
	
	method obtenerEquipoGanador(){
		if(equipo1 == null or equipo2 == null){
			return "Se deben setear los equipos primero"
		}
		const energiaEquipo1 = self.energiaDelEquipo(equipo1)
		const energiaEquipo2 = self.energiaDelEquipo(equipo2)
		
		if(energiaEquipo1 > energiaEquipo2){
			return equipo1
		}
		else if (energiaEquipo1 < energiaEquipo2){
			return equipo2
		}
		else{
			return null
		}
	}
	method comenzarBatalla()
	{
		if(equipo1 == null or equipo2 == null){
			return "Se deben setear los equipos primero"
		}
		
		equipo1.forEach({jugador=>
			equipo2.forEach({enemigo => 
				jugador.lucharManoAMano(enemigo)
				})
		})
		
		equipo2.forEach({jugador=>
			equipo1.forEach({enemigo => 
				jugador.lucharManoAMano(enemigo)
				})
		})
		
		const equipoGanador = self.obtenerEquipoGanador()
		
		if (equipoGanador == null){
			return "Hubo un empate"
		}
		
		return equipoGanador.filter({jugador => jugador.energia() > 0}).map({jugador => jugador.gritoDeVictoria()})
	}
	
}
