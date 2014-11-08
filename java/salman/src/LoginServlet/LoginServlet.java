package LoginServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			PrintWriter out=response.getWriter();
			response.setContentType("text/html");
			
			String path = request.getServletPath();
			HttpSession session = request.getSession();
			String sname = (String)session.getAttribute("NAME");
				/*if(!"/LoginServlet.do".equals(path)){
					if(sname ==null){
					RequestDispatcher dispatcher =request.getRequestDispatcher("./index.jsp");
					dispatcher.forward(request, response);
						//out.print("fail");
						return;
						
						
					}
				}*/
			
			
				if("/LoginServlet".equals(path)){
					String username = request.getParameter("username");
					String password=request.getParameter("password");
					String pwd=UtilUser.getUser(username);
					if(pwd!=null){
						if(pwd.equals(password)){
							session.setAttribute("NAME",username);
							RequestDispatcher dispatcher=request.getRequestDispatcher("./welcome.jsp");
							dispatcher.forward(request,response);
						}else {
							RequestDispatcher dispatcher=request.getRequestDispatcher("./LoginFailure.jsp");
									dispatcher.forward(request,response);
						}
					}else {
						RequestDispatcher dispatcher=request.getRequestDispatcher("./LoginFailure.jsp");
							dispatcher.forward(request,response);
							
						
					}
				}
		}

	
	
	}


