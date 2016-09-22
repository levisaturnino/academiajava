package com.accenture.academico.service;

import java.util.List;

import com.accenture.academico.model.Endereco;

public interface EnderecoService {
	
	public void addEndereco(Endereco e);

	public List<Endereco> listEnderecos();

	public void updateEndereco(Endereco e);

	public void deleteEndereco(Endereco e);


}
