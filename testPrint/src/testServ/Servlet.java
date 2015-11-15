package testServ;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/submit"})
public class Servlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*resp.setContentType("application/json");
		List<Person> list=new ArrayList<>();
		list.add(new Person("debashis", "haldia"));
		list.add(new Person("sumit", "kolkata"));
		list.add(new Person("amit", "tamluk"));
		list.add(new Person("ramesh", "parkstreet"));
		list.add(new Person("subahs", "newtown"));
		list.add(new Person("animesh", "dumdum"));
		
		Gson gson=new Gson();
		PrintWriter pw=resp.getWriter();
		String json=gson.toJson(list);
		pw.println(json);*/
		PrintWriter pw=resp.getWriter();
		String str[] =req.getParameterValues("name");
		for(String str1:str){
			pw.println(str1);
		}
		req.setAttribute("smg", "message here");
		req.getRequestDispatcher("index.jsp").forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("");
		doGet(req, resp);
	}
}
