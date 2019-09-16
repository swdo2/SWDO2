package global.sesoc.project.DAO;

import java.util.ArrayList;

import global.sesoc.project.VO.Reply;

public interface ReplyMapper	{

	//리플 저장 하는 메소드
	public int insert(Reply reply);

	//출력문
	public ArrayList<Reply> select(Reply reply);
	
}
