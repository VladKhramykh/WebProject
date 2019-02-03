package app.servlets;import app.entities.User;import app.model.DataBaseHandler;import app.model.Model;import javax.servlet.RequestDispatcher;import javax.servlet.ServletException;import javax.servlet.http.HttpServlet;import javax.servlet.http.HttpServletRequest;import javax.servlet.http.HttpServletResponse;import java.io.IOException;import java.sql.SQLException;public class AddServlet extends HttpServlet{    @Override    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        request.setCharacterEncoding("UTF-8");        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/add.jsp");        requestDispatcher.forward(request,response);    }    @Override    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{        request.setCharacterEncoding("UTF-8");        String name = request.getParameter("name");        String password = request.getParameter("password");        User user = new User(name, password);        DataBaseHandler dataBaseHandler = new DataBaseHandler();        try {            dataBaseHandler.signUpUser(user);        }        catch (SQLException e) {            System.out.println(e.getErrorCode());            System.out.println(e.getMessage());        }        catch (ClassNotFoundException e) {            e.getStackTrace();            System.out.print("ДОШЛО CNF!!!!");        }        request.setAttribute("userNames",name);        doGet(request,response);    }}