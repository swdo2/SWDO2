package global.sesoc.project.DAO;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
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

	public Board detail(int board_num)	{
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		Board board = mapper.detail(board_num);
		return board;
	}
	
	public int delete(Board board){
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		int result = mapper.delete(board);
		return result;
	}

	public int update(Board board)	{
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		int result = mapper.update(board);
		return result;
	}

	public int like(int board_num)
	{
		BoardMapper mapper =sqlsession.getMapper(BoardMapper.class);
		mapper.like(board_num);
		Board board = mapper.detail(board_num);
		int likenum = board.getBoard_like();
		return likenum;
	}
	
	public int count(ArrayList<String> searchedtitle, String select){
		BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("searchedtitle", searchedtitle);
		map.put("select", select);
		int cnt = mapper.count(map);
		return cnt;
	}

	public ArrayList<Board> select(int start, int count, ArrayList<String> searchedtitle, String select)	{
			BoardMapper mapper = sqlsession.getMapper(BoardMapper.class);
			RowBounds row = new RowBounds(start, count);
			System.out.println(start);
			System.out.println(count);
			HashMap<String, Object> map = new HashMap<>();
			map.put("searchedtitle",searchedtitle );
			map.put("select", select);
			
			ArrayList<Board> list = mapper.select(row,map);
		
		return list;
	}
	
}
