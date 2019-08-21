package global.sesoc.project.DAO;

import global.sesoc.project.VO.Person;

public interface PersonMapper {

	// 회원가입 insert
	public int insertPerson(Person person);
	// 입력받은 id,pw를 통해 회원 객체 받기
	public Person loginId(Person person);
}
