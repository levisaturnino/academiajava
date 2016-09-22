package com.accenture.academico.service;

import java.util.List;

import com.accenture.academico.model.Pessoa;

public interface PessoaService {
	
	public void addPessoa(Pessoa p);

	public List<Pessoa> listPessoas();

	public void updatePessoa(Pessoa p);

	public void deletePessoa(Pessoa p);


}
