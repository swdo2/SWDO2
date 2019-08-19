package global.sesoc.project.VO;

public class Person	{
	
		String id;
		String name;
		String password;
		String email;
		String phone;
		String purchaselist;
		int cash;
		
		
		public Person(String id, String name, String password, String email, String phone, String purchaselist,
				int cash)
		{
			super();
			this.id = id;
			this.name = name;
			this.password = password;
			this.email = email;
			this.phone = phone;
			this.purchaselist = purchaselist;
			this.cash = cash;
		}


		public String getId()
		{
			return id;
		}


		public void setId(String id)
		{
			this.id = id;
		}


		public String getName()
		{
			return name;
		}


		public void setName(String name)
		{
			this.name = name;
		}


		public String getPassword()
		{
			return password;
		}


		public void setPassword(String password)
		{
			this.password = password;
		}


		public String getEmail()
		{
			return email;
		}


		public void setEmail(String email)
		{
			this.email = email;
		}


		public String getPhone()
		{
			return phone;
		}


		public void setPhone(String phone)
		{
			this.phone = phone;
		}


		public String getPurchaselist()
		{
			return purchaselist;
		}


		public void setPurchaselist(String purchaselist)
		{
			this.purchaselist = purchaselist;
		}


		public int getCash()
		{
			return cash;
		}


		public void setCash(int cash)
		{
			this.cash = cash;
		}


		@Override
		public String toString()
		{
			return "Person [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", phone="
					+ phone + ", purchaselist=" + purchaselist + ", cash=" + cash + "]";
		}
		
		
	
}
