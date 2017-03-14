package mapper;

import data.DB;
import entity.Customer;
import exception.CustomerException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class CustomerMapper
{
    public Customer validateCustomer(String username, String pass)
    {
        try
        {
            String sql = "select * from customer where username = ? and pass = ?";

            PreparedStatement pstmt = DB.getConnection().prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, pass);
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next())
            {
                int id = rs.getInt("user_id");
                double balance = rs.getDouble("balance");
                return new Customer(id, username, pass, balance);
            }

        }
        catch (SQLException ex)
        {
            ex.printStackTrace();
        }
        
        return null;
    }
    
    public void newCustomer(String username, String pass) 
    {
        CustomerMapper customer = new CustomerMapper();
       
            Connection conn = new DB().getConnection();
            try
            {
               
                String ins_customer = "INSERT INTO customer (username, pass, balance) VALUES (?, ?, ?)";
                PreparedStatement customerStmt = conn.prepareStatement(ins_customer);

            
                conn.setAutoCommit(false);
              
                customerStmt.setString(1, username);
                customerStmt.setString(2, pass);
                customerStmt.setDouble(3, 10);
                customerStmt.executeUpdate();

                conn.commit();
            } catch (SQLException ex)
            {
                ex.printStackTrace();
                try
                {
                    conn.rollback();
                } catch (SQLException ex1)
                {
                    ex1.printStackTrace();
                    
                }
            }
    }
   

}
