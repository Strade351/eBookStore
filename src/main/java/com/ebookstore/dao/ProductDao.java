package com.ebookstore.dao;

import com.ebookstore.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private List<Product> productList;

    public List<Product> getProductList() {
        Product product1 = new Product();
        product1.setProductName("Process");
        product1.setProductAuthor("F. Kafka");
        product1.setProductCategory("Books");
        product1.setProductDescription("Written in 1914 but not published until 1925, " +
                "a year after Kafka’s death, The Trial is the terrifying tale of Josef K., " +
                "a respectable bank officer who is suddenly and inexplicably arrested and must defend himself " +
                "against a charge about which he can get no information. Whether read as an existential tale, " +
                "a parable, or a prophecy of the excesses of " +
                "modern bureaucracy wedded to the madness of totalitarianism, " +
                "The Trial has resonated with chilling truth for generations of readers. \n");
        product1.setProductPrice(5);
        product1.setProductCondition("new");
        product1.setProductStatus("Active");
        product1.setUnitInStock(3);
        product1.setProductLanguage("English");

        productList = new ArrayList<Product>();
        productList.add(product1);

        return productList;
    }
}
