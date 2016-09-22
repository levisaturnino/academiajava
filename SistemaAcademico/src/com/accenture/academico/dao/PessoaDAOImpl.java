package com.accenture.academico.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.accenture.academico.model.Pessoa;

public class PessoaDAOImpl implements PessoaDAO {
	
	
	private static final Logger logger = LoggerFactory.getLogger(PessoaDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void addPessoa(Pessoa p) {
		// TODO Auto-generated method stub
		
		Session session = this.sessionFactory.getCurrentSession();
        session.persist(p);
        logger.info("PESSOA ADICIONADA COM SUCESSO, DETALHES: "+p);	

	}

	@Override
	public List<Pessoa> listPessoas() {
		// TODO Auto-generated method stub

		Session session = this.sessionFactory.getCurrentSession();
        List<Pessoa> PessoasList = session.createQuery("de Pessoa").list();
        for(Pessoa p : PessoasList){
            logger.info("Pessoa List::"+p);
        }
        return PessoasList;
	
	}

	@Override
	public void updatePessoa(Pessoa p) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deletePessoa(Pessoa p) {
		// TODO Auto-generated method stub

	}

}
