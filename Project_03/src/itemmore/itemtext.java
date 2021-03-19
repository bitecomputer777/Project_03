package itemmore;

public class itemtext {
	
	private String condition; // 상태
	private String from; // 원산지
	private String brand;// 브랜드
	private String keep;// 보관
	private String kg;// 중량
	private String detaimg ;//상세이미지
	

	public itemtext() {}
	public itemtext (String condition, String from, String brand, String keep, String kg,String detaimg) {
		this.condition=condition;
		this.from=from;
		this.brand=brand;
		this.keep=keep;
		this.kg=kg;
		this.detaimg=detaimg;
		}
	
	
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getKeep() {
		return keep;
	}
	public void setKeep(String keep) {
		this.keep = keep;
	}
	public String getKg() {
		return kg;
	}
	public void setKg(String kg) {
		this.kg = kg;
	}
	public String getDetaimg() {
		return detaimg;
	}
	public void setDetaimg(String detaimg) {
		this.detaimg = detaimg;
	}
	
	
	
	
}
