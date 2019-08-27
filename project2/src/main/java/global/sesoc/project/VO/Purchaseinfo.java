package global.sesoc.project.VO;

//구매한 책정보들
public class Purchaseinfo
{
	//구매한 사용자 id
	String PERSON_ID;
	//책 대여기간
	String PURCHASEINFO_RENTALPERIOD;
	//책 고유번호
	String PURCHASE_ISBN;
	
	
	
	public Purchaseinfo() {
		super();
	}
	
	public Purchaseinfo(String pERSON_ID, String pURCHASEINFO_RENTALPERIOD, String pURCHASE_ISBN) {
		super();
		PERSON_ID = pERSON_ID;
		PURCHASEINFO_RENTALPERIOD = pURCHASEINFO_RENTALPERIOD;
		PURCHASE_ISBN = pURCHASE_ISBN;
	}
	public String getPERSON_ID() {
		return PERSON_ID;
	}
	public void setPERSON_ID(String pERSON_ID) {
		PERSON_ID = pERSON_ID;
	}
	public String getPURCHASEINFO_RENTALPERIOD() {
		return PURCHASEINFO_RENTALPERIOD;
	}
	public void setPURCHASEINFO_RENTALPERIOD(String pURCHASEINFO_RENTALPERIOD) {
		PURCHASEINFO_RENTALPERIOD = pURCHASEINFO_RENTALPERIOD;
	}
	public String getPURCHASE_ISBN() {
		return PURCHASE_ISBN;
	}
	public void setPURCHASE_ISBN(String pURCHASE_ISBN) {
		PURCHASE_ISBN = pURCHASE_ISBN;
	}
	@Override
	public String toString() {
		return "Purchaseinfo [PERSON_ID=" + PERSON_ID + ", PURCHASEINFO_RENTALPERIOD=" + PURCHASEINFO_RENTALPERIOD
				+ ", PURCHASE_ISBN=" + PURCHASE_ISBN + "]";
	}
	
	
	
	
}
