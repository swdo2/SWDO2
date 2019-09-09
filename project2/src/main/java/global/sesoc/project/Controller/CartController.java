package global.sesoc.project.Controller;

import java.util.ArrayList;

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
import global.sesoc.project.DAO.CartDAO;
import global.sesoc.project.VO.Book;
import global.sesoc.project.VO.Cart;
import global.sesoc.project.service.NaverBookService;
import global.sesoc.project.service.NaverBookService2;

@Controller
public class CartController {

	@Autowired
	CartDAO dao;
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);

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

	@ResponseBody
	@RequestMapping(value = "getPurchaseList", method = RequestMethod.GET)
	public ArrayList<ArrayList<Book>> getPurchaseList(HttpSession session) {
		String person_id = (String) session.getAttribute("loginId");
		ArrayList<Cart> cartList = dao.cartList(person_id);
		NaverBookService nb = new NaverBookService();
		// ArrayList<Purchaseinfo> purChaseList = dao.purChaseList(loginId);

		ArrayList<ArrayList<Book>> bblist = new ArrayList<ArrayList<Book>>();

		for (int i = 0; i < cartList.size(); i++) {
			bblist.add((ArrayList<Book>) nb.searchBook("d_isbn", cartList.get(i).getBook_isbn(), 1, 1));
			try {
				Thread.sleep(50); // 와이파이라서 속도가 느려서 네이버에서 책정보를 빨리 못가져와서 쓰레드속돌르
									// 늦춰서 호출속도를 늦춘다 이말이야 50ms 느리게
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		///////////////////////
		String address = "type=m1";
		// 자른 결과
		String cutresult;
		// 이미지 교체 작업
		for (int i = 0; i < bblist.size(); i++) {
			cutresult = bblist.get(i).get(0).getImage().replaceFirst(address, "");
			bblist.get(i).get(0).setImage(cutresult);
			logger.debug("cutresult : {}", cutresult);
		}

		return bblist;
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
		for (int i = 0; i < blist.size(); i++) {
			cutresult = blist.get(i).get(0).getImage().replaceFirst(address, "");
			blist.get(i).get(0).setImage(cutresult);
			logger.debug("cutresult : {}", cutresult);
		}
		model.addAttribute("blist", blist);
		return "bookCart";
	}

	@ResponseBody
	@RequestMapping(value = "removeCart", method = RequestMethod.GET)
	public int removeCart(String isbn, HttpSession session) {
		int cnt = 0;

		String person_id = (String) session.getAttribute("loginId");
		cnt = dao.removeCart(isbn, person_id);
		return cnt;
	}

	@ResponseBody
	@RequestMapping(value = "removeAll", method = RequestMethod.GET)
	public int removeAll(HttpSession session) {
		int cnt = 0;

		String person_id = (String) session.getAttribute("loginId");

		cnt = dao.removeAll(person_id);

		return cnt;
	}

	@ResponseBody
	@RequestMapping(value = "savecart", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public int purchaseAjax(String isbn, Model model, HttpSession session) {
		String person_id = (String) session.getAttribute("loginId");

		int cartcount = 0;
		if (person_id == null) {
			return cartcount = 2;
		}

		// 중복인지 아닌지 체크하는 부분 0이면 중복아님 1이면 중복
		cartcount = dao.cartCount(isbn, person_id);
		if (cartcount == 0) {
			dao.insertCart(isbn, person_id);

		}

		return cartcount;

	}

}
