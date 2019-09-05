package global.sesoc.project.VO;

public class File	{

	private int file_num;
	private int board_num;
	private String originalfile;
	private String savedfile;
	
	
	public File() {
		super();
		// TODO Auto-generated constructor stub
	}


	public File(int file_num, int board_num, String originalfile, String savedfile)
	{
		super();
		this.file_num = file_num;
		this.board_num = board_num;
		this.originalfile = originalfile;
		this.savedfile = savedfile;
	}


	public int getFile_num()
	{
		return file_num;
	}


	public void setFile_num(int file_num)
	{
		this.file_num = file_num;
	}


	public int getBoard_num()
	{
		return board_num;
	}


	public void setBoard_num(int board_num)
	{
		this.board_num = board_num;
	}


	public String getOriginalfile()
	{
		return originalfile;
	}


	public void setOriginalfile(String originalfile)
	{
		this.originalfile = originalfile;
	}


	public String getSavedfile()
	{
		return savedfile;
	}


	public void setSavedfile(String savedfile)
	{
		this.savedfile = savedfile;
	}
	
}
