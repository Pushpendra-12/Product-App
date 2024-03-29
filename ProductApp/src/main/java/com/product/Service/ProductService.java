package com.product.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.Model.Product;
import com.product.Repository.ProductRepository;

@Service("productService")
public class ProductService {
	@Autowired
	private ProductRepository productRepository;
	
	public void saveProduct(Product product) {
		productRepository.saveAndFlush(product);
	}
	
	public List<Product> getAllProducts(){
		List<Product> product = productRepository.findAll();
		return product;
	}
	
	public Product getProduct(Long Pid) {
		Optional<Product> p = productRepository.findById(Pid);
		if(p.isPresent()) {
			return p.get();
		}else {
			
		}
		return null;
	}
	
	
	public void delete(Long Pid) {
	    Optional<Product> optionalProduct = productRepository.findById(Pid);
	    
	    if (optionalProduct.isPresent()) {
	        Product p = optionalProduct.get();
	        productRepository.delete(p);
	    } else {
	        System.out.println(false);
	    }
	}

}
