/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.SQLContex;
import entity.Account;
import entity.Cart;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author trinh
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(5),
                        rs.getString(4),
                        rs.getString(6),
                        rs.getInt(9)));
            }
            conn.close();
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
            conn.close();
        } catch (SQLException e) {
        }
        return list;
    }

    public Product getLast() {
        String query = "SELECT *\n"
                + "FROM product\n"
                + "ORDER BY id DESC\n"
                + "LIMIT 1;";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(5),
                        rs.getString(4),
                        rs.getString(6),
                        rs.getInt(9));
            }
            conn.close();
        } catch (SQLException e) {
        }
        return null;
    }

    public List<Product> getProductByCate(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where category = ?";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(5),
                        rs.getString(4),
                        rs.getString(6),
                        rs.getInt(9)));
            }
            conn.close();
        } catch (SQLException e) {
        }
        return list;
    }

    public void addCart(Cart cart) {
        String query = "INSERT INTO `cart`(`AccountID`, `ProductID`, `Amount`) VALUES (?,?,?)";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, cart.getAccountID());
            ps.setInt(2, cart.getProductID());
            ps.setInt(3, cart.getAmount());
            ps.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public Cart getCartBySTT(int STT) {
        Cart cart = null;
        String query = "SELECT * FROM `cart` where STT = ?";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, STT);
            rs = ps.executeQuery();
            if (rs.next()) {
                cart = new Cart(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4)
                );
            }
            conn.close();
        } catch (SQLException e) {
        }
        return cart;
    }

    public List<Cart> getCartsByUserID(int userID) {
        List<Cart> list = new ArrayList<>();
        String query = "SELECT * FROM `cart` where AccountID = ?";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, userID);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cart cart = new Cart(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4)
                );
                list.add(cart);
            }
            conn.close();
        } catch (SQLException e) {
        }
        return list;
    }

    public void deleteCart(int STT) {
        String query = "DELETE FROM `cart` WHERE STT = ?";

        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, STT);
            ps.executeUpdate();
            conn.close();
        } catch (SQLException e) {
        }
    }

    public void updateCart(Cart cart) {
        String query = "UPDATE `cart` SET `Amount` = ? WHERE `STT` = ?";

        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, cart.getAmount());
            ps.setInt(2, cart.getSTT());
            ps.executeUpdate();
            conn.close();
        } catch (SQLException e) {
        }

    }

    public Product getProductById(String id) {

        String query = "select * from product where id = ?";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(5),
                        rs.getString(4),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9));
            }
            conn.close();
        } catch (SQLException e) {
        }
        return null;
    }

    public List<Product> getProductByName(String name) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where `name` LIKE ?";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + name + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(5),
                        rs.getString(4),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getInt(9)));
            }
            conn.close();
        } catch (SQLException e) {
        }
        return list;
    }

    public Account login(String user, String pass) {
        String sql = "SELECT * FROM `account` WHERE `user` = ? AND `pass` = ?";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getInt(4), rs.getInt(5));
            }
            conn.close();
        } catch (SQLException e) {
        }

        return null;
    }

    public Account CheckAccountExist(String user) {
        String sql = "SELECT * FROM `account` WHERE `user` = ? ";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);

            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getInt(4), rs.getInt(5));
            }
            conn.close();
        } catch (SQLException e) {
        }

        return null;
    }

    public void SignUp(String user, String pass) {
        String sql = "INSERT INTO `account`(`user`, `pass`, `isSell`, `isAdmin`) "
                + "VALUES "
                + "(?,?,0,0)";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
            conn.close();
        } catch (SQLException e) {
        }

    }

    public List<Product> getProductBySellID(int sid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where `sell_ID` = ?";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, sid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(5),
                        rs.getString(4),
                        rs.getString(6),
                        rs.getInt(9)));
            }
            conn.close();
        } catch (SQLException e) {
        }
        return list;

    }

    public void deletePr(String id) {
        String query = "DELETE FROM `product` WHERE `id` = ?";

        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
            conn.close();
        } catch (SQLException e) {
        }
    }

    public void addProduct(Product p) {
        String query = "INSERT INTO `product`(`name`, "
                + "`img`, "
                + "`title`, "
                + "`price`, `"
                + "description`, "
                + "`category`, "
                + "`sell_ID`,"
                + "`Quantity`) "
                + "VALUES (?,?,?,?,?,?,?,?)";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, p.getName());
            ps.setString(2, p.getImage());
            ps.setString(3, p.getTitle());
            ps.setDouble(4, p.getPrice());
            ps.setString(5, p.getDescription());
            ps.setInt(6, p.getCateD());
            ps.setInt(7, p.getSellID());
            ps.setInt(8, p.getQuantily());
            ps.executeUpdate();
            conn.close();
        } catch (SQLException e) {
        }

    }

    public void editP(String name, String img, String price, String title,
            String descrip, String cate, String quantity, String pid) {
        String query = "UPDATE `product` SET `name`=?,"
                + "`img`=?,"
                + "`title`=?,"
                + "`price`=?,"
                + "`description`=?,"
                + "`category`=?,"
                + "`Quantity`=? "
                + "WHERE `id`=?";

        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, img);
            ps.setString(3, title);
            ps.setString(4, price);
            ps.setString(5, descrip);
            ps.setString(6, cate);
            ps.setString(7, quantity);
            ps.setString(8, pid);
            ps.executeUpdate();
            conn.close();
        } catch (SQLException e) {
        }
    }

    public void editP(Product product) {
        System.out.println(product);
        String query = "UPDATE `product` SET `name`=?,"
                + "`img`=?,"
                + "`title`=?,"
                + "`price`=?,"
                + "`description`=?,"
                + "`category`=?,"
                + "`Quantity`=? "
                + "WHERE `id`=?";

        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, product.getName());
            ps.setString(2, product.getImage());
            ps.setString(3, product.getTitle());
            ps.setDouble(4, product.getPrice());
            ps.setString(5, product.getDescription());
            ps.setInt(6, product.getCateD());
            ps.setInt(7, product.getQuantily());
            ps.setInt(8, product.getId());
            ps.executeUpdate();
            conn.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "SELECT * FROM `account`";
        try {
            conn = new SQLContex().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5)));
            }
            conn.close();
        } catch (SQLException e) {
        }
        return list;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        Cart cart = dao.getCartBySTT(1);
        cart.setAmount(2);
        dao.updateCart(cart);
    }

}
