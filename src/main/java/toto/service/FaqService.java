package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.FaqDao;
import toto.vo.Faq;

@Service
public class FaqService {
	@Autowired(required=false)
	private FaqDao dao;
	
	public List<Faq> faqList(Faq sch){
		return dao.faqList(sch);
	}
}
