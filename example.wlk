object pepita {
	var energia = 100
	var entrenador = null 
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia/10
	}

	method cansada() {
		return energia < 30
	}
	
	method energia() {
		return energia
	}
    method entrenador(_entrenador){
		entrenador = _entrenador
	}

}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon { 
	var energia = 30

method energia(){
	return energia
}

method comer(alimento){
	energia = energia + alimento.energiaQueAporta()/2 
}

method volar(distancia){
	energia = energia - 20 -2*distancia 
}

method cansado(){
	return energia < 34
}
}


object rebeca{
	var ave = pepita //Indica que se le debe asignar un ave, inicialmente es pepita
    var vecesQueAlimentoSuAve = 0
method ave(_ave){ 
	ave = _ave 
_ave.entrenador(self) //Le dice al ave tu entrenador soy yo 
}

method alimentar(alimento){ 
	ave.comer(alimento) 
	vecesQueAlimentoSuAve= vecesQueAlimentoSuAve + 1

}

method entrenar(){ //ME TRABÉ EN LA PARTE DE ENTRENAR 
	vecesQueAlimentoSuAve = vecesQueAlimentoSuAve - 1
}

method cenas(){
	return vecesQueAlimentoSuAve
}
}


