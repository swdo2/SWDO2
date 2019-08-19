package global.sesoc.project.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.project.HomeController;

@Controller
public class PersonController 	{

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//회원가입(Join)폼으로 이동하는 메소드
	@RequestMapping(value = "Join",  method = RequestMethod.GET)
	public String JoinForm(){
		
		
		return "Join";
	}
	
	//회원가입 --> 입력된 회원 정보를 DB에 저장하는 메소드
	//POST방식으로 회원 정보를 보냅니다.
	@RequestMapping(value = "Join",  method = RequestMethod.POST)
	public String Join(){
		
		
		return null;
	}
	
}
