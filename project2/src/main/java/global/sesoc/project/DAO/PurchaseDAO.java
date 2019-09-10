package global.sesoc.project.DAO;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PurchaseDAO {
	@Autowired
	SqlSession sqlsession;
	
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
	
}
