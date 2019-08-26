package global.sesoc.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.project.DAO.BoardDAO;

/*
 * 게시판 컨트롤러
 */
@Controller
public class ProductController {

	@Autowired
	BoardDAO dao;
	
	//보드로 이동시켜주  메서드
	@RequestMapping(value="/product", method = RequestMethod.GET)
	public String product(){
		
		//이동하는 폼태그jsp 이름 		
		return "product/product";
	}
	
	@RequestMapping(value="/buyProduct", method = RequestMethod.GET)
	public String buyProduct(){
		
		//이동하는 폼태그jsp 이름 		
		return "product/buyProduct";
	}
	
	
}
