package global.sesoc.project.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.project.DAO.BoardDAO;
import global.sesoc.project.VO.Board;

/*
 * 게시판 컨트롤러
 */
@Controller
public class BoardController {

	
	
	@Autowired
	BoardDAO dao;
	
	
	
	
	//보드로 이동시켜주  메서드
	@RequestMapping(value="/boardForm", method = RequestMethod.GET)
	public String board(HttpSession session, Model model){
		//아이디 
		
		ArrayList<Board> boardlist = dao.list();
		//System.out.println("boardl list : " + boardlist);
		model.addAttribute("boardlist", boardlist);
	
		
		//이동하는 폼태그jsp 이름 		
		return "boardForm";
	}
	
	//글쓰기를 누르면 writeForm으로 이동시켜주는 메서드
	@RequestMapping(value = "writeForm", method = RequestMethod.GET)
	public String goWriteForm(){
		
		
		return "writeForm";
	}
	
	//글쓰기를 눌러서 저장을 누르게 되면, DB에 저장 되게하는 메소드
	@RequestMapping(value = "writeForm", method = RequestMethod.POST)
	public String saveWrite(Board board, HttpSession session, Model model){
		
		//session에서 로그인한 사용자의 아이디를 읽어서 Board에 저장
		String id = (String) session.getAttribute("loginId");
		board.setPerson_id(id);
		System.out.println(board);
		dao.write(board);
		
	 
		
		return "redirect:boardForm?id=" + id;
		
	}
	
	//갯판의 해당 회원이 쓴 글 목록
	@RequestMapping(value = "read", method=RequestMethod.GET)
	public String list(String id, Model model,int board_num){
/*		System.out.println("list controller");
		
		ArrayList<Board> boardlist = dao.list(id);
		System.out.println("boardl list : " + boardlist);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("loginId", id);*/
		
		//글 번호에 따라 값을 넘겨줌
		Board board =  dao.detail(board_num);
		
		if(board == null){
			return "redirect:boardForm";
		}
		
		model.addAttribute("board", board);
		model.addAttribute("loginId", board.getPerson_id());
		return "read";

	}
	
/*	@RequestMapping(value = "boardForm", method=RequestMethod.GET)
	public String list(String id, Model model){
		System.out.println("list controller");
		
		ArrayList<Board> boardlist = dao.list(id);
		System.out.println("boardl list : " + boardlist);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("loginId", id);
		
		return "boardForm";

	}*/
}
