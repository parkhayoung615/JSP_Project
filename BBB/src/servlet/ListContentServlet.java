package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BaseballDAO;
import dao.ContentDAO;
import vo.BaseballVO;
import vo.ContentVO;

@WebServlet("/userLogin")
public class ListContentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListContentServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 리스트 가져오기
		response.setContentType("text/html; charset=UTF-8");
		
		String key = request.getParameter("id");
		ContentDAO dao = new ContentDAO();
		ArrayList<ContentVO> list = dao.getBaseballList(key);
		
		if(list != null) {
			request.setAttribute("baseballList", list);
		}
		
		request.getRequestDispatcher("./myPage.jsp").forward(request, response);
	}

}
