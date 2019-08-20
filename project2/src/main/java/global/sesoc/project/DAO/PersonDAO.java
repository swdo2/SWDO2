package global.sesoc.project.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.project.VO.Person;

@Repository
public class PersonDAO	{
	
	
	
	@Autowired
	SqlSession sqlSession;

	
		//회원정보를 넣는 DAO - insert 관련 DAO
		public int insertPerson(Person person){
			PersonMapper mapper = sqlSession.getMapper(PersonMapper.class);
					int result = 0;
			try {
				result = mapper.insertPerson(person);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			return result;
					
		}
}
