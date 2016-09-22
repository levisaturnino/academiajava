package com.accenture.academico.dao;

import java.util.List;
import com.accenture.academico.model.Aluno;

public interface AlunoDAO {

	public void addAluno(Aluno a);

	public List<Aluno> listAlunos();

	public void updateAluno(Aluno a);

	public void deleteAluno(Aluno a);

}
