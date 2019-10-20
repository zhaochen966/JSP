package cn.cslg.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.cslg.enity.Employee;

public class EmployeeDao {
	public static PreparedStatement pstmt = null ;
	public static Connection connection = null ;
	public static ResultSet rs = null ; 
	
	//插入职工表
	public static boolean addEmployee(Employee employee) {
		try{
			connection=JDBCUtils.getConnection();
			String sql="insert into employee values(?,?,?,?,?)";
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, employee.getEmpId());
			pstmt.setString(2, employee.getEmpName());
			pstmt.setString(3, employee.getJob());
			pstmt.setDouble(4, employee.getSalary());
			pstmt.setString(5, employee.getDept());
			pstmt.executeUpdate();
			return true;
		}catch (SQLException e) {
			//e.printStackTrace();
			System.out.println(e.getMessage());
			System.out.println("主键重复");
		} finally {
			JDBCUtils.close(pstmt, connection);
		}
		return false;
}
	
	
	//修改职工信息
	public static boolean changeEmployee(Employee employee) {
		try{
			connection=JDBCUtils.getConnection();
			String sql="update employee set EMP_NAME=?,JOB=?,SALARY=?,DEPT=? where EMP_ID=?";
			pstmt = connection.prepareStatement(sql);	
			pstmt.setString(1, employee.getEmpName());
			pstmt.setString(2, employee.getJob());
			pstmt.setDouble(3, employee.getSalary());
			pstmt.setString(4, employee.getDept());
			pstmt.setString(5, employee.getEmpId());
			
			pstmt.executeUpdate();
			return true;
		}catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			JDBCUtils.close(pstmt, connection);
		}
		return false;
}
	
	//根据员工编号删除信息
		public static boolean deleteEmployee(String emp_id) {
			try{
				connection=JDBCUtils.getConnection();
				String sql="delete from employee where EMP_ID=?";
				pstmt = connection.prepareStatement(sql);	
				pstmt.setString(1, emp_id);				
				pstmt.executeUpdate();
				return true;
			}catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				JDBCUtils.close(pstmt, connection);
			}
			return false;
	}
	
		
	//	按照员工工作种类进行员工信息查询。
		public static List<Employee> queryByJob(String job){
			List<Employee> list = new ArrayList<Employee>();
			try{
				Class.forName("com.mysql.jdbc.Driver");
	
			}catch(Exception e){
				e.printStackTrace();
			}
			try{
				//connection=JDBCUtils.getConnection();
				connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/testdb","root","");
				String sql="SELECT EMP_ID,EMP_NAME,SALARY,DEPT FROM employee WHERE JOB=?";
				pstmt = connection.prepareStatement(sql);	
				pstmt.setString(1, job);				
				rs = pstmt.executeQuery();
				while(rs.next()){
					String id = rs.getString("EMP_ID");
					String name = rs.getString("EMP_NAME");
					double salary = rs.getDouble("SALARY");
					String dept = rs.getString("DEPT");
					Employee e1= new Employee(id,name,job,salary,dept);
					list.add(e1);
					//return (id +" " + name + " " + job + " " + salary + " " + dept);  
				}
			}catch (SQLException e) {
				System.out.println(e.getMessage());
			} /*finally {
				JDBCUtils.close(rs, pstmt, connection);
			}*/
			
			finally{
			             try {
			                 if(rs!=null)
			                 {
			                     rs.close();
			                 }
			                 if(pstmt!=null)
			                 {
			                     pstmt.close();
			                 }
			                 if(connection!=null)
			                 {
			                	 connection.close();
			                 }
			             } catch (SQLException e) {
			                 e.printStackTrace();
			             }
			         }

			
		 	//return "查无此人";	
			return list;
		}
		
		//	员工信息查询。
		public static List<Employee> queryEmp(){
			List<Employee> list = new ArrayList<Employee>();
	/*		try{
				Class.forName("com.mysql.jdbc.Driver");
	
			}catch(Exception e){
				e.printStackTrace();
			}  */
			
			try{
				connection=JDBCUtils.getConnection();
				//connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/testdb","root","");
				String sql="SELECT EMP_ID,EMP_NAME,JOB,SALARY,DEPT FROM employee";
				pstmt = connection.prepareStatement(sql);				
				rs = pstmt.executeQuery();
				while(rs.next()){
					String id = rs.getString("EMP_ID");
					String name = rs.getString("EMP_NAME");
					String job = rs.getString("JOB");
					double salary = rs.getDouble("SALARY");
					String dept = rs.getString("DEPT");
					Employee e1= new Employee(id,name,job,salary,dept);
					list.add(e1);
				}
			}catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				JDBCUtils.close(rs, pstmt, connection);
			}
			
/*			finally{
	             try {
	                 if(rs!=null)
	                 {
	                     rs.close();
	                 }
	                 if(pstmt!=null)
	                 {
	                     pstmt.close();
	                 }
	                 if(connection!=null)
	                 {
	                	 connection.close();
	                 }
	             } catch (SQLException e) {
	                 e.printStackTrace();
	             }
	         }         */
			
			return list;
		}
		
//		通过ID查找某个人
		public static Employee queryEmpById(String eid){
			Employee e1 = null; 
			try{
				connection=JDBCUtils.getConnection();
				String sql="SELECT EMP_ID,EMP_NAME,JOB,SALARY,DEPT FROM employee where EMP_ID=?";	
				pstmt = connection.prepareStatement(sql);
				pstmt.setString(1, eid);	
				rs = pstmt.executeQuery();
				while(rs.next()){
					String id = rs.getString("EMP_ID");
					String name = rs.getString("EMP_NAME");
					String job = rs.getString("JOB");
					double salary = rs.getDouble("SALARY");
					String dept = rs.getString("DEPT");
					e1= new Employee(id,name,job,salary,dept);
				}
			}catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				JDBCUtils.close(rs, pstmt, connection);
			}
			return e1;
			 
		}
		
		
	
	public static void main(String[] args) {
	//	Employee e = new Employee("2","赵chenyang","manager",1024,"10");
	//	System.out.println(EmployeeDao.addEmployee(e));
		
	//	System.out.println(EmployeeDao.changeEmployee(e)); 
	//	System.out.println(EmployeeDao.deleteEmployee("3")); 
	//	System.out.println(EmployeeDao.queryByJob("manager")); 
	//	System.out.println(EmployeeDao.queryEmp()); 
	//	System.out.println(EmployeeDao.queryEmpById("3"));
	}
}