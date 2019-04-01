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

        Product product2 = new Product();
        product2.setProductName("Норма");
        product2.setProductAuthor("Владимир Сорокин");
        product2.setProductCategory("Books");
        product2.setProductDescription("«Норма» — дебютный роман Владимира Сорокина. " +
                "Был написан автором во времена СССР и распространялся в самиздате. " +
                "В 2002 году книга была переиздана издательством Ad Marginem и " +
                "вошла в собрание сочинений писателя. \n");
        product2.setProductPrice(4);
        product2.setProductCondition("new");
        product2.setProductStatus("Active");
        product2.setUnitInStock(5);
        product2.setProductLanguage("Русский");

        Product product3 = new Product();
        product3.setProductName("Burzum - Filosofem");
        product3.setProductAuthor("Burzum");
        product3.setProductCategory("Vinyl");
        product3.setProductDescription("Filosofem (Norwegian for \"philosopheme\") is the fourth studio album by" +
                " Norwegian black metal solo project Burzum." +
                " It was recorded in March 1993 and was the last recording before Varg Vikernes' " +
                "imprisonment (16 May 1994); the album was not released until January 1996, however." +
                "The album is noted for its experimental sound when " +
                "compared to most other second wave black metal. " +
                "Vikernes considered the release an \"anti-trend album\".\n");
        product3.setProductPrice(40);
        product3.setProductCondition("old");
        product3.setProductStatus("Active");
        product3.setUnitInStock(2);
        product3.setProductLanguage("English");

        productList = new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);

        return productList;
    }
}
