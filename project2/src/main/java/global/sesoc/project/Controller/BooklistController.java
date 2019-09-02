package global.sesoc.project.Controller;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertThat;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.project.VO.Book;
import global.sesoc.project.service.NaverBookService;

@Controller
public class BooklistController {

	@Autowired
	BooklistController bc;

	@Autowired
	NaverBookService nb;

	ArrayList<String> tag_isbn = new ArrayList<>();
	ArrayList<String> tag_image = new ArrayList<>();
	ArrayList<String> title = new ArrayList<>();
	ArrayList<String> tag_price = new ArrayList<>();
	ArrayList<Book> booklist = new ArrayList<>();
	Book ebook = new Book();
	
	ArrayList<ArrayList<Book>> slist = new ArrayList<ArrayList<Book>>();
	// 키워드가 있을때도 있고 없을때도있음
	// 있을때는 가져가고 없을때는 안가져가고
	/*
	 * @RequestMapping("bookList.do") public ModelAndView
	 * bookList(@RequestParam(required=false)String keyword){ ModelAndView mav =
	 * new ModelAndView();
	 * 
	 * if(keyword !=null) {
	 * mav.addObject("bookList",service.searchBook(keyword,10,1)); }
	 * mav.setViewName("bookList"); return mav; }
	 */
	/*
	 * @RequestMapping("bookList") public ModelAndView
	 * bookList2(@RequestParam(required=false)String keyword){ ModelAndView mav
	 * = new ModelAndView();
	 * 
	 * if(keyword !=null) {
	 * mav.addObject("bookList",service.searchBook(keyword,1,1));
	 * ///(키워드,몇개,몇줄부터) } mav.setViewName("bookList"); return mav; }
	 */

	/**
	 * 
	 * @param isbn
	 *            isbn값
	 * @return model bookInFo BookForm(결제페이지,책개인정보)
	 */
	@RequestMapping(value = "BookForm", method = RequestMethod.GET)
	public String bookInFo(String isbn, Model model, HttpSession session) {
		List<Book> bookInFo = nb.searchBook("d_isbn", isbn, 1, 1);
//		https://bookthumb-phinf.pstatic.net/cover/066/001/06600168.jpg?type=m1&udate=20170103
		
		
		String address="type=m1";
		
		String cutresult =  bookInFo.get(0).getImage().replaceFirst(address, "");
		
		Book bbook2 = new Book();
		bbook2 = bookInFo.get(0);
		bbook2.setImage(cutresult);
		bookInFo.set(0, bbook2);
		
		
		if (tag_image.size() == 0) {
			tag_image.add(isbn);
			List<Book> searched = nb.searchBook("d_isbn",tag_image.get(0),1,1);
			//title.add(searched.get(0).getTitle());
			Book book = new Book();
			book.setIsbn(isbn);
			book.setTitle(searched.get(0).getTitle());
			book.setPrice(searched.get(0).getPrice());
			
			
			
			book.setImage(searched.get(0).getImage());
			
			
			book.setDiscount(searched.get(0).getDiscount());
			booklist.add(book);
		} else {
			int i;
			for (i=0; i < tag_image.size(); ++i) {
				if (tag_image.get(i).equals(isbn))
					break;
			}
			if (!(i < tag_image.size())) {
				tag_image.add(isbn);
				List<Book> searched = nb.searchBook("d_isbn",tag_image.get(i),1,1);
				//title.add(searched.get(0).getTitle());
				Book book = new Book();
				book.setIsbn(isbn);
				book.setTitle(searched.get(0).getTitle());
				book.setPrice(searched.get(0).getPrice());
				book.setImage(searched.get(0).getImage());
				book.setDiscount(searched.get(0).getDiscount());
				booklist.add(book);
			/*	ebook.setIsbn(isbn);
				ebook.setTitle(bookInFo.get(0).getTitle());
				ebook.setPrice(bookInFo.get(0).getPrice());
				ebook.setImage(bookInFo.get(0).getImage());
				tlqkf.add(ebook);
				slist.add(tlqkf);*/
			}
		};

		// 클릭한 책에 정보를 보내준다.....
		session.setAttribute("booklist",booklist);
		System.out.println(session.getAttribute("booklist"));
		model.addAttribute("bookInFo", bookInFo);
		return "BookForm";
	}

}
