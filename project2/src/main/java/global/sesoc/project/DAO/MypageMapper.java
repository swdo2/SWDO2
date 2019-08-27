package global.sesoc.project.DAO;

import java.util.ArrayList;

import global.sesoc.project.VO.Purchaseinfo;

public interface MypageMapper {
	public ArrayList<Purchaseinfo> purChaseList(String loginId);
}
