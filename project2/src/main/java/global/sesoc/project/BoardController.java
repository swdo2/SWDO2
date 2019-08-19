package global.sesoc.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.project.DAO.BoardDAO;

/*
 * 게시판 컨트롤러
 */
@Controller
public class BoardController {

	@Autowired
	BoardDAO dao;
	
	//보드로 이동시켜주  메서드
	@RequestMapping(value="/boardForm", method = RequestMethod.GET)
	public String board(){
		
		//이동하는 폼태그jsp 이름 		
		return "boardForm";
	}
	
	
}
