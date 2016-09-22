package com.accenture.academico.model;
// Generated 22/09/2016 16:12:49 by Hibernate Tools 4.3.5.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * TituloTitulacao generated by hbm2java
 */
@Entity
@Table(name = "titulo_titulacao", catalog = "accenture_aula")
public class TituloTitulacao implements java.io.Serializable {

	private Integer id;
	private String tituloTitulacao;
	private int professorId;

	public TituloTitulacao() {
	}

	public TituloTitulacao(String tituloTitulacao, int professorId) {
		this.tituloTitulacao = tituloTitulacao;
		this.professorId = professorId;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "titulo_titulacao", nullable = false, length = 50)
	public String getTituloTitulacao() {
		return this.tituloTitulacao;
	}

	public void setTituloTitulacao(String tituloTitulacao) {
		this.tituloTitulacao = tituloTitulacao;
	}

	@Column(name = "professor_id", nullable = false)
	public int getProfessorId() {
		return this.professorId;
	}

	public void setProfessorId(int professorId) {
		this.professorId = professorId;
	}

}
