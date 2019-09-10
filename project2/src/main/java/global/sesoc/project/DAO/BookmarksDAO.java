package global.sesoc.project.DAO;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.project.VO.Bookmarks;

@Repository
public class BookmarksDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int insert(Bookmarks bookmark) {
		BookmarksMapper mapper = sqlSession.getMapper(BookmarksMapper.class);
		int result = mapper.insert(bookmark);
		
		return result;
	}
	
	public ArrayList<Bookmarks> select(String bookmarks_name, String person_id) {
		BookmarksMapper mapper = sqlSession.getMapper(BookmarksMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("bookmarks_name", bookmarks_name);
		map.put("person_id", person_id);
		
		ArrayList<Bookmarks> list = mapper.select(map);
		
		return list;
	}
	
	public int delete(String bookmark, String person_id) {
		BookmarksMapper mapper = sqlSession.getMapper(BookmarksMapper.class);
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("bookmark", bookmark);
		map.put("person_id", person_id);
		int cnt = mapper.delete(map);
		return cnt;
	}
	
	public String select_date(String book_title) {
		BookmarksMapper mapper = sqlSession.getMapper(BookmarksMapper.class);
		
		String result = mapper.select_date(book_title);
		return result;
	}
	
	public int deleteAll(String bookmarks_name, String person_id) {
		BookmarksMapper mapper = sqlSession.getMapper(BookmarksMapper.class);
		HashMap<String ,Object> map = new HashMap<String, Object>();
		
		map.put("bookmarks_name", bookmarks_name);
		map.put("person_id", person_id);
		int cnt = mapper.deleteAll(map);
		
		return cnt;
	}
	
	public int select_num() {
		BookmarksMapper mapper = sqlSession.getMapper(BookmarksMapper.class);
		int cnt = mapper.select_num();
		return cnt;
	}
	
}
