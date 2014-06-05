/*package FriendFind;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import Group.FriendDto;

public class FriendFind_Dao {
	DataSource ds;
	Connection con;
	PreparedStatement stmt;
	ResultSet rs;
	
	
	public FriendFind_Dao() {
	// TODO Auto-generated constructor stub
	
		try{
		
			ds=(DataSource)new InitialContext().lookup("java:comp/env/jdbc/mysqlDB");
			con=ds.getConnection();
			if(con!=null) {
				System.out.println("GroupDao Connection");
			}
		} catch(Exception err) {
		
				System.out.println("connection false:"+err);
		}
	}
	
		public void freeCon(){
		try{if(con!=null){con.close();}}catch(Exception err){}
		try{if(rs!=null){rs.close();}}catch(Exception err){}
		try{if(stmt!=null){stmt.close();}}catch(Exception err){}
	}
		
	public Vector getFriends(String friendname){
		
		Vector friendList =new Vector();
		String sql;
		try{
			
			//System.out.println("getFriends no Before:"+no);
			sql="select * from freind where no=?";
			con=ds.getConnection();
			
			//System.out.println("getFriends no After:"+no);
			stmt=con.prepareStatement(sql);
			stmt.setInt(1, no);
				
			rs=stmt.executeQuery();
			while(rs.next()){
				FriendDto dto=new FriendDto();
				dto.setFriends(rs.getString("friends"));
				dto.setUserid1(rs.getString("userid1"));			//내아이디 - 내가 보낸 요청
				dto.setUserid2(rs.getString("userid2"));			//너아이디 - 너가 반은 너 아이디
				friendList.add(dto);
			}
			System.out.println("get friends success!");
		}catch(Exception err){
			System.out.println("getFriends"+err);
			
		}finally{
			
			freeCon();
		}
		return friendList;
	
	}
}
*/