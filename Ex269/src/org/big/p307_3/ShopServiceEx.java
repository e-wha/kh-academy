package org.big.p307_3;

public class ShopServiceEx {

	public static void main(String[] args) {
		ShopService obj1 = ShopService.getInstance();
		System.out.println("obj1 = " + obj1);
		ShopService obj2 = ShopService.getInstance();
		System.out.println("obj2 = " + obj2);

	}

}
