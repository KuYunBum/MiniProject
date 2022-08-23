package com.spring.mini;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.UserDto;
import com.spring.service.UserService;

@Controller
public class AdminUserController {
	@Autowired
    PasswordEncoder passwordEncoder;
	
	@Autowired
	private UserService service;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminUserController.class);
	
	
	@RequestMapping(value = "/admin/user/update", method = RequestMethod.GET)
	public String update(String userID, Model model) throws Exception {
		model.addAttribute("dto", service.selectName(userID));
		return "/admin/user/update";
	}
	
	@RequestMapping(value = "/admin/user/update", method = RequestMethod.POST)
	public String updateDB(UserDto dto,RedirectAttributes rttr) throws Exception{
		String encPassword = passwordEncoder.encode(dto.getUserPW());
		dto.setUserPW(encPassword);
		service.update(dto);
		logger.info(dto.toString());
		rttr.addFlashAttribute("msg","success");
		return "redirect:/admin/user/selectAll";
	}
	
	@RequestMapping(value = "/admin/user/delete", method = RequestMethod.GET)
	public String delete(String userID,RedirectAttributes rttr) throws Exception{
		service.delete(userID);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/admin/user/selectAll";
	}
	
	@RequestMapping(value = "/admin/user/selectName", method = RequestMethod.GET)
	public String selectName(String userID,Model model) throws Exception{
		model.addAttribute("dto", service.selectName(userID));
		return "/admin/user/selectName";
	}
	
	@RequestMapping(value = "/admin/user/selectAll", method = RequestMethod.GET)
	public String selectAll(Model model) throws Exception{
		model.addAttribute("list", service.selectAll());
		return "/admin/user/selectAll";
	}
	
	@RequestMapping(value = "/admin/user/insert", method = RequestMethod.GET)
	public String insert() {
		return "/admin/user/insert";
	}
		
	@RequestMapping(value = "/admin/user/insert", method = RequestMethod.POST)
	public String insertDB(UserDto dto,RedirectAttributes rttr) throws Exception{
		String encPassword = passwordEncoder.encode(dto.getUserPW());
		dto.setUserPW(encPassword);
		service.insert(dto);
		System.out.println(dto);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/admin/user/selectAll";
	}
}
