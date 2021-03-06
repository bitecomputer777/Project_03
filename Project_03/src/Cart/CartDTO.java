package Cart;

public class CartDTO {

	private int cart_id;  
	private String member_id;
	private String name;
	private int itemno;
	private String itemtit;
	private int pricereal;
	private int money;
	private int among;
	
	
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getItemno() {
		return itemno;
	}
	public void setItemno(int itemno) {
		this.itemno = itemno;
	}
	public String getItemtit() {
		return itemtit;
	}
	public void setItemtit(String itemtit) {
		this.itemtit = itemtit;
	}
	public int getPricereal() {
		return pricereal;
	}
	public void setPricereal(int pricereal) {
		this.pricereal = pricereal;
	}
	
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public int getAmong() {
		return among;
	}
	public void setAmong(int among) {
		this.among = among;
	}
	

@Override
public String toString() {
	return "CartDTO [cart_id=" + cart_id + ", memberid=" + member_id + ", name=" + name + ", itemno=" + itemno
            + ", itemtit=" + itemtit + ", pricereal=" + pricereal + ", money=" + money + ", among=" + among + "]";
}
}
