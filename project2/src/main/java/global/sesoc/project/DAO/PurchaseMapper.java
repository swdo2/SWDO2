package global.sesoc.project.DAO;

import java.util.ArrayList;
import java.util.HashMap;

import global.sesoc.project.VO.Book;

public interface PurchaseMapper {
	int purchaseBook(HashMap<String, Object> map);
	
	int purchaseDup(HashMap<String, Object> map);

	
}
