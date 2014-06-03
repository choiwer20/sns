package Friend;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class FriendDao {
	
	DataSource ds;
	Connection con;
	PreparedStatement stmt;
	ResultSet rs;
	
	public FriendDao(){
	// TODO Auto-generated constructor stub
	try{
		
		ds=(DataSource)new InitialContext().lookup("java:comp/env/jdbc/mysqlDB");
		con=ds.getConnection();
		if(con!=null){
			System.out.println("GroupDao Connection");
			
		}
	}catch(Exception err){
		
		System.out.println("connection false:"+err);
	}


}
	public void freeCon(){
		try{if(con!=null){con.close();}}catch(Exception err){}
		try{if(rs!=null){rs.close();}}catch(Exception err){}
		try{if(stmt!=null){stmt.close();}}catch(Exception err){}
	}

	public Vector getFriends(String myid){
		Vector friendList =new Vector();
		String sql;
		try{
			
			//System.out.println("getFriends no Before:"+no);
			sql="select * from freind where userid1=?";
			con=ds.getConnection();
			
			//System.out.println("getFriends no After:"+no);
			stmt=con.prepareStatement(sql);
			stmt.setString(1, myid);
				
			rs=stmt.executeQuery();
			while(rs.next()){
				//System.out.println("getFriends():"+rs.getString("friends"));
				FriendDto dto=new FriendDto();
				dto.setFriends(rs.getString("friends"));
				dto.setUserid1(rs.getString("userid1"));
				dto.setUserid2(rs.getString("userid2"));
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
