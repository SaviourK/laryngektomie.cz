package cz.laryngektomie.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("action", "index");
		mv.addObject("title", "Úvod");

		return mv;
	}

	@RequestMapping("ke-stazeni")
	public ModelAndView layout() {
		ModelAndView mv = new ModelAndView("ke-stazeni");
		mv.addObject("action", "ke-stazeni");
		mv.addObject("title", "Ke stažení");
		return mv;
	}

	@RequestMapping("jicnovy-hlas")
	public ModelAndView jicnovyHlas() {
		ModelAndView mv = new ModelAndView("jicnovy-hlas");
		mv.addObject("action", "jicnovy-hlas");
		mv.addObject("title", "Jícnový hlas");
		return mv;
	}

}
