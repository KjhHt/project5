package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.CalDao;
import toto.vo.Calendar;


	@Service
	public class CalendarService {
		@Autowired(required=false)
		private CalDao dao;
		
		public List<Calendar> calList(Calendar sch){
			return dao.calList(sch);
		}
}
