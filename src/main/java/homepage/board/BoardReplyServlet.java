package homepage.board;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/board/boardReply")
public class BoardReplyServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		BoardMgr bMgr = new BoardMgr();
		BoardBean reBean = new BoardBean();
		reBean.setName(request.getParameter("name"));
		reBean.setSubject(request.getParameter("subject"));
		reBean.setContent(request.getParameter("content"));
		reBean.setRef(Integer.parseInt(request.getParameter("ref"))); 
		reBean.setPos(Integer.parseInt(request.getParameter("pos"))); 
		reBean.setDepth(Integer.parseInt(request.getParameter("depth"))); 
		reBean.setPass(request.getParameter("pass"));
		reBean.setIp(request.getParameter("ip"));

		bMgr.replyUpBoard(reBean.getRef(), reBean.getPos());
		bMgr.replyBoard(reBean);
		
		String nowPage = request.getParameter("nowPage");
		response.sendRedirect("list.jsp?nowPage="+nowPage);
	}
}