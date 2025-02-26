package org.big.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookmarketController {
	
	@RequestMapping("/bookmarket/welcome.do")
	public String welcome() {
		return "/welcome";
	}
	
	@RequestMapping("/bookmarket/member/loginMember.do")
	public String login() {
		return "/member/loginMember";
	}
	
	@RequestMapping("/bookmarket/logout.do")
	public String logout() {
		return "/logout";
	}
	
	@RequestMapping("/bookmarket/member/resultMember.do")
	public String resultMember() {
		return "/member/resultMember";
	}
	
	@RequestMapping("/bookmarket/member/processAddMember.do")
	public String processAddMember() {
		return "/member/processAddMember";
	}
	
	@RequestMapping("/bookmarket/member/updateMember.do")
	public String updateMember() {
		return "/member/updateMember";
	}
	
	@RequestMapping("/bookmarket/member/processUpdateMember.do")
	public String processUpdateMember() {
		return "/member/processUpdateMember";
	}
	
	@RequestMapping("/bookmarket/member/deleteMember.do")
	public String deleteMember() {
		return "/member/deleteMember";
	}
	
	@RequestMapping("/bookmarket/menu.do")
	public String menu() {
		return "/menu";
	}
	
	@RequestMapping("/bookmarket/footer.do")
	public String footer() {
		return "/footer";
	}
	
	@RequestMapping("/bookmarket/member/processLoginMember.do")
	public String processLoginMember() {
		return "/member/processLoginMember";
	}
	
	@RequestMapping("/bookmarket/member/addMember.do")
	public String addMember() {
		return "/member/addMember";
	}
	
	@RequestMapping("/bookmarket/books.do")
	public String books() {
		return "/books";
	}
	
	@RequestMapping("/bookmarket/dbconn.do")
	public String dbconn() {
		return "/dbconn";
	}
	
	@RequestMapping("/bookmarket/addBook.do")
	public String addBook() {
		return "/addBook";
	}
	
	@RequestMapping("/bookmarket/processAddBook.do")
	public String processAddBook() {
		return "/processAddBook";
	}
	
	@RequestMapping("/bookmarket/editBook.do")
	public String editBook() {
		return "/editBook";
	}
	
	@RequestMapping("/bookmarket/updateBook.do")
	public String updateBook() {
		return "/updateBook";
	}
	
	@RequestMapping("/bookmarket/processUpdateBook.do")
	public String processUpdateBook() {
		return "/processUpdateBook";
	}
	
	@RequestMapping("/bookmarket/exceptionNoBookId.do")
	public String exceptionNoBookId() {
		return "/exceptionNoBookId";
	}
	
	@RequestMapping("/bookmarket/deleteBook.do")
	public String deleteBook() {
		return "/deleteBook";
	}
	
	@RequestMapping("/bookmarket/book.do")
	public String book() {
		return "/book";
	}
	
	@RequestMapping("/bookmarket/cart.do")
	public String cart() {
		return "/cart";
	}
	
	@RequestMapping("/bookmarket/addCart.do")
	public String addCart() {
		return "/addCart";
	}
	
	@RequestMapping("/bookmarket/deleteCart.do")
	public String deleteCart() {
		return "/deleteCart";
	}
	
	@RequestMapping("/bookmarket/removeCart.do")
	public String removeCart() {
		return "/removeCart";
	}
	
	@RequestMapping("/bookmarket/shippingInfo.do")
	public String shippingInfo() {
		return "/shippingInfo";
	}
	
	@RequestMapping("/bookmarket/checkOutCancelled.do")
	public String checkOutCancelled() {
		return "/checkOutCancelled";
	}
	
	@RequestMapping("/bookmarket/processShippingInfo.do")
	public String processShippingInfo() {
		return "/processShippingInfo";
	}
	
	@RequestMapping("/bookmarket/orderConfirmation.do")
	public String orderConfirmation() {
		return "/orderConfirmation";
	}
	
	@RequestMapping("/bookmarket/thankCustomer.do")
	public String thankCustomer() {
		return "/thankCustomer";
	}
	

	
	
}
