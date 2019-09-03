package global.sesoc.project.DAO;

import java.util.HashMap;

public interface PurchaseMapper {
	int purchaseBook(HashMap<String, Object> map);
	
	int purchaseDup(HashMap<String, Object> map);
}
