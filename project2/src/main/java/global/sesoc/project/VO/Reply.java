package global.sesoc.project.VO;

public class Reply	{
	
	int board_num;
	String person_id;
	String reply_num;
	String reply_contents;
	String reply_date;
	
	public Reply(){}

	public Reply(int board_num, String person_id, String reply_num, String reply_contents, String reply_date)
	{
		super();
		this.board_num = board_num;
		this.person_id = person_id;
		this.reply_num = reply_num;
		this.reply_contents = reply_contents;
		this.reply_date = reply_date;
	}

	public int getBoard_num()
	{
		return board_num;
	}

	public int setBoard_num(int board_num)
	{
		return this.board_num = board_num;
	}

	public String getPerson_id()
	{
		return person_id;
	}

	public void setPerson_id(String person_id)
	{
		this.person_id = person_id;
	}

	public String getReply_num()
	{
		return reply_num;
	}

	public void setReply_num(String reply_num)
	{
		this.reply_num = reply_num;
	}

	public String getReply_contents()
	{
		return reply_contents;
	}

	public void setReply_contents(String reply_contents)
	{
		this.reply_contents = reply_contents;
	}

	public String getReply_date()
	{
		return reply_date;
	}

	public void setReply_date(String reply_date)
	{
		this.reply_date = reply_date;
	}

	@Override
	public String toString()
	{
		return "Reply [board_num=" + board_num + ", person_id=" + person_id + ", reply_num=" + reply_num
				+ ", reply_contents=" + reply_contents + ", reply_date=" + reply_date + "]";
	}
	
	
	
}
