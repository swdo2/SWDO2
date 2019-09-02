package global.sesoc.project.DAO;

import global.sesoc.project.VO.BookInfo;

public interface BookInfoMapper {
	int insert(BookInfo info);
	
	String select_setting();
	
	String select_bookkey();
	
	int update_bookinfo(String bookKey);
	
	BookInfo select_bookinfo(String bookKey);
}
