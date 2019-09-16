package global.sesoc.project.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.project.DAO.ReplyDAO;
import global.sesoc.project.VO.Board;
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
	

	@RequestMapping(value = "replydelete", method=RequestMethod.GET)
	public String delete(String reply_contents, String reply_num, HttpSession session){
//		int board_num
		//세션에 저장된 로그인
		String id = (String) session.getAttribute("loginId");
		
		Reply reply = new Reply();
		reply.setReply_contents(reply_contents);
//		reply.setBoard_num(board_num);
		reply.setReply_num(reply_num);
		reply.setPerson_id(id);
			System.out.println("투스트링 : "+reply);
		dao.replydelete(reply);
		
		
		return "redirect:read?id=" + id;
		
			
	}
	
	
}
