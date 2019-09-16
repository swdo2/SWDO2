package global.sesoc.project.Controller;

import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.project.DAO.BoardDAO;
import global.sesoc.project.DAO.ReplyDAO;
import global.sesoc.project.VO.Board;
import global.sesoc.project.VO.Reply;
import global.sesoc.project.service.PageNavigator;

/*
 * 게시판 컨트롤러
 */
@Controller
public class BoardController {

	public static final int countPerPage = 10;
	public static final int countPerGroup = 5;
	
	
	@Autowired
	BoardDAO dao;
	@Autowired
	ReplyDAO dao_rep;
	
	@RequestMapping(value="/homeButton", method = RequestMethod.GET)
	public String homeButton(){
		
		return "redirect:/"; 
	}
	
	
	//보드로 이동시켜주  메서드
	@RequestMapping(value="/boardForm", method = RequestMethod.GET)
	public String board(HttpSession session, Model model,String id, HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value ="page", defaultValue = "1")int page, String searchedtitle, String select){
		//아이디 
		ArrayList<Board> boardlist = dao.list();
		//System.out.println("boardl list : " + boardlist);
/*		model.addAttribute("boardlist", boardlist);
		model.addAttribute("boardId", id);
		
*/		int start = (page - 1) * countPerPage;
		
		String array[] = null;
		if(searchedtitle !=null){
			searchedtitle = searchedtitle.trim();
			array = searchedtitle.split(" +");
		}
		
		ArrayList<String> text = new ArrayList<String>();
		if(array != null){
			text = new ArrayList<String>(Arrays.asList(array));
		}
		ArrayList<Board> list = dao.select(start, countPerPage, text, select);
		
		int cnt = dao.count(text, select);
	
		
		
		PageNavigator navi = new PageNavigator(countPerPage, countPerGroup, page, cnt);
		model.addAttribute("list", list);
		model.addAttribute("cnt", cnt);
		model.addAttribute("navi", navi);
		model.addAttribute("searchedtitle", searchedtitle);
		model.addAttribute("select", select);
		
		
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
	public String list(String id, Model model,int board_num, HttpServletRequest request,HttpServletResponse response,
			@RequestParam(value = "page", defaultValue ="1")int page, String searchedtiltes, String select){
/*		System.out.println("list controller");
		
		ArrayList<Board> boardlist = dao.list(id);
		System.out.println("boardl list : " + boardlist);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("loginId", id);*/
		Cookie[] cookies = request.getCookies();
		Cookie viewCookie = null;
		
		if(cookies != null && cookies.length > 0){
			for(int i = 0; i < cookies.length; ++i){
				if(cookies[i].getName().equals("cookie" + board_num)){
					viewCookie = cookies[i];
				}
			}
		}
		
		
			Cookie newCookie = new Cookie("cookie" + board_num, "board_num");
			response.addCookie(newCookie);
			dao.updateHits(board_num);
		
		
		if(board_num == 0){
			System.out.println("글이 없습니다.");
			return "redirect:/boardForm";
		}
		
		//글 번호에 따라 값을 넘겨줌
		Board board =  dao.detail(board_num);
		System.out.println(board);
		
		if(board == null){
			return "redirect:boardForm";
		}
		
		model.addAttribute("board", board);
		model.addAttribute("loginId", board.getPerson_id());
		
		Reply rep = new Reply();
		rep.setBoard_num(board_num);
		ArrayList<Reply> list_rep = dao_rep.list(rep);
		model.addAttribute("list_rep", list_rep);		
		return "read";
		
	}
	
	//글 삭제 메서드
	@RequestMapping(value = "deleteBoard", method=RequestMethod.GET)
	public String delete(int board_num, HttpSession session){
		//세션에 저장된 로그인
		String id = (String) session.getAttribute("loginId");
		
		Board board = new Board();
		board.setBoard_num(board_num);
		board.setPerson_id(id);
		System.out.println(board+"2");
		dao.delete(board);
		System.out.println(board+"1");	
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
	
	//조회수 증가 업데이트
	@RequestMapping(value = "updateHits", method = RequestMethod.GET)
	public String updatehits(HttpSession session, Board board){
		String id = (String) session.getAttribute("loginId");
		board.setPerson_id(id);
		dao.update(board);
		return "redirect:/board/boardForm";
	}
}
