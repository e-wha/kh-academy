package org.big.p307_3;

public class ShopService {
	
	private ShopService() { }
	
	private static ShopService singleShop = new ShopService();
	
	static ShopService getInstance() {
		return singleShop;
	}
}
