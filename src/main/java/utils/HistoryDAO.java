package utils;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;

import model.historyShopping;

public class HistoryDAO {
	private EntityManager em = JpaUtils.getEntityManager();
	@Override
	protected void finalize() throws Throwable {
		em.close(); //Đống cái em lại khi DAO bị giải phóng
		super.finalize();
	}
	
	@SuppressWarnings("unchecked")
	public List<historyShopping> selectAll(int idKhachHang){
		StoredProcedureQuery query = em.createStoredProcedureQuery("lichSuMuaHang", historyShopping.class);
		query.registerStoredProcedureParameter("idKhachHang", Integer.class, ParameterMode.IN);
		System.out.println(query.getParameter("idKhachHang") == null ? "Không":"Có");
		query.setParameter("idKhachHang", idKhachHang);
		List<historyShopping> list = query.getResultList();
		return list;		
	}
	
	@SuppressWarnings("unchecked")
	public List<historyShopping> selectWonder(int idKhachHang, String trangThai){
		StoredProcedureQuery query = em.createStoredProcedureQuery("lichSuMuaHang_wonder", historyShopping.class);
		query.registerStoredProcedureParameter("idKhachHang", Integer.class, ParameterMode.IN);
		query.registerStoredProcedureParameter("trangThai", String.class, ParameterMode.IN);
		System.out.println(query.getParameter("idKhachHang") == null ? "Không":"Có");
		query.setParameter("idKhachHang", idKhachHang);
		query.setParameter("trangThai", trangThai);
		List<historyShopping> list = query.getResultList();
		return list;		
	}
	
}
