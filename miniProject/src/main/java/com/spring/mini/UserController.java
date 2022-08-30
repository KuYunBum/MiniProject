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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.UserDto;
import com.spring.service.AuthoritiesService;
import com.spring.service.UserService;


@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
    PasswordEncoder passwordEncoder;
	
	@Autowired
	private UserService service;
	
	@Autowired
	private AuthoritiesService authService;

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
	
	@RequestMapping(value = "/user/join", method = RequestMethod.GET)
	public String join() {
		return "/user/join";
	}
		
	@RequestMapping(value = "/user/join", method = RequestMethod.POST)
	public String insertDB(UserDto dto,RedirectAttributes rttr) throws Exception{
		
			String encPassword = passwordEncoder.encode(dto.getUserPW());
			dto.setUserPW(encPassword);
		try {
			service.insert(dto);
		}catch (Exception e) {
			rttr.addFlashAttribute("msg","null");
			return "redirect:/user/join";
		}
		rttr.addFlashAttribute("msg","success");
		return "redirect:/user/login";
	}
	
	@RequestMapping(value = "/user/update", method = RequestMethod.GET)
	public void update(String userID, Model model) throws Exception {
		model.addAttribute("dto", service.selectName(userID));
	}
	
	@RequestMapping(value = "/user/update", method = RequestMethod.POST)
	public String updateDB(UserDto dto, RedirectAttributes rttr) throws Exception{
		try {
			service.update(dto);
		}catch (Exception e) {
			rttr.addFlashAttribute("msg","null");
			return "redirect:/user/update?userID="+dto.getUserID();
		}
		logger.info(dto.toString());
		rttr.addFlashAttribute("msg","success");
		return "redirect:/member/member";
	}
	
	@RequestMapping(value = "/user/pwUpdate", method = RequestMethod.GET)
	public void pwUpdate(String userID, Model model) throws Exception {
		model.addAttribute("dto", service.selectName(userID));
	}
	
	@RequestMapping(value = "/user/pwUpdate", method = RequestMethod.POST)
	public String pwUpdateDB(UserDto dto, RedirectAttributes rttr) throws Exception{
		
		if(dto.getUserPW().equals("")) {
			rttr.addFlashAttribute("msg","null");
			return "redirect:/user/pwUpdate?userID="+dto.getUserID();
		}else {
			String encPassword = passwordEncoder.encode(dto.getUserPW());
			dto.setUserPW(encPassword);
			service.pwUpdate(dto);
		}
		logger.info(dto.toString());
		rttr.addFlashAttribute("msg","success");
		return "redirect:/member/member";
	}
	
	@RequestMapping(value = "/user/findUser", method = RequestMethod.GET)
	public void findUser() throws Exception {
		
	}
	
	@RequestMapping(value = "/user/findUser", method = RequestMethod.POST)
	@ResponseBody
	public UserDto findUserDB(UserDto dto) throws Exception {
		UserDto user = service.findUser(dto);
		String randomPW =  Integer.toString((int)(Math.random()*1000000+1000000));
		String encPassword = passwordEncoder.encode(randomPW);
		user.setUserPW(encPassword);
		service.pwUpdate(user);
		user.setUserPW(randomPW);
		return user;
	}
	
	@RequestMapping(value = "/user/detail", method = RequestMethod.GET)
	public void detail(String userID, Model model) throws Exception {
		
		model.addAttribute("dto", service.selectName(userID));
	}
	
	@RequestMapping(value = "/user/delete", method = RequestMethod.GET)
	public String delete(String userID, RedirectAttributes rttr) throws Exception {
		
		service.delete(userID);
		authService.delete(userID);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/user/logout";
	}
	
	@RequestMapping(value = "/user/idcheck", method = RequestMethod.GET)
	@ResponseBody 
	public int idcheck(String userID) throws Exception {
	    int result = service.checkId(userID);
	    return result; 
	}
	
}
