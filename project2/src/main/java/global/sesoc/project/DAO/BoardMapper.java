package global.sesoc.project.DAO;

import global.sesoc.project.VO.Board;

public interface BoardMapper {

	/*
	 * 블로그 관련 interFace
	 */
	
	//게시글 저장
	public int write(Board board);
}
