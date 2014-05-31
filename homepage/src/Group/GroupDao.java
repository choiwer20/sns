package Group;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.sql.DataSource;
import javax.annotation.PreDestroy;
import javax.naming.InitialContext;

import oracle.net.aso.f;

public class GroupDao {
	DataSource ds;
	Connection con;
	PreparedStatement stmt;
	ResultSet rs;
	public GroupDao() {
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
	
	//set Group
	public void createGroup(GroupDto dto) {
			String sql="";
		try{
			sql="insert into mygroup(myid,userid,my_group) values(?,?,?)";
			con=ds.getConnection();
			stmt=con.prepareStatement(sql);
			stmt.setString(1,dto.getMyid());
			stmt.setString(2,dto.getUserid());
			stmt.setString(3,dto.getGroup());
			stmt.executeUpdate();
			System.out.println("[备缝肯己]");
		}catch(Exception err){
			System.out.println(sql);
			System.out.println("createGroup:"+err);
		}finally{
			
			freeCon();
		}		
	}
	//Get group 
	public Vector getGroup(int no){
		Vector GroupList =new Vector();
		GroupDto dto= new GroupDto();
		System.out.println(no);
		String sql="";
		try{
			System.out.println("getGroup no:"+no);
			sql="select * from mygroup where no=?";
			con=ds.getConnection();
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, no);
			rs=stmt.executeQuery();
			while(rs.next()){
			  
				dto.setNum(rs.getInt("no"));
				dto.setGroup(rs.getString("my_group"));
				dto.setMyid(rs.getString("myid"));
				dto.setUserid(rs.getString("userid"));
				GroupList.add(dto);
			}
			System.out.println("getGroup 肯己?");
			
		
		}catch(Exception err){
			
			System.out.println("getGroup:"+err);
		}finally{
			
			freeCon();
			
		}
		
		return GroupList;	
	}
	//del
	public void deleteGroup(int no[]){
		
		String sql="";
		try{
			con=ds.getConnection();
			for(int i=0;i<no.length;i++){
				sql="delete from mygroup where no=?";
				stmt=con.prepareStatement(sql);
				stmt.setInt(1, no[i]);
				stmt.executeUpdate();
			}
			System.out.println("deleteGroup 肯己?");
		} catch(Exception err) {
			
			System.out.println("deleteGroup:"+err);
		} finally {
			
			freeCon();
		}
	}

}
