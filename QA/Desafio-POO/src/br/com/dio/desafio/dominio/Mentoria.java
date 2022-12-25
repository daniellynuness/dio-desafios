package br.com.dio.desafio.dominio;

import java.time.LocalDate;

//ATRIBUTOS: TÍTULO, DESCRIÇÃO E DATA
//MÉTODO: CALCULARXP()
public class Mentoria extends Conteudo {
	
	private LocalDate data;
	
	@Override
	public double calcularXp() {
		// TODO Auto-generated method stub
		return xp_padrao+20d;
	}
	
	public LocalDate getData() {
		return data;
	}
	public void setData(LocalDate data) {
		this.data = data;
	}
	
	@Override
	public String toString() {
		return "Mentoria [titulo=" + getTitulo() + ", descricao=" + getDescricao() + ", data=" + data + "]";
	}
	
	
	
	
	
}
