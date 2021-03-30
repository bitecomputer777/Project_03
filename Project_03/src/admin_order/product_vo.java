package admin_product;

import java.util.Date;

public class product_vo {
	private String prd_order;
	private String prd_username;
	private String prd_obname;
	private String prd_id;
	private Date prd_date;
	private int prd_price;
	private String prd_kind;
	
	public product_vo(){}
	
	public product_vo(String prd_order,String prd_username,String prd_obname,String prd_id,Date prd_date ,int prd_price,String prd_kind ) {
		this.prd_order = prd_order; 
		this.prd_username = prd_username;
		this.prd_obname = prd_obname;
		this.prd_id = prd_id;
		this.prd_date = prd_date;
		this.prd_price = prd_price;
		this.prd_kind = prd_kind;
	}

	public String getPrd_order() {
		return prd_order;
	}

	public void setPrd_order(String prd_order) {
		this.prd_order = prd_order;
	}

	public String getPrd_username() {
		return prd_username;
	}

	public void setPrd_username(String prd_username) {
		this.prd_username = prd_username;
	}

	public String getPrd_obname() {
		return prd_obname;
	}

	public void setPrd_obname(String prd_obname) {
		this.prd_obname = prd_obname;
	}

	public String getPrd_id() {
		return prd_id;
	}

	public void setPrd_id(String prd_id) {
		this.prd_id = prd_id;
	}

	public Date getPrd_date() {
		return prd_date;
	}

	public void setPrd_date(Date prd_date) {
		this.prd_date = prd_date;
	}

	public int getPrd_price() {
		return prd_price;
	}

	public void setPrd_price(int prd_price) {
		this.prd_price = prd_price;
	}

	public String getPrd_kind() {
		return prd_kind;
	}

	public void setPrd_kind(String prd_kind) {
		this.prd_kind = prd_kind;
	}
	
	
	

}
