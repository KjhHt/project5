package toto.dao;

import org.springframework.stereotype.Repository;
import toto.vo.Account;
import toto.vo.OeGameResult;

import java.util.List;
import java.util.Map;

@Repository
public interface OeGameDao {
    public int getAccountIdPoint(String id);
    public void updatePoint(Map<String, Object> upd);
    public void insertOeResult(OeGameResult rst);
    public List<OeGameResult> getOeGameResultList(String id);
    public List<OeGameResult> schOeGameResult(OeGameResult sch);
    public int getAuth(String id);
}
