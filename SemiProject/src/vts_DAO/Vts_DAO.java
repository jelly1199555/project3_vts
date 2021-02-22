package vts_DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import vts_Conn.Vts_Conn;
import vts_VO.Vts_memVO;
import vts_VO.Vts_showVO;

public class Vts_DAO {
	private Connection con;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public Vts_DAO() throws ClassNotFoundException, SQLException {
		con = new Vts_Conn().getConnection();
	}
	public void pstmtClose() throws SQLException {
		if(pstmt != null){
			pstmt.close();
			}
	}
	public void AllClose() throws SQLException {
		if(rs != null) {
			rs.close();
		}
		if(pstmt != null) {
			pstmt.close();
		}
		if(con != null) {
			con.close();
		}
	}

	public boolean orderInsert(String id, String vts_title, String vts_d,
								String vts_time, String vts_inwon, String totpay) {
		String sql = "insert into vtsorder_table values(?,?,?,?,?,?)";
		
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,id);
			pstmt.setString(2,vts_title);
			pstmt.setString(3, vts_d);
			pstmt.setString(4, vts_time);
			pstmt.setString(5, vts_inwon);
			pstmt.setString(6, totpay);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("insert error!");
			return false;
		}
		return true;		
	}
	
	
	public ArrayList<Vts_memVO> orderSelect(String id1) throws SQLException {
		
		ArrayList<Vts_memVO> vv= new ArrayList<Vts_memVO>();
		String sql = "select * from vtsorder_table where vts_id = ? order by vts_id";
		
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id1);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			String id =rs.getString("vts_id");
			String vts_title = rs.getString("vts_title");
			String vts_d = rs.getString("vts_d");
			String vts_time = rs.getString("vts_time");
			String vts_inwon = rs.getString("vts_inwon");
			String vts_totpay = rs.getString("vts_totpay");
			
			Vts_memVO vv1 = new Vts_memVO(id,vts_title,vts_d,vts_time,vts_inwon,vts_totpay);
			vv.add(vv1);
		}
		return vv;
	}
	public ArrayList<Vts_showVO> getAllInfo() throws SQLException{
		ArrayList<Vts_showVO> tiarray=new ArrayList<Vts_showVO>();
		String sql="select * from showlist_table where sh_no = 1";
		/*select * from showlist_table where sh_no = 1*/
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			int no=rs.getInt("sh_no");
			String title=rs.getString("sh_title");
			String imgsrc = rs.getString("sh_imgsrc");
			String pay = rs.getString("sh_pay");
			String time = rs.getString("sh_time");

			
			Vts_showVO tv=new Vts_showVO(no, title, imgsrc, pay, time );
			
			tiarray.add(tv);
			
		}
		return tiarray;
	}
	
	public ArrayList<Vts_showVO> getAllInfo2() throws SQLException{
		ArrayList<Vts_showVO> tiarray2=new ArrayList<Vts_showVO>();
		String sql="select * from showlist_table where sh_no = 2";
		/*select * from showlist_table where sh_no = 1*/
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			int no=rs.getInt("sh_no");
			String title=rs.getString("sh_title");
			String imgsrc = rs.getString("sh_imgsrc");
			String pay = rs.getString("sh_pay");
			String time = rs.getString("sh_time");
			
			Vts_showVO tv2=new Vts_showVO(no, title, imgsrc, pay, time );
			
			tiarray2.add(tv2);
			
		}
		return tiarray2;
	}
	
	public ArrayList<Vts_showVO> getAllInfo3() throws SQLException{
		ArrayList<Vts_showVO> tiarray3=new ArrayList<Vts_showVO>();
		String sql="select * from showlist_table where sh_no = 3";
		/*select * from showlist_table where sh_no = 1*/
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			int no=rs.getInt("sh_no");
			String title=rs.getString("sh_title");
			String imgsrc = rs.getString("sh_imgsrc");
			String pay = rs.getString("sh_pay");
			String time = rs.getString("sh_time");
			
			Vts_showVO tv3=new Vts_showVO(no, title, imgsrc, pay, time );
			
			tiarray3.add(tv3);
			
		}
		return tiarray3;
	}
}