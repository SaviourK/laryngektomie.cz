package cz.laryngektomie.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {
	
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("action", "index");
		mv.addObject("title", "Home");
		return mv;
	}
	
	@RequestMapping("layout")
	public ModelAndView layout() {
		ModelAndView mv = new ModelAndView("layout");
		mv.addObject("action", "layout");
		mv.addObject("title", "Layout");
		return mv;
	}
	
	@RequestMapping("jicnovy-hlas")
	public ModelAndView jicnovyHlas() {
		ModelAndView mv = new ModelAndView("jicnovy-hlas");
		mv.addObject("action", "jicnovy-hlas");
		mv.addObject("title", "Jícnový hlas");
		return mv;
	}
	
	@RequestMapping("dotazy")
	public ModelAndView dotazy() {
		ModelAndView mv = new ModelAndView("dotazy");
		mv.addObject("action", "dotazy");
		mv.addObject("title", "Dotazy");
		return mv;
	}
	
	@PostMapping("sendComment")
	public List<String> comments() {
		List<String> comments = new ArrayList<String>();
		comments.add("abc");
		comments.add("bcd");
		comments.add("xyp");
		comments.size();
				
		return comments;
	}
}
