package global.sesoc.project.DAO;

import java.util.ArrayList;

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
	
	public ArrayList<Bookmarks> select(String bookmarks_name) {
		BookmarksMapper mapper = sqlSession.getMapper(BookmarksMapper.class);
		
		ArrayList<Bookmarks> list = mapper.select(bookmarks_name);
		
		return list;
	}
	
	public int delete(String bookmark) {
		BookmarksMapper mapper = sqlSession.getMapper(BookmarksMapper.class);
		
		int cnt = mapper.delete(bookmark);
		return cnt;
	}
	
	public String select_date(String book_title) {
		BookmarksMapper mapper = sqlSession.getMapper(BookmarksMapper.class);
		
		String result = mapper.select_date(book_title);
		return result;
	}
	
	public int deleteAll(String bookmarks_name) {
		BookmarksMapper mapper = sqlSession.getMapper(BookmarksMapper.class);
		
		int cnt = mapper.deleteAll(bookmarks_name);
		
		return cnt;
	}
	
	public int select_num() {
		BookmarksMapper mapper = sqlSession.getMapper(BookmarksMapper.class);
		int cnt = mapper.select_num();
		return cnt;
	}
	
}
