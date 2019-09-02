package global.sesoc.project.VO;

public class BookInfo {
	private int bookinfo_booknum;
	private String bookinfo_bookkey;
	private String bookinfo_setting;
	private String bookinfo_title;

	
	public BookInfo() {}

	public int getBookinfo_booknum() {
		return bookinfo_booknum;
	}

	public void setBookinfo_booknum(int bookinfo_booknum) {
		this.bookinfo_booknum = bookinfo_booknum;
	}

	public String getBookinfo_bookkey() {
		return bookinfo_bookkey;
	}

	public void setBookinfo_bookkey(String bookinfo_bookkey) {
		this.bookinfo_bookkey = bookinfo_bookkey;
	}

	public String getBookinfo_setting() {
		return bookinfo_setting;
	}

	public void setBookinfo_setting(String bookinfo_setting) {
		this.bookinfo_setting = bookinfo_setting;
	}

	public String getBookinfo_title() {
		return bookinfo_title;
	}

	public void setBookinfo_title(String bookinfo_title) {
		this.bookinfo_title = bookinfo_title;
	}

	@Override
	public String toString() {
		return "BookInfo [bookinfo_booknum=" + bookinfo_booknum + ", bookinfo_bookkey=" + bookinfo_bookkey
				+ ", bookinfo_setting=" + bookinfo_setting + ", bookinfo_title=" + bookinfo_title + "]";
	}
	
}
