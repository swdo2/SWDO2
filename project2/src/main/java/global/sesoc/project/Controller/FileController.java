package global.sesoc.project.Controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.project.DAO.FileDAO;
import global.sesoc.project.VO.Board;
import global.sesoc.project.VO.File;
import global.sesoc.project.service.FileService;

@Controller
@RequestMapping(value = "file")
public class FileController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	final String uploadPath = "/boardfile";
	
	@Autowired
	FileDAO fileDAO;
	
	@RequestMapping(value = "delOne", method = RequestMethod.GET)
	public String delete(Board board, Model model, String originalfile){
		
		ArrayList<File> flist = fileDAO.getFile(board.getBoard_num());
		System.out.println("delOne실행");
		model.addAttribute("board_title", board.getBoard_title());
		model.addAttribute("board_contents", board.getBoard_contents());
		
		for(File f : flist){
			if(f.getOriginalfile().equals(originalfile)){
				System.out.println(f.getFile_num());
				fileDAO.fileDeleteOne(f.getFile_num());
				FileService.deleteFile(uploadPath + "/" + f.getSavedfile());
			}
		}
		return "redirect:/boardForm/update?board_num="+board.getBoard_num();
	}
	
	

}