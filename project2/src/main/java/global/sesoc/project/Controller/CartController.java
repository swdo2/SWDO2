package global.sesoc.project.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.project.DAO.CartDAO;
import global.sesoc.project.VO.Book;
import global.sesoc.project.VO.Cart;
import global.sesoc.project.service.NaverBookService;

@Controller
public class CartController {

	@Autowired
	CartDAO dao;

	// 책을 카트에 저장하기 위한 ajax
	@ResponseBody
	@RequestMapping(value = "cart", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public String bookCartajax(String book_isbn, HttpSession session) {
		String person_id = (String) session.getAttribute("loginId");
		String msg = "이미 장바구니에 담겨 있습니다!";
		// 중복인지 아닌지 체크하는 부분 0이면 중복아님 1이면 중복
		int cartcount = dao.cartCount(book_isbn, person_id);
		// 중복아니면 insert!!!!!

		if (cartcount == 0) {
			dao.insertCart(book_isbn, person_id);
			msg = "장바구니에 담았습니다.";
		}
		System.out.println(msg);
		return msg;

	}

	@RequestMapping(value = "cartForm", method = RequestMethod.GET)
	public String bookCart(HttpSession session, Model model) {
		String person_id = (String) session.getAttribute("loginId");
		ArrayList<Cart> cartList = dao.cartList(person_id);
		NaverBookService nb = new NaverBookService();
		// ArrayList<Purchaseinfo> purChaseList = dao.purChaseList(loginId);

		ArrayList<ArrayList<Book>> blist = new ArrayList<ArrayList<Book>>();

		for (int i = 0; i < cartList.size(); i++) {
			blist.add((ArrayList<Book>) nb.searchBook("d_isbn", cartList.get(i).getBook_isbn(), 1, 1));
		}
		;
		///////////////////////
		String address = "type=m1";
		// 자른 결과
		String cutresult;
		// 이미지 교체 작업
		for (int i=0; i  < blist.size();i++){
		cutresult = blist.get(i).get(0).getImage().replaceFirst(address, "");
		blist.get(i).get(0).setImage(cutresult);
		}
		model.addAttribute("blist", blist);
		return "bookCart";
	}

	@ResponseBody
	@RequestMapping(value = "savecart", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public int purchaseAjax(String isbn, Model model, HttpSession session) {
		String person_id = (String) session.getAttribute("loginId");
	
		
		// 중복인지 아닌지 체크하는 부분 0이면 중복아님 1이면 중복
		System.out.println(isbn+"데이터체크");
		int cartcount = dao.cartCount(isbn, person_id);
		if(cartcount == 0) {
			dao.insertCart(isbn, person_id);
		
		}

		return cartcount;

	}
	
}
