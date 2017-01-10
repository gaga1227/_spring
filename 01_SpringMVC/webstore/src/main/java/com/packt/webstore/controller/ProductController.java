package com.packt.webstore.controller;

import java.math.BigDecimal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.packt.webstore.domain.Product;

@Controller
public class ProductController {

	@RequestMapping("/products")
	public String list(Model model) {

		// create product object
		Product iphone = new Product("P1234", "iPhone 6s", new BigDecimal(500));
		iphone.setDescription("Apple iPhone 6s smartphone with 4.00-inch 640x1136 display and 8-megapixel rear camera");
		iphone.setCategory("Smartphone");
		iphone.setManufacturer("Apple");
		iphone.setUnitsInStock(1000);

		// add product object to view model
		model.addAttribute("product", iphone);

		return "products";
	}
}
