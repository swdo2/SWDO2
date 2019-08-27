package global.sesoc.project.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.project.VO.Board;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSession sqlsession;
	
	
	//board 글쓰기 저장하는 메소드
	public int write(Board board) {
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
	
		int result = 0;
		try{
			result = mapper.write(board);
		}	catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
