package com.accenture.academico.service;

import java.util.List;

import com.accenture.academico.model.Publicacao;

public interface PublicacaoService {
	
	public void addPublicacao(Publicacao p);

	public List<Publicacao> listPublicacoes();

	public void updatePublicacao(Publicacao p);

	public void deletePublicacao(Publicacao p);


}
