package global.sesoc.project.DAO;

import java.util.HashMap;

public interface PurchaseMapper {
	public int purchaseBook(HashMap<String, Object> map);
	
	public int purchaseDup(HashMap<String, Object> map);

	public int getCheck(HashMap<String, Object> map);
	
	public int checkChange(HashMap<String, Object> map);
}
