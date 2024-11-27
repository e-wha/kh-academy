package org.big.p449;

public class Anonymous {
	Parent pt = new Parent() {
		void work() {
			System.out.println("출근합니다.");
		}
		void wake() {
			System.out.println("6시에 일어납니다.");
			work();
		};
	};
	
	void method1() {
		Parent localVar = new Parent() {
			void walk() {
				System.out.println("산책합니다.");
			}
			void wake() {
				System.out.println("7시에 일어납니다.");
				walk();
			};
		};
		
		localVar.wake();
	}
	
	void method2(Parent pt) {
		pt.wake();
	}
}
