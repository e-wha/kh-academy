package org.big.p610;

import java.util.LinkedList;
import java.util.Queue;

public class QueueEx {

	public static void main(String[] args) {
		Queue<Message> msgQueue = new LinkedList<Message>();
		
		msgQueue.offer(new Message("sendMail", "홍길동"));
		msgQueue.offer(new Message("sendSMS", "신용권"));
		msgQueue.offer(new Message("sendKakaotalk", "홍두깨"));
		
		while (!msgQueue.isEmpty()) {
			Message message = msgQueue.poll();
			switch (message.command) {
				case "sendMail": {
					System.out.println(message.to + "님에게 메일을 보냅니다.");
					break;
				}
				case "sendSMS": {
					System.out.println(message.to + "님에게 메일을 보냅니다.");
					break;
				}
				case"sendKakaotalk": {
					System.out.println(message.to + "님에게 메일을 보냅니다.");
					break;
				}
			}
		}
	
	}

}
