/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author trinh
 */
public class Product {

    private int id;
    private String name;
    private String image;
    private double price;
    private String title;
    private String description;

    private int cateD;
    private int sellID;
    private int quantily;

    // detail
    public Product(int id, String name, String image, double price, String title, String description, int quantily) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;

        this.quantily = quantily;
    }

    public Product() {
    }

    public Product(int id, String name, String image, double price, String title, String description) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
    }

    public Product(String name, String image, double price, String title, String description, int cateD, int sellID) {

        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
        this.cateD = cateD;
        this.sellID = sellID;
    }

    public Product(String name, String image, double price, String title, String description, int cateD, int sellID, int quantily) {

        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
        this.cateD = cateD;
        this.sellID = sellID;
        this.quantily = quantily;
    }

    public Product(int id, String name, String image, double price, String title, String description, int cateD, int sellID, int quantily) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
        this.cateD = cateD;
        this.sellID = sellID;
        this.quantily = quantily;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCateD() {
        return cateD;
    }

    public void setCateD(int cateD) {
        this.cateD = cateD;
    }

    public int getSellID() {
        return sellID;
    }

    public void setSellID(int sellID) {
        this.sellID = sellID;
    }

    public int getQuantily() {
        return quantily;
    }

    public void setQuantily(int quantily) {
        this.quantily = quantily;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", title=" + title + ", description=" + description + ", cateD=" + cateD + ", sellID=" + sellID + ", quantily=" + quantily + '}';
    }

}
