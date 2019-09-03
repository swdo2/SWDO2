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
import global.sesoc.project.DAO.PurchaseDAO;

@Controller
public class PurchaseController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	PurchaseDAO pd;
	
	@ResponseBody
	@RequestMapping(value = "purchase", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public int purchaseAjax(String isbn, Model model, HttpSession session) {
		logger.debug("purchase ajax");
		String person_id = (String) session.getAttribute("loginId");
	
		// 중복인지 아닌지 체크하는 부분 0이면 중복아님 1이면 중복
		
		int cnt = pd.purchaseDup(isbn, person_id);
		logger.debug("cnt : {}", cnt);
		if(cnt == 0) {
			pd.purchaseBook(isbn,person_id);
		
		}

		return cnt;

	}
}
