package global.sesoc.project.DAO;

import java.util.HashMap;

public interface CartMapper {

	public int insertCart(HashMap<String,Object> map);
	
	public int cartCount(HashMap<String,Object> map);
}
