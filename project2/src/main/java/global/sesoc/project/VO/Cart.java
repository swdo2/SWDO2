package global.sesoc.project.VO;

public class Cart {

	String person_id;
	String book_isbn;
	
	

	public Cart() {
		super();
	}

	public Cart(String person_id, String book_isbn) {
		super();
		this.person_id = person_id;
		this.book_isbn = book_isbn;
	}

	public String getPerson_id() {
		return person_id;
	}

	public void setPerson_id(String person_id) {
		this.person_id = person_id;
	}

	public String getBook_isbn() {
		return book_isbn;
	}

	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}

	@Override
	public String toString() {
		return "Cart [person_id=" + person_id + ", book_isbn=" + book_isbn + "]";
	}

}
