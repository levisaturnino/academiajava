package com.accenture.academico.service;

import java.util.List;

import com.accenture.academico.model.TituloTitulacao;

public interface TituloTitulacaoService {
	public void addTituloTitulacao(TituloTitulacao t);

	public List<TituloTitulacao> listTituloTitulacaos();

	public void updateTituloTitulacao(TituloTitulacao t);

	public void deleteTituloTitulacao(TituloTitulacao t);

}