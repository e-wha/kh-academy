package org.big.p462_3;

public class CheckBoxEx {

	public static void main(String[] args) {
		CheckBox checkbox = new CheckBox();
		checkbox.setOnSelectListener(new CheckBox.OnSelectListener() {
			
			@Override
			public void onSelect() {
				System.out.println("배경을 변경합니다.");
				
			}
		});
		checkbox.select();

	}

}
