package global.sesoc.project.DAO;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.project.VO.Purchaseinfo;

@Repository
public class MypageDAO {

	@Autowired
	SqlSession sqlSession;

	public ArrayList<Purchaseinfo> purChaseList(String loginId) {
		MypageMapper mapper = sqlSession.getMapper(MypageMapper.class);
		ArrayList<Purchaseinfo> purChaseList = mapper.purChaseList(loginId);

		return purChaseList;
	}
}
