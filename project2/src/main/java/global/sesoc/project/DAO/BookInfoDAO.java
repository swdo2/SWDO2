package global.sesoc.project.DAO;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.project.VO.BookInfo;

@Repository
public class BookInfoDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int insert(BookInfo info, String person_id) {
		BookInfoMapper mapper = sqlSession.getMapper(BookInfoMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("info", info);
		map.put("person_id", person_id);
		
		int result = mapper.insert(map);	
		return result;
	}
	
//	public String select_setting() {
//		BookInfoMapper mapper = sqlSession.getMapper(BookInfoMapper.class);
//		String result = mapper.select_setting();
//		
//		return result;
//	}
//	
//	public String select_bookkey() {
//		BookInfoMapper mapper = sqlSession.getMapper(BookInfoMapper.class);
//		String result = mapper.select_bookkey();
//		
//		return result;
//	}
//	
//	public int update_bookinfo(String bookKey) {
//		BookInfoMapper mapper = sqlSession.getMapper(BookInfoMapper.class);
//		
//		int result = mapper.update_bookinfo(bookKey);
//		
//		return result;
//	}
	
	public BookInfo select_bookinfo(String bookKey, String person_id) {
		BookInfoMapper mapper = sqlSession.getMapper(BookInfoMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("bookKey", bookKey);
		map.put("person_id", person_id);
		BookInfo info = mapper.select_bookinfo(map);
		
		return info;
	}
	
	public int deleteBookInfo(String person_id) {
		BookInfoMapper mapper = sqlSession.getMapper(BookInfoMapper.class);
		
		int cnt = mapper.deleteBookInfo(person_id);
		
		return cnt;
	}

}
