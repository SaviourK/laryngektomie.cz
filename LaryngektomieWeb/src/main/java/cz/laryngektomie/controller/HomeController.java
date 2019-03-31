package cz.laryngektomie.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.print.attribute.standard.DateTimeAtCompleted;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cz.laryngektomie.model.Comment;
import cz.laryngektomie.repository.CommentRepository;


@Controller
public class HomeController {
	
	@Autowired
	CommentRepository commentRepository;
	
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
		List<Comment> comments = (List<Comment>)commentRepository.findAll();
		for(Comment com : comments) {
			System.out.println(com.getDateAsString());
		}
		
		mv.addObject("comments", comments);
		return mv;
	}
	
	@PostMapping("dotazy")
	public ModelAndView comments() {
		ModelAndView mv = new ModelAndView("dotazy");
		Comment c = new Comment();
		c.setText("Koment 8");
		
				
		LocalDateTime nowIdk = LocalDateTime.now();
		LocalDateTime now = nowIdk.plusHours(nowIdk.getHour()+5);
		Timestamp sqlNow = Timestamp.valueOf(now);
		c.setDate(sqlNow);
		commentRepository.save(c);	
		return mv;
	}
}
