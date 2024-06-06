package com.Services;

import com.Beans.Product;

import java.util.ArrayList;

public interface ProductService {
    void addProduct(Product product);
    ArrayList<Product> getProducts();
}
