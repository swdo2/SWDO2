package global.sesoc.project.Controller;

import java.util.ArrayList;
import java.util.concurrent.SynchronousQueue;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import global.sesoc.project.DAO.MypageDAO;
import global.sesoc.project.VO.Book;
import global.sesoc.project.VO.Purchaseinfo;
import global.sesoc.project.service.NaverBookService;

/*
 * 마이페이지 컨트롤러 
 */
@Controller
public class MypageController {

	@Autowired
	MypageDAO dao;
	@Autowired
	BooklistController bc;
	
	@Autowired
	NaverBookService nb;
	
	/*
	 * 마이페이지 폼으로 이동시켜주는 메서드 이동할때
	 * model로 sessionId를 통해 내가 구매한 책들을 리스트로 저장하고
	 * 리스트형식으로 myPageForm jsp 에 보내준다
	 */
	
	@RequestMapping(value = "myPageForm", method = RequestMethod.GET)
	public String board(HttpSession session,Model model) {
		String loginId = (String)session.getAttribute("loginId");
		System.out.println(session.getAttribute("loginId"));
		ArrayList<Purchaseinfo> purChaseList = dao.purChaseList(loginId);
		
		ArrayList<ArrayList<Book>> blist = new ArrayList<ArrayList<Book>>();
		for(int i=0;i<purChaseList.size();++i) {
			blist.add((ArrayList<Book>)nb.searchBook(purChaseList.get(i).getPURCHASE_ISBN(), 1, 1));		
			System.out.println((ArrayList<Book>)nb.searchBook(purChaseList.get(i).getPURCHASE_ISBN(), 1, 1));
		}
		
		
		
		
		model.addAttribute("blist",blist);
		
		// 마이페이지 폼으로 이동
		return "myPageForm";
	}	
/*	@RequestMapping(value = "myPageForm", method = RequestMethod.GET)
	public String board(HttpSession session,Model model) {
		String loginId = (String)session.getAttribute("loginId");
		System.out.println(session.getAttribute("loginId"));
		
		
		ArrayList<Purchaseinfo> purChaseList = dao.purChaseList(loginId);
		System.out.println(purChaseList.get(0));
		
		
		
		ArrayList<ModelAndView> mav = new ArrayList<>();
		int i=0;
		for (Purchaseinfo purchaseinfo : purChaseList) {
			//System.out.println(bc.bookList2(purChaseList.get(i).getPURCHASE_ISBN()));
			mav.add(bc.bookList2(purChaseList.get(i).getPURCHASE_ISBN()));
			i++;
			
		}
		for(i=0;i<purChaseList.size();++i) {
			mav.add(bc.bookList2(purChaseList.get(i).getPURCHASE_ISBN()));
		}
		System.out.println(i);
		model.addAttribute("mavlist", mav);
			
		// 마이페이지 폼으로 이동
		return "myPageForm";
	}*/


	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String WriteBoard(){
		
		return null;
	}

}
