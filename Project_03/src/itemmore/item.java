package itemmore;

public class item {
	private String bigimg; //큰 이미지
	private String itemtit;  //상품이름
	private int pricereal;  //상품가격
	private String opt;  //옵션
	private String itemno ; //상품번호
	private String kind ; //상품종류
	private int among; //상품수량
	private int sale; //판매수량
	
	
	public item(String bigimg, String itemtit, int pricereal, String opt, String itemno, String kind, int among, int sale) {
this.bigimg=bigimg;
this.itemtit=itemtit;
this.pricereal=pricereal;
this.opt=opt;
this.itemno=itemno;
this.kind=kind;
this.among=among;
this.sale=sale;
	}
	
	
	
	
	public String getBigimg() {
		return bigimg;
	}
	public void setBigimg(String bigimg) {
		this.bigimg = bigimg;
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
	public String getOpt() {
		return opt;
	}
	public void setOpt(String opt) {
		this.opt = opt;
	}
	public String getItemno() {
		return itemno;
	}
	public void setItemno(String itemno) {
		this.itemno = itemno;
	}

	public String getKind() {
		return kind;
		}
	public void setKind(String kind) {
		this.kind = kind;
	}

 public int getAmong() {
		return among;
	}
	public void setAmong(int among) {
		this.among = among;
	}
public int getSale() {
		return sale;
	}
public void setSale(int sale) {
		this.sale = sale;
	}
	
}
