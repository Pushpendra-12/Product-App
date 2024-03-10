package com.product.Repository;


import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.product.Model.Product;


@Repository("productRepository")
public interface ProductRepository extends JpaRepository<Product, Long> {

//	
}
