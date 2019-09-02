package global.sesoc.project.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.project.DAO.CartDAO;
import global.sesoc.project.VO.Cart;

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

}
