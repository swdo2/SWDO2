package global.sesoc.project.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.project.DAO.ReplyDAO;
import global.sesoc.project.VO.Reply;

@Controller
public class ReplyController	{

	@Autowired
	ReplyDAO dao;
	
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String wirte(HttpSession session, Reply reply, String board_num){
		
		
		String id = (String)session.getAttribute("loginId");
		
		reply.setPerson_id(id);
		reply.setBoard_num(Integer.parseInt(board_num));
		System.out.println(reply);
		dao.insert(reply);
		System.out.println("빠이요");
		
		return "redirect:/read?board_num="+board_num;
	}
	
	
	
}
