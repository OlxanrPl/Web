package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="NWPservlet")
public class NWPservlet extends HttpServlet {

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    System.out.println("doPost");
      final  String department = req.getParameter("department");
      final String buyer = req.getParameter("buyer");
       System.out.println(department+" "+buyer);
       req.setAttribute("department",department);
       req.setAttribute("buyer",buyer);
    RequestDispatcher requestDispatcher = req.getRequestDispatcher("/");
    requestDispatcher.forward(req,resp);
  }

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    try (PrintWriter pw = resp.getWriter()) {
      System.out.println("doGet");
      resp.setContentType("text/html");
      pw.write("<h1>Hello from servlets! </h1>");



    }



  }
}
