package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.CloDao;
import toto.vo.Closing;

	@Service
	public class ClosingService {
		@Autowired(required=false)
		private CloDao dao;
		
		public List<Closing> cloList(Closing sch){
			return dao.cloList(sch);
		}
}
