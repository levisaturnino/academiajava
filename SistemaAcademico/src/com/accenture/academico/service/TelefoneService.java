package com.accenture.academico.service;

import java.util.List;

import com.accenture.academico.model.Telefone;

public interface TelefoneService {
	
	public void addTelefone(Telefone t);

	public List<Telefone> listTelefones();

	public void updateTelefone(Telefone t);

	public void deleteTelefone(Telefone t);


}
