package servlet;

import entity.Customer;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mapper.CustomerMapper;

@WebServlet(name = "Controller", urlPatterns =
{
    "/Controller"
})
public class Controller extends HttpServlet
{
    CustomerMapper cm = new CustomerMapper();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String origin = request.getParameter("origin");
        HttpSession session = request.getSession();

        Customer customer;
        String username, pass;
        
        switch (origin)
        {
            case "login":

                session = request.getSession();
                username = request.getParameter("username");
                pass = request.getParameter("pass");
                customer = cm.validateCustomer(username, pass);

                if (customer == null)
                {
                    response.sendRedirect("login.jsp");

                }
                else
                {
                    session.setAttribute("customer", customer);
                    response.sendRedirect("info.jsp");
                }

                break;
                
            case "logout":

                if (session.getAttribute("customer") != null)
                {
                    session.setAttribute("customer", null);
                    response.sendRedirect("/webshop");
                }

                break;
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        processRequest(request, response);
    }
}
