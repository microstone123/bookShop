package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.Manager;
import entity.User;

import util.DataBaseConn;

public class UserDAO {

	DataBaseConn dbc = new DataBaseConn();

	// 检查用户名是否已经存在
	public int checkUsername(String username) {
		int i = 0;
		String sql = "select * from user where username=?";
		PreparedStatement psmt = null;
		try {
			psmt = dbc.getConn().prepareStatement(sql);
			psmt.setString(1, username);
			ResultSet rs = psmt.executeQuery();
			if (rs.next()) {
				i = 1;
			}
			rs.close();
			psmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	// 用户登录检查
	public int checkLogin(String username,String password){
		int i = 0;
		String sql = "select id from user where username=? and password=?";
		PreparedStatement psmt = null;
		try{
			psmt = dbc.getConn().prepareStatement(sql);
			psmt.setString(1, username);
			psmt.setString(2, password);
			ResultSet rs = psmt.executeQuery();
			if(rs.next()){
				i = rs.getInt(1);
			}
			rs.close();
			psmt.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return i ;
	}
	
	// 添加一个新的用户
	public int saveUser(User user) {
		int i = 0;
		String sql = "insert into user values (null,?,?,?,?,?,?,?,?,?,now())";
		PreparedStatement psmt = null;
		try {
			psmt = dbc.getConn().prepareStatement(sql);
			psmt.setString(1, user.getUsername());
			psmt.setString(2, user.getPassword());
			psmt.setString(3, user.getEmail());
			psmt.setString(4, user.getGender());
			psmt.setString(5, user.getNickname());
			psmt.setTimestamp(6, user.getBirthday());
			psmt.setString(7, user.getQq());
			psmt.setString(8, user.getPhone());
			psmt.setString(9, user.getDescription());
			i = psmt.executeUpdate();
			psmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	// 查询一个用户信息
	public User getUser(int id) {
		User user = null;
		String sql = "select * from user where id=?";
		PreparedStatement psmt = null;
		try {
			psmt = dbc.getConn().prepareStatement(sql);
			psmt.setInt(1, id);
			ResultSet rs = psmt.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setId(id);
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setGender(rs.getString("gender"));
				user.setNickname(rs.getString("nickname"));
				user.setBirthday(rs.getTimestamp("birthday"));
				user.setQq(rs.getString("qq"));
				user.setPhone(rs.getString("phone"));
				user.setDescription(rs.getString("description"));
				user.setRegtime(rs.getTimestamp("regtime"));
			}
			rs.close();
			psmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	// 修改个人信息
	public int updateUser(User user) {
		int i = 0;
		String sql = "update user set password=?,email=?,gender=?," +
				"nickname=?,birthday=?,qq=?,phone=?,description=? where id=?";
		PreparedStatement psmt = null;
		try{
			psmt = dbc.getConn().prepareStatement(sql);
			psmt.setString(1, user.getPassword());
			psmt.setString(2, user.getEmail());
			psmt.setString(3, user.getGender());
			psmt.setString(4, user.getNickname());
			psmt.setTimestamp(5, user.getBirthday());
			psmt.setString(6, user.getQq());
			psmt.setString(7, user.getPhone());
			psmt.setString(8, user.getDescription());
			psmt.setInt(9, user.getId());
			i = psmt.executeUpdate();
			psmt.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	//管理员登录检查
	public Manager checkManagerLogin(String username,String password){
		Manager manager = null ;
		String sql = "select * from manager where username=? and password=?";
		PreparedStatement psmt = null;
		try{
			psmt = dbc.getConn().prepareStatement(sql);
			psmt.setString(1, username);
			psmt.setString(2, password);
			ResultSet rs = psmt.executeQuery();
			if(rs.next()){
				manager = new Manager();
				manager.setId(rs.getInt("id"));
				manager.setUsername(rs.getString("username"));
				manager.setPassword(rs.getString("password"));
			}
			rs.close();
			psmt.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return manager;
	}
	
	//获取用户总记录
	public int getUserAmount(){
		int i = 0;
		String sql = "select count(*) from user";
		PreparedStatement psmt = null;
		try{
			psmt = dbc.getConn().prepareStatement(sql);
			ResultSet rs = psmt.executeQuery();
			if(rs.next()){
				i = rs.getInt(1);
			}
			rs.close();
			psmt.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	//删除一个用户
	public int deleteUser(int id){
		int i = 0;
		String sql = "delete from user where id=?";
		PreparedStatement psmt = null;
		try{
			psmt = dbc.getConn().prepareStatement(sql);
			psmt.setInt(1, id);
			i = psmt.executeUpdate();
			psmt.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	//分页获取用户信息
	public List<User> getUserList(int pageNumber,int pageSize){
		List<User> userList = new ArrayList<User>();
		String sql = "select * from user limit ?,?";
		PreparedStatement psmt = null;
		try{
			psmt = dbc.getConn().prepareStatement(sql);
			psmt.setInt(1, (pageNumber - 1)*pageSize);
			psmt.setInt(2, pageSize);
			ResultSet rs = psmt.executeQuery();
			while(rs.next()){
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setEmail(rs.getString("email"));
				user.setGender(rs.getString("gender"));
				user.setNickname(rs.getString("nickname"));
				user.setBirthday(rs.getTimestamp("birthday"));
				user.setQq(rs.getString("qq"));
				user.setPhone(rs.getString("phone"));
				user.setDescription(rs.getString("description"));
				user.setRegtime(rs.getTimestamp("regtime"));
				userList.add(user);
			}
			rs.close();
			psmt.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return userList;
	}
}
