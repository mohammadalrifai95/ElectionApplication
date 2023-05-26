package com.election.mainapp.voting.dao;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery.FetchableFluentQuery;
import org.springframework.stereotype.Repository;

import com.election.mainapp.voting.daoI.VoterDaoI;
import com.election.mainapp.voting.data.VoterData;

@Repository
public class VoterDao implements VoterDaoI{

	public VoterDao() {

	}

	
	@Override
	public VoterData getVoterById(int id) {

		VoterData v = new VoterData();
		
		
		return v;
	}


	@Override
	public void flush() {
		// TODO Auto-generated method stub
		
	}


	@Override
	public <S extends VoterData> S saveAndFlush(S entity) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <S extends VoterData> List<S> saveAllAndFlush(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void deleteAllInBatch(Iterable<VoterData> entities) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void deleteAllByIdInBatch(Iterable<Integer> ids) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void deleteAllInBatch() {
		// TODO Auto-generated method stub
		
	}


	@Override
	public VoterData getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public VoterData getById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public VoterData getReferenceById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <S extends VoterData> List<S> findAll(Example<S> example) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <S extends VoterData> List<S> findAll(Example<S> example, Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <S extends VoterData> List<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<VoterData> findAll() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<VoterData> findAllById(Iterable<Integer> ids) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <S extends VoterData> S save(S entity) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Optional<VoterData> findById(Integer id) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}


	@Override
	public boolean existsById(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void delete(VoterData entity) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void deleteAllById(Iterable<? extends Integer> ids) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void deleteAll(Iterable<? extends VoterData> entities) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}


	@Override
	public List<VoterData> findAll(Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Page<VoterData> findAll(Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <S extends VoterData> Optional<S> findOne(Example<S> example) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}


	@Override
	public <S extends VoterData> Page<S> findAll(Example<S> example, Pageable pageable) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <S extends VoterData> long count(Example<S> example) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public <S extends VoterData> boolean exists(Example<S> example) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public <S extends VoterData, R> R findBy(Example<S> example, Function<FetchableFluentQuery<S>, R> queryFunction) {
		// TODO Auto-generated method stub
		return null;
	}

}
