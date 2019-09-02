package global.sesoc.project.DAO;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {

 	@Autowired
	SqlSession sqlsession;
	
	public int insertCart(String book_isbn,String person_id){
		CartMapper mapper = sqlsession.getMapper(CartMapper.class);
		HashMap<String,Object> map = new HashMap<>();
		map.put("book_isbn", book_isbn);
		map.put("person_id", person_id);
		int cartlist = mapper.insertCart(map);
		
		return cartlist;
	}
	
	public int cartCount(String book_isbn,String person_id){
		CartMapper mapper = sqlsession.getMapper(CartMapper.class);
		int result=0;
		HashMap<String,Object> map = new HashMap<>();
		map.put("book_isbn", book_isbn);
		map.put("person_id", person_id);
		result =  mapper.cartCount(map);
		return result;
	}
}
