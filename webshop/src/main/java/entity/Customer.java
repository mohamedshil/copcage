package entity;

import java.io.Serializable;

public class Customer implements Serializable {

    private int user_id;
    private String username;
    private String pass;
    private double balance;

    public Customer(String username, String pass, double balance) {
        this.username = username;
        this.pass = pass;
        this.balance = balance;
    }

    public Customer(int user_id, String username, String pass, double balance) {
        this.user_id = user_id;
        this.username = username;
        this.pass = pass;
        this.balance = balance;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    @Override
    public String toString() {
        return "Customer{" + "user_id=" + user_id + ", username=" + username + ", pass=" + pass + ", balance=" + balance + '}';
    }
    
    

}
