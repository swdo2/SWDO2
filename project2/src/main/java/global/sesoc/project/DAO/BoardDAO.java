package global.sesoc.project.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSession sql;
	
	public void savedata() {
		BoardMapper mapper = sql.getMapper(BoardMapper.class);
		return;
	}
	
}
