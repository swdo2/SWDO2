package global.sesoc.project.Controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.project.DAO.BookInfoDAO;
import global.sesoc.project.DAO.BookmarksDAO;
import global.sesoc.project.VO.BookInfo;
import global.sesoc.project.VO.Bookmarks;

/**
 * Handles requests for the application home page.
 */
@Controller
public class EbookController {
	@Autowired
	BookmarksDAO dao;

	@Autowired
	BookInfoDAO infodao;

	private static final Logger logger = LoggerFactory.getLogger(EbookController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/ebookPage", method = RequestMethod.GET)
	public String Start() {

		return "/ebook";
	}

	@ResponseBody
	@RequestMapping(value = "/ebook", method = RequestMethod.GET)
	public int homeajax(String bookmark, String date, String book_title, String book_name) {
		Bookmarks bm = new Bookmarks();
		bm.setBookmarks_title(book_title);
		bm.setBookmarks_bookmark(bookmark);
		bm.setBookmarks_date(date);
		bm.setBookmarks_name(book_name);

		logger.debug("ebook");
		logger.debug("bookmark :{} ", book_name);
		dao.insert(bm);
		int num = dao.select_num();
		logger.debug("bookmark_num : {}", num);

		
		return num;
		// 여기서 실제 return은 우리가 알고 있는 진짜 값을 보내주는 역할을 하게 됨
	}

	@ResponseBody
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ArrayList<String> list(String book_name) {
		logger.debug("list");
		logger.debug("bookname : {}", book_name);
		ArrayList<Bookmarks> list = dao.select(book_name);
		//ArrayList<HashMap<String,Object>> bList = new ArrayList<HashMap<String,Object>>();
		ArrayList<String> bList = new ArrayList<String>();
		
		for (Bookmarks book : list) {
			bList.add(book.getBookmarks_bookmark());
			/*HashMap<String, Object> map = new HashMap<String,Object> ();
			map.put("cfi", book.getBookmarks_bookmark());
			map.put("date", book.getBookmarks_date());
			bList.add(map);*/
		}
		return bList;
	}

	@ResponseBody
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ArrayList<String> remove(String bookmark, String book_name) {

		logger.debug("delete");
		int cnt = dao.delete(bookmark);
		ArrayList<Bookmarks> list = dao.select(book_name);
		ArrayList<String> bList = new ArrayList<String>();

		for (Bookmarks book : list) {
			bList.add(book.getBookmarks_bookmark());

		}
		return bList;
	}

	@ResponseBody
	@RequestMapping(value = "/mark", method = RequestMethod.GET)
	public void mark(String setting, String bookKey) {

		BookInfo info = new BookInfo();

		info.setBookinfo_bookkey(bookKey);
		info.setBookinfo_setting(setting);

		logger.debug("setting : {}", setting);
		logger.debug("bookKey : {}", bookKey);
		infodao.insert(info);

	}

	@ResponseBody
	@RequestMapping(value = "/marking", method = RequestMethod.GET)
	public String marking() {
		String result = infodao.select_setting();
		logger.debug("marking");

		return result;
	}

	@ResponseBody
	@RequestMapping(value = "/bookkey", method = RequestMethod.GET)
	public String bookkey() {
		String result = infodao.select_bookkey();
		logger.debug("bookkey");
		return result;
	}

	@ResponseBody
	@RequestMapping(value = "/bookinfo", method = RequestMethod.GET)
	public BookInfo bookinfo(String book_title) {
		BookInfo info = infodao.select_bookinfo(book_title);
		logger.debug("bookinfo");
		logger.debug(book_title);
		logger.debug("ajax setting : {}", info.getBookinfo_setting());
		logger.debug("ajax bookKey : {}", info.getBookinfo_bookkey());
		return info;
	}

	@ResponseBody
	@RequestMapping(value = "/date", method = RequestMethod.GET ,produces ="application/json;charset=UTF-8") 
	public void date(String book_title) {
		logger.debug("date : booktitle : {}", book_title);
		//String date = dao.select_date(book_title);
		
		//logger.debug("result date : {}", date);
		
		//logger.debug("date : {}", date);
		//return date; 
	}

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/update_bookinfo", method = RequestMethod.GET)
	 * public void delete_bookinfo(String bookKey) {
	 * logger.debug("update_bookinfo"); logger.debug(bookKey);
	 * infodao.update_bookinfo(bookKey); }
	 */

	@ResponseBody
	@RequestMapping(value = "deleteAll", method = RequestMethod.GET)
	public ArrayList<String> delete(String book_name) {

		dao.deleteAll(book_name);
		ArrayList<Bookmarks> blist = dao.select(book_name);
		ArrayList<String> list = new ArrayList<String>();

		for (Bookmarks book : blist) {
			list.add(book.getBookmarks_bookmark());

		}
		return list;
	}

	@ResponseBody
	@RequestMapping(value = "tts", method = RequestMethod.GET)
	public String tts(String data) {

		String clientId = "xttiox5aq5";// 애플리케이션 클라이언트 아이디값";
		String clientSecret = "svV6EW08yaOyzPDrVFznxytEy3X9oko7WvMWln2Y";// 애플리케이션
		String tempname = null; // 클라이언트 // 시크릿값";
		try {
			System.out.println("try문 내부");
			String text = URLEncoder.encode(data, "UTF-8"); // 13자
			String apiURL = "https://naveropenapi.apigw.ntruss.com/voice/v1/tts";
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST");
			con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
			con.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
			// post request
			String postParams = "speaker=clara&speed=0&text=" + text;
			con.setDoOutput(true);
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(postParams);
			wr.flush();
			wr.close();
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // 정상 호출
				InputStream is = con.getInputStream();
				int read = 0;
				byte[] bytes = new byte[1024];
				// 랜덤한 이름으로 mp3 파일 생성

				String path = "C:\\tts";
				File Folder = new File(path);

				if (!Folder.exists()) {
					try {
						Folder.mkdir(); // 폴더 생성합니다.
						System.out.println("폴더가 생성되었습니다.");
					} catch (Exception e) {
						e.getStackTrace();
					}
				} else {
					System.out.println("이미 폴더가 생성되어 있습니다.");
				}
				tempname = Long.valueOf(new Date().getTime()).toString();

				// String tempname = "ebook";
				// File f = new File(tempname + ".mp3");
				File f = new File(path + File.separator + tempname + ".mp3");

				f.createNewFile();
				OutputStream outputStream = new FileOutputStream(f);
				while ((read = is.read(bytes)) != -1) {
					outputStream.write(bytes, 0, read);
				}
				is.close();

			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
				String inputLine;
				StringBuffer response = new StringBuffer();
				while ((inputLine = br.readLine()) != null) {
					response.append(inputLine);
				}
				br.close();
				System.out.println(response.toString());
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return tempname;
	}
}
