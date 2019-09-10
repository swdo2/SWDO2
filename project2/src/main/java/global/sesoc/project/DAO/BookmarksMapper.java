package global.sesoc.project.DAO;

import java.util.ArrayList;
import java.util.HashMap;

import global.sesoc.project.VO.Bookmarks;

public interface BookmarksMapper {
	
	int insert(Bookmarks bookmark);
	
	ArrayList<Bookmarks> select(HashMap<String, Object> map);
	
	int delete(HashMap<String, Object> map);

	String select_date(String book_title);
	
	int deleteAll(HashMap<String, Object> map);
	
	int select_num();
}
