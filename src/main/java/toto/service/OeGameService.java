package toto.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import toto.dao.OeGameDao;
import toto.vo.OeGameResult;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OeGameService {
    @Autowired(required=false)
    private OeGameDao dao;

    public int getCurPoint(String id){
        return dao.getAccountIdPoint(id);
    }
    public OeGameResult playOeGame(String choice, int curPoint, int inputPoint, String curId, double odds){
        int resultpoint = curPoint - inputPoint;
        Map<String, Object> upd = new HashMap<>();
        upd.put("id",curId);
        upd.put("point",resultpoint);
        dao.updatePoint(upd);
        int rand = (int)(Math.random()*100+1);
        int win = 0;
        System.out.println("생성된 랜덤값 : "+rand+" 홀수?짝수? : "+choice+" 마이너스?"+upd.get("point"));
        if((choice.equals("홀") && rand%2 == 1) || (choice.equals("짝") && rand%2 == 0)){
            upd.put("point",resultpoint+inputPoint*odds);
            resultpoint += inputPoint*odds;
            win = 1;
            dao.updatePoint(upd);
        }

        OeGameResult result = new OeGameResult(0,rand,choice,win,curPoint,resultpoint,curId);
        dao.insertOeResult(result);

        return result;
    }
    public List<OeGameResult> getOeHistory(String curId){
        List<OeGameResult> list = dao.getOeGameResultList(curId);
        //System.out.println("내역 수 : "  + list.size());
        //System.out.println("첫번째 결과 : "+list.get(0).getWin());
        return list;
    }

    public int getAuth(String curId){
        return dao.getAuth(curId);
    }

    public List<OeGameResult> schOeGameResult(OeGameResult sch){
        return dao.schOeGameResult(sch);
    }
}
