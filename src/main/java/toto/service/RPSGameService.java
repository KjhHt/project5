package toto.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.RPSGameDao;
import toto.vo.RPSGameResult;

@Service
public class RPSGameService {
	@Autowired(required = false)
	private RPSGameDao dao;

	public int getCurPoint(String id) {
		return dao.getCurPoint(id);
	}

	public RPSGameResult playRPS(String player, int curPoint, int bettingPoint, String curId, double odds) {
		int resultPoint = curPoint - bettingPoint;
		Map<String, Object> upt = new HashMap<>();
		upt.put("id", curId);
		upt.put("point", resultPoint);
		dao.updatePoint(upt);
		String[] com = { "가위", "바위", "보" };
		int comrandom = (int)Math.floor(Math.random() * com.length);
		String random = com[comrandom]; // 컴퓨터 가위바위보 결과 값 랜덤으로 가져오기 com[random]
		String gameResult = "";
		if ((player.equals("가위") && random.equals("가위")) // 플레이어 무승부
				|| (player.equals("바위") && random.equals("바위"))
				|| (player.equals("보") && random.equals("보"))) {
			upt.put("point", curPoint);
			resultPoint = resultPoint + bettingPoint;
			gameResult = "무승부";
			dao.updatePoint(upt);
		} else if ((player.equals("가위") && random.equals("보")) // 플레이서 승리
				|| (player.equals("바위") && random.equals("가위"))
				|| (player.equals("보") && random.equals("바위"))) {
			upt.put("point", resultPoint + bettingPoint * odds);
			resultPoint += bettingPoint*odds;
			gameResult = "승리";
			dao.updatePoint(upt);
		} else { // 플레이어 패배
			upt.put("point", curPoint - bettingPoint);
			gameResult = "패배";
			dao.updatePoint(upt);
		}
		RPSGameResult result = new RPSGameResult(0, curId, random, player, 
								gameResult, curPoint, resultPoint);
		dao.insertRPSGameResult(result);
		return result;
	}
	public List<RPSGameResult> getRPSGameHistory(String curId){
        List<RPSGameResult> list = dao.getRPSGameResultList(curId);
        return list;
    }
}
