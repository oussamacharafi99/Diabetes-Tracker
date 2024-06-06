package com.Services;

import com.Beans.Product;
import com.Repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class ProductServiceImp implements ProductService{
    @Autowired
    ProductRepository productRepository;
    @Override
    public void addProduct(Product product) {
        productRepository.save(product);
    }

    @Override
    public ArrayList<Product> getProducts() {
        return (ArrayList<Product>) productRepository.findAll();
    }
}
