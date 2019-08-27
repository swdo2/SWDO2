package global.sesoc.project.VO;

public class Board	{

	int board_num;
	String board_contents;
	String board_title;
	int board_hits;
	int board_like;
	String person_id;
	
	public Board(){}

	public Board(int board_num, String board_contents, String board_title, int board_hits, int board_like,
			String person_id)
	{
		super();
		this.board_num = board_num;
		this.board_contents = board_contents;
		this.board_title = board_title;
		this.board_hits = board_hits;
		this.board_like = board_like;
		this.person_id = person_id;
	}

	public int getBoard_num()
	{
		return board_num;
	}

	public void setBoard_num(int board_num)
	{
		this.board_num = board_num;
	}

	public String getBoard_contents()
	{
		return board_contents;
	}

	public void setBoard_contents(String board_contents)
	{
		this.board_contents = board_contents;
	}

	public String getBoard_title()
	{
		return board_title;
	}

	public void setBoard_title(String board_title)
	{
		this.board_title = board_title;
	}

	public int getBoard_hits()
	{
		return board_hits;
	}

	public void setBoard_hits(int board_hits)
	{
		this.board_hits = board_hits;
	}

	public int getBoard_like()
	{
		return board_like;
	}

	public void setBoard_like(int board_like)
	{
		this.board_like = board_like;
	}

	public String getPerson_id()
	{
		return person_id;
	}

	public void setPerson_id(String person_id)
	{
		this.person_id = person_id;
	}

	@Override
	public String toString()
	{
		return "Board [board_num=" + board_num + ", board_contents=" + board_contents + ", board_title=" + board_title
				+ ", board_hits=" + board_hits + ", board_like=" + board_like + ", person_id=" + person_id + "]";
	}

	
	
}
