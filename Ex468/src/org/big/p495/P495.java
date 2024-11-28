package org.big.p495;

public class P495 {
	public String id;
	
	public P495(String id) {
		this.id = id;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof P495) {
			P495 p495 =(P495)obj;
			if(id.equals(p495.id)) {
				return true;
			}
		}
		return false;
	}
}
