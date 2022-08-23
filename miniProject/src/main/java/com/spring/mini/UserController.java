package com.spring.mini;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.UserDto;
import com.spring.service.UserService;


@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
    PasswordEncoder passwordEncoder;
	
	@Autowired
	private UserService service;

	@RequestMapping(value = "/user/user", method = RequestMethod.GET)
	public String user(Locale locale, Model model) {
		
		return "/user/user";
	}
	
	@RequestMapping(value = "/user/error", method = RequestMethod.GET)
	public String userError(Locale locale, Model model) {
		return "/user/error";
	}
	@RequestMapping(value = "/user/login", method = RequestMethod.GET)
	public String userLogin(Locale locale, Model model) {
		return "/user/login";
	}
	
	@RequestMapping(value = "/user/insert", method = RequestMethod.GET)
	public String insert() {
		return "/user/insert";
	}
		
	@RequestMapping(value = "/user/insert", method = RequestMethod.POST)
	public String insertDB(UserDto dto,RedirectAttributes rttr) throws Exception{
		String encPassword = passwordEncoder.encode(dto.getUserPW());
		dto.setUserPW(encPassword);
		service.insert(dto);
		System.out.println(dto);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/user/login";
	}
}
