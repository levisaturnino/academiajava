package com.accenture.academico.dao;

import java.util.List;

import com.accenture.academico.model.TituloTitulacao;


public interface TituloTitulacaoDAO {

	public void addTituloTitulacao(TituloTitulacao t);

	public List<TituloTitulacao> listTituloTitulacaos();

	public void updateTituloTitulacao(TituloTitulacao t);

	public void deleteTituloTitulacao(TituloTitulacao t);

}
