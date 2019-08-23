package global.sesoc.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.project.DAO.MypageDAO;

/*
 * 마이페이지 컨트롤러 
 */
@Controller
public class MypageController {

	@Autowired
	MypageDAO dao;
	// 마이페이지로 이동시켜주 메서드
	@RequestMapping(value = "myPageForm", method = RequestMethod.GET)
	public String board() {

		// 마이페이지 폼으로 이동
		return "myPageForm";
	}
	
	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String WriteBoard(){
		
		return null;
	}

}
