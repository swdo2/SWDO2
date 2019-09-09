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

import global.sesoc.project.DAO.CartDAO;
import global.sesoc.project.DAO.PurchaseDAO;

@Controller
public class PurchaseController {
	private static final Logger logger = LoggerFactory.getLogger(PurchaseController.class);
	
	@Autowired
	PurchaseDAO pd;
	
	@Autowired
	CartDAO dao;
	
	@ResponseBody
	@RequestMapping(value = "purchase", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public int purchaseAjax(String isbn, Model model, HttpSession session) {
		logger.debug("purchase ajax");
		String person_id = (String) session.getAttribute("loginId");
	
		int cnt = 0;
		if (person_id == null) {
			return cnt = 2;
		}
		
		// 중복인지 아닌지 체크하는 부분 0이면 중복아님 1이면 중복
		
		cnt = pd.purchaseDup(isbn, person_id);
		logger.debug("cnt : {}", cnt);
		if(cnt == 0) {
			pd.purchaseBook(isbn,person_id);
		
		}

		return cnt;
	}
	
	@ResponseBody
	@RequestMapping(value = "purchaseList", method = RequestMethod.GET)
	public int purchaseListAjax(String[] cartlist, Model model, HttpSession session) {
		logger.debug("purchase list ajax");
		
		String person_id = (String) session.getAttribute("loginId");
		
//		for(int i=0;i<cartlist.length;++i)
//			logger.debug("isbn : {}" , cartlist[i]);
		
	
		
		for(int i=0;i<cartlist.length;++i) {
			pd.purchaseBook(cartlist[i], person_id);		
		}
		
		for(int i=0;i<cartlist.length;++i) {
			dao.removeCart(cartlist[i], person_id);
		}
		
////		// 중복인지 아닌지 체크하는 부분 0이면 중복아님 1이면 중복
//		for(int i=0;i<purchasebook.size();++i) {
//			//pd.purchaseBook(purchasebook.get(i) ,person_id);
//			
//		}

		
		return 0;
	}
}
