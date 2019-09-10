package global.sesoc.project.DAO;

import java.util.HashMap;

import global.sesoc.project.VO.BookInfo;

public interface BookInfoMapper {
	int insert(HashMap<String, Object> map);
	
	String select_setting();
	
	String select_bookkey();
	
	int update_bookinfo(String bookKey);
	
	BookInfo select_bookinfo(HashMap<String, Object> map);
	
	int deleteBookInfo(String person_id);
}
