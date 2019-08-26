package global.sesoc.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import global.sesoc.project.service.NaverBookService;

@Controller
public class BooklistController {
    @Autowired
    private NaverBookService service; 
    
    //키워드가 있을때도 있고 없을때도있음 
    //있을때는 가져가고 없을때는 안가져가고 
   /* @RequestMapping("bookList.do")	
    public ModelAndView bookList(@RequestParam(required=false)String keyword){
        ModelAndView mav = new ModelAndView();
        
        if(keyword !=null)
        {
            mav.addObject("bookList",service.searchBook(keyword,10,1));
        }
        mav.setViewName("bookList");
        return mav;
    }*/
   
    @RequestMapping("bookList")	
    public ModelAndView bookList2(@RequestParam(required=false)String keyword){
    	ModelAndView mav = new ModelAndView();
    	
    	if(keyword !=null)
    	{
    		mav.addObject("bookList",service.searchBook(keyword,1,1));
    		///(키워드,몇개,몇줄부터)
    	}
    	mav.setViewName("bookList");
    	return mav;
    }
   
}


