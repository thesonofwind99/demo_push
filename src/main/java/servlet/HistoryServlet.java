package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.historyShopping;
import utils.HistoryDAO;

/**
 * Servlet implementation class HistoryServlet
 */
@WebServlet("/HistoryServlet")
public class HistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HistoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Ở đây lấy lịch sử mua hàng của Khách hàng có Id là 2
		int id_khachhang = 2;
		HistoryDAO dao = new HistoryDAO();
		List<historyShopping> list = dao.selectAll(id_khachhang);
		List<historyShopping> list1 = dao.selectWonder(id_khachhang, "Chờ nhận hàng");
		List<historyShopping> list2 = dao.selectWonder(id_khachhang, "Đã nhận hàng");
		request.setAttribute("list", list);
		request.setAttribute("list1", list1);
		request.setAttribute("list2", list2);
		request.getRequestDispatcher("/menu_purchase/purchase_history.jsp").forward(request, response);
	}


}
