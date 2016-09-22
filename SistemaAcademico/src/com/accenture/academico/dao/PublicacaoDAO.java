package com.accenture.academico.dao;

import java.util.List;
import com.accenture.academico.model.Publicacao;

public interface PublicacaoDAO {

	public void addPublicacao(Publicacao p);

	public List<Publicacao> listPublicacoes();

	public void updatePublicacao(Publicacao p);

	public void deletePublicacao(Publicacao p);

}
