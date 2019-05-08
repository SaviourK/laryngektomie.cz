package cz.laryngektomie.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

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
		mv.addObject("title", "Úvodc");

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

	@RequestMapping("poradna")
	public ModelAndView dotazy(@ModelAttribute("comment") Comment comment, HttpServletRequest request) {

		ModelAndView mv = new ModelAndView("poradna");
		mv.addObject("action", "poradna");
		mv.addObject("title", "Poradna");
		mv.addObject("pageNum", 1);
		mv.addObject("disabledPrev", "disabled");
		List<Integer> pages = new ArrayList<>();
		for (int i = 1; i <= 5; i++)
			pages.add(i);

		Pageable pageable = PageRequest.of(0, 5, Sort.by("Id").descending());
		Page<Comment> commentsPage = commentRepository.findAll(pageable);
		List<Comment> comments = commentsPage.getContent();
		mv.addObject("pages", pages);
		mv.addObject("comments", comments);
		return mv;
	}

	@GetMapping("poradna/{page}")
	public ModelAndView page(@ModelAttribute("comment") Comment comment, @PathVariable("page") int page) {

		ModelAndView mv = new ModelAndView("poradna");
		mv.addObject("action", "poradna");
		mv.addObject("title", "Poradna");

		Pageable pageable = PageRequest.of(page - 1, 5, Sort.by("Id").descending());
		Page<Comment> commentsPage = commentRepository.findAll(pageable);
		double size = (commentRepository.findAll().size()) / 5;
		List<Comment> comments = commentsPage.getContent();

		System.out.print(size);

		List<Integer> pages = comment.getPages(page, size);
		if (page == 1) {
			mv.addObject("disabledPrev", "disabled");
		} else if (page == size + 1) {
			mv.addObject("disabledNext", "disabled");
		}

		mv.addObject("pageNum", page);
		mv.addObject("pages", pages);
		mv.addObject("comments", comments);
		return mv;
	}

	@PostMapping("poradna")
	public ModelAndView comments(@ModelAttribute("comment") Comment comment) {

		ModelAndView mv = new ModelAndView("poradna");
		mv.addObject("action", "poradna");
		mv.addObject("title", "Poradna");

		if (comment.getText() != "" && comment.getEmail() != "" && comment.getText() != ""
				&& comment.getText().length() <= 1500) {
			comment.setDate(comment.getCetTime());
			commentRepository.save(comment);
		}

		List<Comment> comments = (List<Comment>) commentRepository.findAll();
		mv.addObject("comments", comments);

		return mv;
	}

}
