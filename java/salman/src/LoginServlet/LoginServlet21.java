package LoginServlet;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
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
@WebServlet("/LoginServlet21")
public class LoginServlet21 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet21() {
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
	 //	String cmd1="cd  D:\\MATLAB\\R2012a\\bin\\bharath\\dcfinal";
		//String command = "cd  D:\\MATLAB\\R2012a\\bin\\bharath\\dcfinal";//, " matlab.exe -r run('main.m');"};
		//command=command.concat("run('D:\\MATLAB\\R2012a\\bin\\bharath\\dcfinal\\main.m');") ;  // Only change!

/*	    Runtime runtime = Runtime.getRuntime();
	    Process process = null;
	    try {
	    	System.out.println("hi");
	    	 process = runtime.exec(command);
	    	 System.out.println("hidd");
		    	 
	      BufferedReader in = 
	      new BufferedReader(new InputStreamReader(process.getInputStream()));

	      // Read and print the output
	      String line = null;
	      while ((line = in.readLine()) != null) {
	        System.out.println(line);
	      }
	    }
	    
	    catch (Exception e) {
	      System.out.println("err");//Problem with finger: " +
	        //          ServletUtils.getStackTraceAsString(e));
	    }*/

		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String path = request.getServletPath();
		HttpSession session = request.getSession();
		String sname = (String)session.getAttribute("NAME");
			if(!"/LoginServlet.do".equals(path)){
				if(sname ==null){
					RequestDispatcher dispatcher =request.getRequestDispatcher("./index.jsp");
					dispatcher.forward(request, response);
					return;
					
					
				}
			}
		
		/* String n=request.getParameter("username");  
		    out.print("Welcome "+n);*/
			if("/LoginServlet.do".equals(path)){
				String username = request.getParameter("username");
				String password=request.getParameter("password");
				String pwd=UtilUser.getUsers(username);
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
