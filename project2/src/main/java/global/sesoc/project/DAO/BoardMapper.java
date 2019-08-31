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

	//글번호와 id에따른 글삭제
	public int delete(Board board);

	//글번호와 id에 따른 글 수정
	public int update(Board board);
	
	//글번호 따봉
	public int like(int board_num);
}
