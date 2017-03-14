<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.Customer"%>

<!DOCTYPE html>
<html lang="en">
    <head>

        <title>Info</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

    </head>
    <body>
        
        <h1>Shop - Info</h1>
        
        <jsp:include page='index.jsp'></jsp:include>

        <div>
            <%
                
                Object o = session.getAttribute("customer");
                Customer customer;
                
                if (o != null)
                {
                    customer = (Customer) o;
            %>
            
                <p>Logged in as: <%= customer.getUsername()%></p>
                <p>Account: <%= customer.getBalance()%></p>
                
                <form action="Controller" method="post">
                    
                    <input type="hidden" name="origin" value="logout">
                    
                    <input type="submit" name="Logout" value="Log out">
                    
                </form>
                      
            <%
                }
                else
                {
            %>
            
                <p>Not logged in...</p>
            
            <%
                }
            %>
        </div>

    </body>
</html>
