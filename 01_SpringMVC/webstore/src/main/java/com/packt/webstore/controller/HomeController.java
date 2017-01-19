package com.packt.webstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping
	public String welcome() {
		return "redirect:/welcome/greeting";
	}

	@RequestMapping("/welcome/greeting")
	public String greeting(Model model) {
		String intro = "Today across Australia's #1 eCommerce store";
		String description = "Over 1000 bargain products for you to choose!";

		model.addAttribute("intro", intro);
		model.addAttribute("description", description);

		return "welcome";
	}
}
