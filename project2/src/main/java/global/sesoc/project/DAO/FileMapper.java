package global.sesoc.project.DAO;

import java.util.ArrayList;

import global.sesoc.project.VO.File;

public interface FileMapper		{

	ArrayList<File> select(int boardnum);

	File select_one(int filenum);

	int delete(int boardnum);

	int deleteOne(int filenum);
	
}
