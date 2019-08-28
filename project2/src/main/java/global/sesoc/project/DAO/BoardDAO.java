package global.sesoc.project.DAO;

import java.util.ArrayList;

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
	
	//회원의 게시글 목록 읽기
	
	public ArrayList<Board> list(){
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		ArrayList<Board> boardlist = mapper.list();
		return boardlist;
	}

	public Board detail(int board_num)
	{
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		Board board = mapper.detail(board_num);
		return board;
	}
	
	
	
}
