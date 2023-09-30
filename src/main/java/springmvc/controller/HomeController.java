package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	/*
	 * This method is for Model
	 */
	@RequestMapping("/home")
	public String home(Model model) {
		System.out.println("Home api calling...!");
		model.addAttribute("name", "Parth Kathiriya");
		model.addAttribute("city", "Surat");

		List<String> friends = new ArrayList<String>();
		friends.add("Raj");
		friends.add("Arti");
		friends.add("Kishan");

		model.addAttribute("name", "Parth Kathiriya");
		model.addAttribute("friends", friends);
		return "index";
	}

	@RequestMapping("/about")
	public String about() {
		System.out.println("This is about page!!");
		return "about";
	}

	/*
	 * This method is for ModelAndView
	 */
	@RequestMapping("/help")
	public ModelAndView help() {
		System.out.println("This is about page!!");

		List<String> friends = new ArrayList<String>();
		friends.add("Raj");
		friends.add("Arti");
		friends.add("Kishan");

		ModelAndView modelandview = new ModelAndView();

		modelandview.addObject("name", "Parth kathiriya");
		modelandview.addObject("friends", friends);
		modelandview.setViewName("help");

		return modelandview;
	}

}
