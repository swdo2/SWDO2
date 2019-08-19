package global.sesoc.project.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.project.HomeController;
import global.sesoc.project.DAO.PersonDAO;

@Controller
public class PersonController 	{

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	/* 이 밑의 주석은 porm.xml파일 및 rootcontext 파일등등이 수정 되면 풀어주세요!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	/*@Autowired
	PersonDAO dao;*/
	
	//회원가입(Join)폼으로 이동하는 메소드
	@RequestMapping(value = "Join",  method = RequestMethod.GET)
	public String JoinForm(){
		
		
		return "Join";
	}
	
	//회원가입 --> 입력된 회원 정보를 DB에 저장하는 메소드
	//POST방식으로 회원 정보를 보냅니다.
	/* 이 밑의 주석은 porm.xml파일 및 rootcontext 파일등등이 수정 되면 풀어주세요!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	 * @RequestMapping(value = "Join",  method = RequestMethod.POST)
	public String Join(){
		return null;
			
		int result = dao.insertPerson(Person);
		
		if(result != 1){
			//만약 result(회원가입처리)가 1이아닐경우 즉, 가입 실패가 된다면 실패 후 가입 폼으로 이동합니다.
			return "Join";
		}
			//회원정보가 DB저장에 성공하면 홈으로 다시 redirect합니다.
		
		return "redirect:/";
	} */
	
}