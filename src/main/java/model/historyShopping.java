package model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class historyShopping {
	@Id
	Integer sp_id;
	Integer khach_id;
	String sp_title;
	String sp_hinh;
	Double gia;
	Integer soluong_mua;
	String trangthai;
	public historyShopping() {
		super();
	}
	public historyShopping(Integer sp_id, Integer khach_id, String sp_title, String sp_hinh, Double gia,
			Integer soluong_mua, String trangthai) {
		super();
		this.sp_id = sp_id;
		this.khach_id = khach_id;
		this.sp_title = sp_title;
		this.sp_hinh = sp_hinh;
		this.gia = gia;
		this.soluong_mua = soluong_mua;
		this.trangthai = trangthai;
	}
	public Integer getSp_id() {
		return sp_id;
	}
	public void setSp_id(Integer sp_id) {
		this.sp_id = sp_id;
	}
	public Integer getKhach_id() {
		return khach_id;
	}
	public void setKhach_id(Integer khach_id) {
		this.khach_id = khach_id;
	}
	public String getSp_title() {
		return sp_title;
	}
	public void setSp_title(String sp_title) {
		this.sp_title = sp_title;
	}
	public String getSp_hinh() {
		return sp_hinh;
	}
	public void setSp_hinh(String sp_hinh) {
		this.sp_hinh = sp_hinh;
	}
	public Double getGia() {
		return gia;
	}
	public void setGia(Double gia) {
		this.gia = gia;
	}
	public Integer getSoluong_mua() {
		return soluong_mua;
	}
	public void setSoluong_mua(Integer soluong_mua) {
		this.soluong_mua = soluong_mua;
	}
	public String getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(String trangthai) {
		this.trangthai = trangthai;
	}
	
	
	
	
	
}
