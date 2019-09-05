package global.sesoc.project.Controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.project.HomeController;
import global.sesoc.project.DAO.PersonDAO;
import global.sesoc.project.VO.Person;

@Controller
public class PersonController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	PersonDAO dao;

	// 회원가입(Join)폼으로 이동하는 메소드
	@RequestMapping(value = "Join", method = RequestMethod.GET)
	public String JoinForm() {

		return "Join";
	}

	// 회원가입 --> 입력된 회원 정보를 DB에 저장하는 메소드
	// POST방식으로 회원 정보를 보냅니다.

	@RequestMapping(value = "Join", method = RequestMethod.POST)
	public String Join(Person person, String person_phone1, String person_phone2, String person_phone3) {
		
		String phone = (person_phone1  +"-"+ person_phone2 + "-" + person_phone3);
		person.setPerson_phone(phone);
		System.out.println(phone);
		int result = dao.insertPerson(person);
		
		if (result != 1) {
			// 만약 result(회원가입처리)가 1이아닐경우 즉, 가입 실패가 된다면 실패 후 가입 폼으로 이동합니다.
			return "Join";
		}
		// 회원정보가 DB저장에 성공하면 홈으로 다시 redirect합니다.

		return "redirect:/";
	}
	
	// ID유효성 검사 0822 다시 수정 NA
	@RequestMapping(value = "idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(String person_id){
		
		Person person = dao.idCheck(person_id);
		if(person == null) {
			return 1;
		}
		return 0;
	}
	
	@RequestMapping(value = "logIn", method = RequestMethod.POST)
	public String logIn(Person searchperson, HttpSession session) {
		Person person = dao.loginId(searchperson);

		if (person.getPerson_id() != null) {
			session.setAttribute("loginId", person.getPerson_id());

		}

		return "redirect:/";
	}
	
	
	@RequestMapping(value="logOut", method = RequestMethod.GET)
	public String LogOut(Model model, HttpSession session){
			session.invalidate();
	return "redirect:/";
	}
	
	

}