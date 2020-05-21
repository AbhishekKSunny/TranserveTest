package com.Transerve.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Transerve.modal.User;
import com.Transerve.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	@Autowired
	private UserService userService;
	
	@GetMapping
	public String hello() {
		return "This is Home page";
	}
	
	@GetMapping("/saveuser")
	public String saveUser(@RequestParam String username, @RequestParam String email, @RequestParam String organisation, @RequestParam String password, @RequestParam String confirm) {
		User user = new User(username, email, organisation, password, confirm);
		userService.saveMyUser(user);
		return "User Saved";
	}
}
