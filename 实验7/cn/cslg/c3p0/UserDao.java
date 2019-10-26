package cn.spring.c3p0;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import cn.cslg.exp7.UserBean;

public class UserDao extends JdbcDaoSupport {
	// spring��ʽ
/*	public UserBean findById(String username) {
	UserBean userBean = this.getJdbcTemplate().queryForObject("select * from user where username = ?",
				new RowMapper<UserBean>() {

					public UserBean mapRow(ResultSet rs, int arg1) throws SQLException {
						UserBean userBean = null;
						userBean = new UserBean();	
						userBean.setUsername(rs.getString("username"));
						userBean.setPassword(rs.getString("password"));
						return userBean;
					}
				}, username);
			 return userBean;	
	}*/

public UserBean findById(String username) {			   
	RowMapper<UserBean> mapper = new BeanPropertyRowMapper<>(UserBean.class);	   
	UserBean userBean=null;		
	try {		
		userBean = this.getJdbcTemplate().queryForObject("SELECT username,password FROM user where username=? ", mapper,username);		
		} catch (Exception e) {	
		userBean=null;		
		}	    	
	return userBean;
	}
}

