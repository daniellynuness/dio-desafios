import java.time.LocalDate;

import br.com.dio.desafio.dominio.Bootcamp;
import br.com.dio.desafio.dominio.Curso;
import br.com.dio.desafio.dominio.Dev;
import br.com.dio.desafio.dominio.Mentoria;

public class Main {

	public static void main(String[] args) {
		Curso curso1 = new Curso();
		
		curso1.setTitulo("Atalhos do Eclipse");
		curso1.setDescricao("Principais atalhos das principais IDE's para agilizar a seu trabalho!");
		curso1.setCargaHoraria(2);
		
		Curso curso2 = new Curso();
		
		curso2.setTitulo("Atalhos do VSCode");
		curso2.setDescricao("Principais atalhos das principais IDE's para agilizar a seu trabalho!");
		curso2.setCargaHoraria(2);
		
		Mentoria mentoria = new Mentoria();
		
		mentoria.setTitulo("Mentoria Anti autosabotagem");
		mentoria.setDescricao("Como evitar se autosabotar e persistir apesar das dificuldades.");
		mentoria.setData(LocalDate.now());
		
		Bootcamp bootcamp = new Bootcamp();
		bootcamp.setNome("Como fazer um bom uso das IDE's");
		bootcamp.setDescricao("Um bootcamp onde você vai aprender os principais atalhos das iDE's para se preparar "
				+"quando as estiver utilizando");
		bootcamp.getConteudos().add(curso1);
		bootcamp.getConteudos().add(curso2);
		bootcamp.getConteudos().add(mentoria);
		
		Dev devDanielly = new Dev();
		devDanielly.setNome("Danielly");
		devDanielly.inscreverBootcamp(bootcamp);
		System.out.println("Conteudos Inscritos Danielly "+devDanielly.getConteudosInscritos());
		devDanielly.progredir();
		devDanielly.progredir();
		System.out.println("Conteudos Inscritos Danielly "+devDanielly.getConteudosInscritos());
		System.out.println("Conteudos Concluidos Danielly "+devDanielly.getConteudosConcluidos());
		System.out.println("XP: "+devDanielly.calcularTotalXp());
		
		Dev devBruna = new Dev();
		devBruna.setNome("Bruna");
		devBruna.inscreverBootcamp(bootcamp);
		System.out.println("\nConteudos Inscritos Bruna "+devBruna.getConteudosInscritos());
		devBruna.progredir();
		System.out.println("Conteudos Inscritos Bruna "+devBruna.getConteudosInscritos());
		System.out.println("Conteudos Concluidos Bruna "+devBruna.getConteudosConcluidos());
		System.out.println("XP: "+devBruna.calcularTotalXp());
	
		//System.out.println(curso1);
		//System.out.println(mentoria);
		

	}

}
