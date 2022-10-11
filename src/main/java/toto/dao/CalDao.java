package toto.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import toto.vo.Calendar;

	@Repository
	public interface CalDao {
		public List<Calendar> calList(Calendar sch);
		
	}