package com.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UsersController {

//	@GetMapping("")
//	public String main() {
//		return "/main";
//	}
	
	@GetMapping(path= {"home",""})
	public String Home() {
		return "/Home";
	}
	
	@GetMapping("/about")
	public String Home1() {
		return "/About";
	}
	
	@GetMapping("/service")
	public String Home2() {
		return "/Service";
	}
	
	@GetMapping("/contact")
	public String Home3() {
		return "/Contact";
	}
	
	@GetMapping("/login")
	public String Home4() {
		return "/Login";
	}
	
	@GetMapping("/loginpage")
	public String Home5() {
		return "/LoginPage";
	}
	
	@GetMapping("/homepage")
	public String Home6() {
		return "/HomePage";
	}
	
	@GetMapping("/forgetpassword")
	public String Home7() {
		return "/ForgetPassword";
	}
	
	@GetMapping("/signup")
	public String Home8() {
		return "/SignUp";
	}
	@GetMapping("/products")
	public String Products() {
		return "/Products";
	}
}
