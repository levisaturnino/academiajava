package com.accenture.academico.dao;

import java.util.List;
import com.accenture.academico.model.Telefone;

public interface TelefoneDAO {

	public void addTelefone(Telefone t);

	public List<Telefone> listTelefones();

	public void updateTelefone(Telefone t);

	public void deleteTelefone(Telefone t);

}
