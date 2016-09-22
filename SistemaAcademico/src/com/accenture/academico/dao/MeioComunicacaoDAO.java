package com.accenture.academico.dao;

import java.util.List;
import com.accenture.academico.model.MeioComunicacao;

public interface MeioComunicacaoDAO {

	public void addMeioComunicacao(MeioComunicacao m);

	public List<MeioComunicacao> listMeiosComunicacao();

	public void updateMeioComunicacao(MeioComunicacao m);

	public void deleteMeioComunicacao(MeioComunicacao m);

}
