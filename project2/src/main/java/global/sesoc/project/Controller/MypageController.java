package global.sesoc.project.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.project.DAO.MypageDAO;
import global.sesoc.project.VO.Book;
import global.sesoc.project.VO.Purchaseinfo;
import global.sesoc.project.service.NaverBookService;
import global.sesoc.project.service.Searchbook;

/*
 * 마이페이지 컨트롤러 
 */
@Controller
public class MypageController {

	@Autowired
	MypageDAO dao;
	@Autowired
	BooklistController bc;
	//토탈용 Searchbook
	@Autowired
	Searchbook sb;
	@Autowired
	NaverBookService nb;

	private static Logger logger = LoggerFactory.getLogger(MypageController.class);
	/*
	 * 마이페이지 폼으로 이동시켜주는 메서드 이동할때 model로 sessionId를 통해 내가 구매한 책들을 리스트로 저장하고
	 * 리스트형식으로 myPageForm jsp 에 보내준다
	 */

	@RequestMapping(value = "myPageForm", method = RequestMethod.GET)
	public String myPage(HttpSession session, Model model) {
		String loginId = (String) session.getAttribute("loginId");
		ArrayList<Purchaseinfo> purChaseList = dao.purChaseList(loginId);

		ArrayList<ArrayList<Book>> blist = new ArrayList<ArrayList<Book>>();
		for (int i = 0; i < purChaseList.size(); ++i) {
			blist.add((ArrayList<Book>) nb.searchBook("d_isbn", purChaseList.get(i).getPURCHASE_ISBN(), 1, 1));
		}

		model.addAttribute("blist", blist);

		// 마이페이지 폼으로 이동
		return "myPageForm";
	}
	/**
	 * 
	 * @param bookTitle 책 제목으로 검색할시
	 * @return model blist 책검색시 뿌려주는거
	 * @return model total 책검색시 타이틀 검색 결과
	 */
	@RequestMapping(value = "searchBook", method = RequestMethod.GET)
	public String searchBook(HttpSession session, Model model, String bookTitle) {
		System.out.println(bookTitle);
		List<Book> blist=nb.searchBook("d_titl", bookTitle, 10, 10);
		//title을 검색해 total에전체 문자열을 담는다
		String total = sb.booksearch(bookTitle);
		//searchTotal을 사용해 검색한 값의 total값을 String 형으로 쪼개서 다시 total에넣어줌
		total = searchTotal(total);
		model.addAttribute("blist", blist);
		model.addAttribute("total", total);
		
		// 마이페이지 폼으로 이동
		return "searchBook";
	}
	//검색한 결과의 total을 추출해 토탈수 확인
	public String searchTotal(String moonja){
	//idx= total로 시작하는 부분의 인덱스값
	int idx = moonja.indexOf("total");
	String moonja2 = moonja.substring(idx+6);
	int idx2 = moonja2.indexOf("</");
	String moonja3=moonja2.substring(0,idx2);
	System.out.println(moonja3);
	System.out.println(moonja3);
	System.out.println(moonja3);
	return moonja3;
	
}
	
	/*
	 * @RequestMapping(value = "myPageForm", method = RequestMethod.GET) public
	 * String board(HttpSession session,Model model) { String loginId =
	 * (String)session.getAttribute("loginId");
	 * System.out.println(session.getAttribute("loginId"));
	 * 
	 * 
	 * ArrayList<Purchaseinfo> purChaseList = dao.purChaseList(loginId);
	 * System.out.println(purChaseList.get(0));
	 * 
	 * 
	 * 
	 * ArrayList<ModelAndView> mav = new ArrayList<>(); int i=0; for
	 * (Purchaseinfo purchaseinfo : purChaseList) {
	 * //System.out.println(bc.bookList2(purChaseList.get(i).getPURCHASE_ISBN())
	 * ); mav.add(bc.bookList2(purChaseList.get(i).getPURCHASE_ISBN())); i++;
	 * 
	 * } for(i=0;i<purChaseList.size();++i) {
	 * mav.add(bc.bookList2(purChaseList.get(i).getPURCHASE_ISBN())); }
	 * System.out.println(i); model.addAttribute("mavlist", mav);
	 * 
	 * // 마이페이지 폼으로 이동 return "myPageForm"; }
	 */

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String WriteBoard() {

		return null;
	}

}
