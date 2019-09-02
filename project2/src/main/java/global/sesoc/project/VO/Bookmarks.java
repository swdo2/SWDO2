package global.sesoc.project.VO;

public class Bookmarks {
	private int bookmarks_num;
	private String bookmarks_bookmark;
	private String bookmarks_title;
	private String bookmarks_date;
	private String bookmarks_name;
	
	public Bookmarks() {}

	public int getBookmarks_num() {
		return bookmarks_num;
	}

	public void setBookmarks_num(int bookmarks_num) {
		this.bookmarks_num = bookmarks_num;
	}

	public String getBookmarks_bookmark() {
		return bookmarks_bookmark;
	}

	public void setBookmarks_bookmark(String bookmarks_bookmark) {
		this.bookmarks_bookmark = bookmarks_bookmark;
	}

	public String getBookmarks_title() {
		return bookmarks_title;
	}

	public void setBookmarks_title(String bookmarks_title) {
		this.bookmarks_title = bookmarks_title;
	}

	public String getBookmarks_date() {
		return bookmarks_date;
	}

	public void setBookmarks_date(String bookmarks_date) {
		this.bookmarks_date = bookmarks_date;
	}

	public String getBookmarks_name() {
		return bookmarks_name;
	}

	public void setBookmarks_name(String bookmarks_name) {
		this.bookmarks_name = bookmarks_name;
	}

	@Override
	public String toString() {
		return "Bookmarks [bookmarks_num=" + bookmarks_num + ", bookmarks_bookmark=" + bookmarks_bookmark
				+ ", bookmarks_title=" + bookmarks_title + ", bookmarks_date=" + bookmarks_date + ", bookmarks_name="
				+ bookmarks_name + "]";
	}
	
}
