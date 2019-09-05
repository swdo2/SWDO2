package global.sesoc.project.DAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.project.VO.File;

@Repository
public class FileDAO	{
	@Autowired
	SqlSession sqlsession;

	public ArrayList<File> getFile(int board_num)
	{
		FileMapper mapper = sqlsession.getMapper(FileMapper.class);
		ArrayList<File> list = mapper.select(board_num);
		
		return list;
	}

	public File select_one(int file_num){
		FileMapper mapper = sqlsession.getMapper(FileMapper.class);
		File file = mapper.select_one(file_num);
		return file;
	}
	
	public int fileDelete(int board_num) {
		FileMapper mapper = sqlsession.getMapper(FileMapper.class);
		int cnt = mapper.delete(board_num);
		
		
		return cnt;
	}
	
	public int fileDeleteOne(int filenum) {
		FileMapper mapper = sqlsession.getMapper(FileMapper.class);
		
		int cnt = mapper.deleteOne(filenum);
		
		return cnt;
	}
	
}
