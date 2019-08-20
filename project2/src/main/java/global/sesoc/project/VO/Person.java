package global.sesoc.project.VO;

public class Person	{
	
		String person_id;
		String person_name;
		String person_password;
		String person_email;
		String person_phone;
		String person_purchaselist;
		int person_cash;
		
		public Person(){
			
		}

		public Person(String person_id, String person_name, String person_password, String person_email,
				String person_phone, String person_purchaselist, int person_cash)
		{
			super();
			this.person_id = person_id;
			this.person_name = person_name;
			this.person_password = person_password;
			this.person_email = person_email;
			this.person_phone = person_phone;
			this.person_purchaselist = person_purchaselist;
			this.person_cash = person_cash;
		}

		
		
		public Person(String person_id, String person_name, String person_password, String person_email,
				String person_phone)
		{
			super();
			this.person_id = person_id;
			this.person_name = person_name;
			this.person_password = person_password;
			this.person_email = person_email;
			this.person_phone = person_phone;
		}

		public String getPerson_id()
		{
			return person_id;
		}

		public void setPerson_id(String person_id)
		{
			this.person_id = person_id;
		}

		public String getPerson_name()
		{
			return person_name;
		}

		public void setPerson_name(String person_name)
		{
			this.person_name = person_name;
		}

		public String getPerson_password()
		{
			return person_password;
		}

		public void setPerson_password(String person_password)
		{
			this.person_password = person_password;
		}

		public String getPerson_email()
		{
			return person_email;
		}

		public void setPerson_email(String person_email)
		{
			this.person_email = person_email;
		}

		public String getPerson_phone()
		{
			return person_phone;
		}

		public void setPerson_phone(String person_phone)
		{
			this.person_phone = person_phone;
		}

		public String getPerson_purchaselist()
		{
			return person_purchaselist;
		}

		public void setPerson_purchaselist(String person_purchaselist)
		{
			this.person_purchaselist = person_purchaselist;
		}

		public int getPerson_cash()
		{
			return person_cash;
		}

		public void setPerson_cash(int person_cash)
		{
			this.person_cash = person_cash;
		}

		@Override
		public String toString()
		{
			return "Person [person_id=" + person_id + ", person_name=" + person_name + ", person_password="
					+ person_password + ", person_email=" + person_email + ", person_phone=" + person_phone
					+ ", person_purchaselist=" + person_purchaselist + ", person_cash=" + person_cash + "]";
		}
		
		
}
