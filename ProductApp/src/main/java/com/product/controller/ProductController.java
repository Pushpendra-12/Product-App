package com.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.product.Model.Product;
import com.product.Service.ProductService;

import jakarta.servlet.http.HttpServletRequest;



@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/")
	public String home(Model model) {
		List<Product> products = productService.getAllProducts();
		model.addAttribute("product", products);
		return "index";
	}
	
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		m.addAttribute("title","Add product");
		return "add_product_form";
	}
	
	@RequestMapping(path = "/process-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product);
		productService.saveProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() +"/");
		return redirectView;
		
	}
	
	@RequestMapping("/delete-product/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") Long productId,HttpServletRequest request) {
		productService.delete(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
		
	}
	
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") Long productId,Model model) {
		Product product = productService.getProduct(productId);
		model.addAttribute("product",product);
		return "update_form";
	}

}
