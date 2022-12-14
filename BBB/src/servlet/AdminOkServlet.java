package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ContentDAO;
import dao.MemberDAO;
import vo.ContentVO;
import vo.MemberVO;

@WebServlet("/adminOk")
public class AdminOkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminOkServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 관리자 페이지에서 가져오기
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO)session.getAttribute("loginOK");
		ContentDAO dao2 = new ContentDAO();
		String key = request.getParameter("id");
		ArrayList<ContentVO> list = dao2.getAdminBaseballList();
		
		boolean result = false;
		if(user == null) {
			out.println("<script>alert('로그인을 진행해주세요!'); history.back();</script>");
		} else {
			MemberDAO dao = new MemberDAO();
			result = dao.adminMember(user.getUserId());
			
			if (result == true) {
				if(list != null) {
					request.setAttribute("getAdminList", list);
				}
				request.getRequestDispatcher("./admin.jsp").forward(request, response);
			} else {
				response.sendRedirect("/userLogin?id=" + key);
			}
		}
	}

}
