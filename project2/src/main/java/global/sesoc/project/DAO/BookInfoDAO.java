package global.sesoc.project.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.project.VO.BookInfo;

@Repository
public class BookInfoDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int insert(BookInfo info) {
		BookInfoMapper mapper = sqlSession.getMapper(BookInfoMapper.class);
		int result = mapper.insert(info);	
		return result;
	}
	
	public String select_setting() {
		BookInfoMapper mapper = sqlSession.getMapper(BookInfoMapper.class);
		String result = mapper.select_setting();
		
		return result;
	}
	
	public String select_bookkey() {
		BookInfoMapper mapper = sqlSession.getMapper(BookInfoMapper.class);
		String result = mapper.select_bookkey();
		
		return result;
	}
	
	public int update_bookinfo(String bookKey) {
		BookInfoMapper mapper = sqlSession.getMapper(BookInfoMapper.class);
		
		int result = mapper.update_bookinfo(bookKey);
		
		return result;
	}
	
	public BookInfo select_bookinfo(String bookKey) {
		BookInfoMapper mapper = sqlSession.getMapper(BookInfoMapper.class);
		
		BookInfo info = mapper.select_bookinfo(bookKey);
		
		return info;
	}

}
