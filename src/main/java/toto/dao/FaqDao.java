package toto.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import toto.vo.Faq;

@Repository
public interface FaqDao {
	public List<Faq> faqList(Faq sch);
	
}
