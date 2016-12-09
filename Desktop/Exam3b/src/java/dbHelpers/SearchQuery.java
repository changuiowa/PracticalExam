
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customers;


public class SearchQuery {

    private Connection conn;
    private ResultSet results;
    
    
    public SearchQuery(){
    
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String passwd = props.getProperty("user.password");

        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    
    
    
    
    }
    
    
    public void doSearch(String firstName){
 
        try {
            String query = "Select * from CUSTOMERS WHERE UPPER(firstName) LIKE ? ORDER BY custID ASC";
            String query2 = "Select * from CUSTOMERS WHERE UPPER(lastName) LIKE ? ORDER BY custID ASC";
            
            PreparedStatement ps = conn.prepareStatement(query);
            PreparedStatement ps2 = conn.prepareStatement(query2);
            
            ps.setString(1, "%" + firstName.toUpperCase() + "%");
            ps2.setString(1, "%" + firstName.toUpperCase() + "%");
            
            this.results = ps.executeQuery();
            this.results = ps2.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    
    }

    public String getHTMLtable() {
        
        String table = "";
       
        table += "<table class = \"list\">";
        
        try {
            while(this.results.next()){
                
                /*Products products = new Products();
                products.setProductID(this.results.getInt("productID"));
                products.setProductName(this.results.getString("productName"));
                products.setPrice(this.results.getInt("price"));
                products.setQuantity(this.results.getInt("quantity"));
                products.setCompany(this.results.getString("company"));*/
                Customers customers = new Customers();
                customers.setCustID(this.results.getInt("custID"));
                customers.setFirstName(this.results.getString("firstName"));
                customers.setLastName(this.results.getString("lastName"));
                customers.setAddr1(this.results.getString("addr1"));
                customers.setAddr2(this.results.getString("addr2"));
                customers.setCity(this.results.getString("city"));
                customers.setState(this.results.getString("state"));
                customers.setZip(this.results.getString("zip"));
                customers.setEmailAddr(this.results.getString("emailAddr")); 
                
                                table += "<tr>";
                
                table += "<td>";
                table += customers.getCustID();
                table += "</td>";
                
                table += "<td>";
                table += customers.getFirstName();
                table += "</td>";
                
                table += "<td>";
                table += customers.getLastName();
                table += "</td>";
                
                table += "<td>";
                table += customers.getAddr1();
                table += "</td>";
                
                table += "<td>";
                table += customers.getAddr2();
                table += "</td>";
                
                table += "<td>";
                table += customers.getCity();
                table += "</td>";
                
                table += "<td>";
                table += customers.getState();
                table += "</td>";
                
                table += "<td>";
                table += customers.getZip();
                table += "</td>";
                
                table += "<td>";
                table += customers.getEmailAddr();
                table += "</td>";
                
                table += "<td>";
                table += "<a href=update?custID=" + customers.getCustID() + "> Update</a>" + " " +"<a href=delete?custID=" + customers.getCustID() + "> Delete</a>";
                table += "</td>";
                
                table += "</tr>";
                
                /*table += "<tr>";
                
                table += "<td>";
                table += products.getProductID();
                table += "</td>";
                
                table += "<td>";
                table += products.getProductName();
                table += "</td>";
                
                table += "<td>";
                table += products.getPrice();
                table += "</td>";
                
                table += "<td>";
                table += products.getQuantity();
                table += "</td>";
                
                table += "<td>";
                table += products.getCompany();
                table += "</td>";
                
                table += "<td>";
                table += "<a href=update?productID=" + products.getProductID() + "> Update</a>" + " " +"<a href=delete?productID=" + products.getProductID() + "> Delete</a>";
                table += "</td>";
                
                table += "</tr>";*/
                
                
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
               
        
        table += "</table>";
        
            return table;
    
    }    
    
}
