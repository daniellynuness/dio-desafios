package br.com.dio.desafio.dominio;

//ATRIBUTOS: TÍTULO, DESCRIÇÃO E CARGA HORÁRIA
//MÉTODO: CALCULARXP()
public class Curso extends Conteudo {
	
	private int cargaHoraria;
	
	@Override
	public double calcularXp() {
		return xp_padrao*cargaHoraria;
	}
	
	public int getCargaHoraria() {
		return cargaHoraria;
	}
	public void setCargaHoraria(int cargaHoraria) {
		this.cargaHoraria = cargaHoraria;
	}
	
	@Override
	public String toString() {
		return "Curso [titulo=" + getTitulo() + ", descricao=" + getDescricao() + ", cargaHoraria=" + cargaHoraria + "]";
	}
	
	
	
	
	
}
