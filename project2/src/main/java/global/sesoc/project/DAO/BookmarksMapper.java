package global.sesoc.project.DAO;

import java.util.ArrayList;

import global.sesoc.project.VO.Bookmarks;

public interface BookmarksMapper {
	
	int insert(Bookmarks bookmark);
	
	ArrayList<Bookmarks> select(String bookmarks_name);
	
	int delete(String bookmark);

	String select_date(String book_title);
	
	int deleteAll(String bookmarks_name);
	
	int select_num();
}
