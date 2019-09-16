package global.sesoc.project.DAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.project.VO.Board;
import global.sesoc.project.VO.Reply;

@Repository
public class ReplyDAO	{

	@Autowired
	SqlSession sqlsession;
	
	public int insert(Reply reply)		{
		ReplyMapper mapper = sqlsession.getMapper(ReplyMapper.class);
		
		int result = mapper.insert(reply);
		
		return result;
		
	}
	
	public ArrayList<Reply> list(Reply reply){
		ReplyMapper mapper = sqlsession.getMapper(ReplyMapper.class);
		
		ArrayList<Reply> list = mapper.select(reply);
		
		return list;
		
	}
	
}
