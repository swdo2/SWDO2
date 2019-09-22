package global.sesoc.project.DAO;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.project.Controller.EbookController;

@Repository
public class PurchaseDAO {
	@Autowired
	SqlSession sqlsession;
	private static final Logger logger = LoggerFactory.getLogger(EbookController.class);
	
	public int purchaseBook(String isbn, String loginId) {
		PurchaseMapper mapper = sqlsession.getMapper(PurchaseMapper.class);
		CartMapper cmapper = sqlsession.getMapper(CartMapper.class);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("isbn", isbn);
		map.put("loginId", loginId);
		
		//구매하면 자바구니에있는거 삭제를 위한....
		int cn2 = cmapper.removeCart2(map);
		
		int cnt = mapper.purchaseBook(map);
	
		return cnt;
	}
	
	public int purchaseDup(String isbn, String loginId) {
		PurchaseMapper mapper = sqlsession.getMapper(PurchaseMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("isbn", isbn);
		map.put("loginId", loginId);
		
		int cnt = mapper.purchaseDup(map);
		
		return cnt;
	}
	
	public int getCheck(String person_id, String isbn) {
		PurchaseMapper mapper = sqlsession.getMapper(PurchaseMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		logger.debug("person_id : {}", person_id);
		logger.debug("isbn : {}", isbn);
		map.put("person_id", person_id);
		map.put("isbn", isbn);
		int cnt = mapper.getCheck(map);
		
		return cnt;
	}
	
	public int checkChange(String person_id, String isbn) {
		PurchaseMapper mapper = sqlsession.getMapper(PurchaseMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("person_id", person_id);
		map.put("isbn", isbn);
		
		int cnt = mapper.checkChange(map);
		
		return cnt;
	}
	
}
