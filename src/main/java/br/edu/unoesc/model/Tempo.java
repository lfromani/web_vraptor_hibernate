package br.edu.unoesc.model;

public enum Tempo {
	
	minuto15("15"),
	minuto30("30"),
	minuto45("45"),
	minuto60("60"),
	minuto75("75"),
	minuto90("90"),
	minuto105("105"),
	minuto120("120"),
	minuto135("135"),
	minuto150("150"),
	minuto165("165"),
	minuto180("180");
	
	private String valor;
	
	private Tempo(String valor) {
		this.valor = valor;
	}
	
	public String getValor() {
		return valor;
	}


}
