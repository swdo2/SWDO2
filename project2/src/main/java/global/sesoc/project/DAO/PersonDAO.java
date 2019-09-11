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

		//회원정보 업데이트용 //회원정보를 넣는 DAO - insert 관련 DAO
		public int updatePerson(Person person){
			PersonMapper mapper = sqlSession.getMapper(PersonMapper.class);
			int result = 0;
			try {
				result = mapper.updatePerson(person);
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			return result;
			
		}
		
		//아이디 중복 확인 0821 NA
		public Person idCheck(String person_id){
			PersonMapper mapper = sqlSession.getMapper(PersonMapper.class);
			
			return mapper.CheckOverId(person_id);
		}
		
		public Person loginId(Person searchperson){
			PersonMapper mapper = sqlSession.getMapper(PersonMapper.class);
			System.out.println("aaaa");
			Person person = mapper.loginId(searchperson);
			System.out.println("bbbb");
			
			return person; 
		}
		
		public Person searchPerson(String id){
			PersonMapper mapper = sqlSession.getMapper(PersonMapper.class);
			Person person = mapper.searchPerson(id);
			return person;
		}
		
}
