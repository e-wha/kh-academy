package org.big.p385;

public class AnimalEx {

	public static void main(String[] args) {
		Dog dog = new Dog();
		Cat cat = new Cat();
		dog.sound();
		cat.sound();
		System.out.println("-----");
		
		Animal ani = null;
		ani = new Dog();
		ani.sound();
		ani = new Cat();
		ani.sound();
		System.out.println("-----");
		
		animalSound(new Dog());
		animalSound(new Cat());

	}
	
	public static void animalSound(Animal ani) {
		ani.sound();
	}

}
