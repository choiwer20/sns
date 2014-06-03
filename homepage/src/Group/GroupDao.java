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
			//	System.out.println("GroupDao Connection");
				
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
			sql="insert into `group`(myid,new_group) values(?,?)";
			con=ds.getConnection();
			stmt=con.prepareStatement(sql);
			stmt.setString(1,dto.getMyid());
			stmt.setString(2,dto.getGroup());
			stmt.executeUpdate();
			System.out.println("[구룹완성]");
		}catch(Exception err){
			System.out.println(sql);
			System.out.println("createGroup:"+err);
		}finally{
			
			freeCon();
		}		
	}
	
	public Vector getGruop(String myid){
		Vector GroupList=new Vector();
		String sql="";
			
			try{
				System.out.println("getGroup myid:"+myid);
				sql="select * from `group` where myid=?";
			con=ds.getConnection();
			stmt = con.prepareStatement(sql);
			stmt.setString(1, myid);
			rs=stmt.executeQuery();
				
			while(rs.next()){
				GroupDto dto= new GroupDto();
				dto.setNum(rs.getInt("no"));
				dto.setMyid(rs.getString("myid"));
				dto.setGroup(rs.getString("new_group"));
				GroupList.add(dto);
			}
			}catch(Exception err){
				
				System.out.println("getGruop:"+err);
			}finally{
				freeCon();
				
			}
		
		return GroupList;
	}
	//Get group 
	public Vector getCompleteGroup(String myid){
		Vector CompleteGroupList =new Vector();
		String sql="";
		try{
			System.out.println("getGroup myid:"+myid);
			sql="select * from mygroup where myid=?";
			con=ds.getConnection();
			stmt = con.prepareStatement(sql);
			stmt.setString(1, myid);
			rs=stmt.executeQuery();
			while(rs.next()){
				GroupDto dto= new GroupDto();
				dto.setNum(rs.getInt("no"));
				dto.setMyid(rs.getString("myid"));
				dto.setGroup(rs.getString("my_group"));
				dto.setUserid(rs.getString("userid"));
				CompleteGroupList.add(dto);
			}
			
			System.out.println("[getGroup 완성]");
		
		}catch(Exception err){
			
			System.out.println("getGroup:"+err);
		}finally{
			
			freeCon();
			
		}
		
		return CompleteGroupList;	
	}
	//del
	public void deleteGroup(int no[]){
		
		String sql="";
		try{
			con=ds.getConnection();
			for(int i=0;i<no.length;i++){
				sql="delete from `group` where no=?";
				stmt=con.prepareStatement(sql);
				stmt.setInt(1, no[i]);
				stmt.executeUpdate();
			}
			System.out.println("[deleteGroup 완성]");
		} catch(Exception err) {
			
			System.out.println("deleteGroup:"+err);
		} finally {
			
			freeCon();
		}
	}
//userid1 userid2 friends  
	//addGroupFriend
	public void addGroupFriend(GroupDto dto) {
			String sql="";
			//System.out.println("여기 오나?");
		try{
			sql="insert into mygroup(myid,userid,my_group) values(?,?,?)";
			con=ds.getConnection();
			stmt=con.prepareStatement(sql);
			stmt.setString(1, dto.getMyid());
			stmt.setString(2, dto.getUserid());
			stmt.setString(3, dto.getGroup());
			stmt.executeUpdate();
		System.out.println("[addGroupFriend 왕성]");
		}catch(Exception err){
			System.out.println("addGroupFriend()"+err);
		}finally{
			freeCon();
			
		}
	}
}
