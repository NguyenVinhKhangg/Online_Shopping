/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author TTNhan
 */
public class Cart {

    private int STT;
    private int AccountID;
    private int ProductID;
    private int Amount;
    private Product product;

    public Cart() {
    }

    public Cart(int STT, int AccountID, int ProductID, int Amount) {
        this.STT = STT;
        this.AccountID = AccountID;
        this.ProductID = ProductID;
        this.Amount = Amount;
    }

    public int getSTT() {
        return STT;
    }

    public void setSTT(int STT) {
        this.STT = STT;
    }

    public int getAccountID() {
        return AccountID;
    }

    public void setAccountID(int AccountID) {
        this.AccountID = AccountID;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public int getAmount() {
        return Amount;
    }

    public void setAmount(int Amount) {
        this.Amount = Amount;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public String toString() {
        return "Cart{" + "STT=" + STT + ", AccountID=" + AccountID + ", ProductID=" + ProductID + ", Amount=" + Amount + '}';
    }

}
