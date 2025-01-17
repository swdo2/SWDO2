package global.sesoc.project.DAO;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.project.VO.Board;
import global.sesoc.project.VO.Reply;

public interface BoardMapper {

	/*
	 * 블로그 관련 interFace
	 */
	
	//게시글 저장
	public int write(Board board);
	
	//회원들이 쓴 글 목록
	public ArrayList<Board> list();
	
	//글번호에 따른 글 보기
	public Board detail(int board_num);

	//글번호와 id에따른 글삭제
	public int delete(Board board);

	//글번호와 id에 따른 글 수정
	public int update(Board board);
	
	//글번호 따봉
	public int like(int board_num);
	
	//글 전체 갯수
	public int count(HashMap<String, Object> map);

	//글 페이징
	public ArrayList<Board> select(RowBounds row, HashMap<String, Object> map);
	
	//글 조회수
	public int updateHits(int board_num);

	
	
	
}
