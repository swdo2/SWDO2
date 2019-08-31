package global.sesoc.project.Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;

import global.sesoc.project.DAO.BoardDAO;
import global.sesoc.project.VO.Board;
import global.sesoc.project.VO.Person;

/*
 * 게시판 컨트롤러
 */
@Controller
public class BoardController {

	
	
	@Autowired
	BoardDAO dao;
	
	
	
	
	//보드로 이동시켜주  메서드
	@RequestMapping(value="/boardForm", method = RequestMethod.GET)
	public String board(HttpSession session, Model model,String id){
		//아이디 
		
		ArrayList<Board> boardlist = dao.list();
		//System.out.println("boardl list : " + boardlist);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("boardId", id);
		
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
		
		dao.write(board);
		
	 
		
		return "redirect:boardForm?id=" + id;
		
	}
	
	//개시판의 해당 회원이 쓴 글 목록
	@RequestMapping(value = "read", method=RequestMethod.GET)
	public String list(String id, Model model,int board_num){
/*		System.out.println("list controller");
		
		ArrayList<Board> boardlist = dao.list(id);
		System.out.println("boardl list : " + boardlist);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("loginId", id);*/
		
		//글 번호에 따라 값을 넘겨줌
		Board board =  dao.detail(board_num);
		System.out.println(board);
		
		if(board == null){
			return "redirect:boardForm";
		}
		
		model.addAttribute("board", board);
		model.addAttribute("loginId", board.getPerson_id());
		return "read";

	}
	
	//글 삭제 메서드
	@RequestMapping(value = "delete", method=RequestMethod.GET)
	public String delete(int board_num, HttpSession session){
		//세션에 저장된 로그인
		String id = (String) session.getAttribute("loginId");
		
		Board board = new Board();
		board.setBoard_num(board_num);
		board.setPerson_id(id);
		
		dao.delete(board);
		
		return "redirect:boardForm?id=" + id;
			
	}
	
	//글 수정 폼
	@RequestMapping(value="update", method=RequestMethod.GET)
	public String updateForm(int board_num,Model model, HttpSession session){
			
		//세션에서 로그인id가 해당 id인지
		String id = (String) session.getAttribute("loginId");
		
		//전달된 글 번호로 수정할 글 읽기
		Board board = dao.detail(board_num);
		
		//본인글 아니면 메인으로 이동하는 코드
		if(!id.equals(board.getPerson_id())){
			return "redirect:/";
		}
		
		//JSP에 모델로 포장해서 보냄
		model.addAttribute("board", board);
		
		return "updateForm";
	}
	
	
	//글 수정 메서드
	@RequestMapping(value = "update", method=RequestMethod.POST)
	public String update(Board board, HttpSession session){
		String id = (String) session.getAttribute("loginId");
		
		//수정할 글이 로그인한 본인 글인지 확인할 아이디 읽기
		board.setPerson_id(id);
		
		//글을 수정하는 처리
		dao.update(board);
		
		//원래의 글 목록으로 return을 한다.
		return "redirect:read?board_num=" + board.getBoard_num();
	}
	
	//게시글 따봉 박는것
	@ResponseBody
	@RequestMapping(value = "like", method = RequestMethod.GET)
	public String like (int board_num){
		
		int likenum = dao.like(board_num);
		
		return Integer.toString(likenum);
	}
}
