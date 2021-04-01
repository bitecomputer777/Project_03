package Cart;

import java.util.List;

public interface Cart1 {
	
	    List<CartDTO> cartMoney();
	    void insert(CartDTO dto); 
	    //장바구니 추가하기
	    List<CartDTO> listCart(String userid); 
	    //장바구니 리스트
	    void delete(int cart_id); 
	    //장바구니 개별 삭제
	    void deleteAll(String member_id); 
	    //장바구니 비우기
	    void update(int cart_id); 
	    //장바구니 업데이트
	    int sumMoney(String member_id); 
	    //장바구니 금액 합계
	    int countCart(String member_id, int itemno); 
	    //장바구니 상품 갯수
	    void updateCart(CartDTO dto); 
	    //장바구니 수정 
	    void modifyCart(CartDTO dto);
	    //장바구니 수정 
	    
	}
	