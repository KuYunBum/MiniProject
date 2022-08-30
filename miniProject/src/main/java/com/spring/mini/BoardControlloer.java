package com.spring.mini;



import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.BoardDto;
import com.spring.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardControlloer {
	
private static final Logger logger = LoggerFactory.getLogger(BoardControlloer.class);

	@Inject
	private BoardService boardService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Model model) throws Exception {
			
		model.addAttribute("list", boardService.list());
		
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertGET() throws Exception {
		
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	@ResponseBody
	public int insertPOST(BoardDto dto) throws Exception {
		
		try {
			boardService.insert(dto);
		}catch (Exception e) {
			int result = 0;
			return result;
		}
		logger.info(dto.toString());
		
		int result = 1;
		return result;
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void detail(int bno, Model model) throws Exception {
		
		model.addAttribute(boardService.detail(bno));
		boardService.viewCnt(bno);
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public void updateGET(int bno, Model model) throws Exception {
		
		model.addAttribute(boardService.detail(bno));
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public int updatePOST(BoardDto dto, RedirectAttributes rttr) throws Exception {
		
		if(dto.getTitle().equals("")||dto.getContent().equals("")) {
			int result = 0;
			return result;
		}else {
			boardService.update(dto);
		}
		logger.info(dto.toString());
		
		int result = 1;
		return result;
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(int bno, RedirectAttributes rttr) throws Exception {
		
		boardService.delete(bno);
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/board/list";
	}

}
