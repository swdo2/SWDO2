package global.sesoc.project.DAO;

import java.util.ArrayList;

import global.sesoc.project.VO.Board;

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
}
