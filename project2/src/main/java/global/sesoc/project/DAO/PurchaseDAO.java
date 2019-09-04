package global.sesoc.project.DAO;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.project.VO.Book;

@Repository
public class PurchaseDAO {
	@Autowired
	SqlSession sqlsession;
	
	public int purchaseBook(String isbn, String loginId) {
		PurchaseMapper mapper = sqlsession.getMapper(PurchaseMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("isbn", isbn);
		map.put("loginId", loginId);
		
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
	
}
