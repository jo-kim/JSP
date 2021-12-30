package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

import util.DBManager;

public class UserDAO {
	// Data Access Object 
	// ㄴ 데이터베이스에 대한 접근 처리
	
	// 1. 싱글톤 패턴으로 만들기
	private UserDAO() {};
	private static UserDAO instance = new UserDAO();
	public static UserDAO getInstance() {
		return instance;
	}
	
	// 2. 데이터 베이스 연동 준비
	private Connection conn = null;				// DB에 연결을 함
	private PreparedStatement pstmt = null;     // sql 쿼리를 execute해줌
	private ResultSet rs = null; 				// 쿼리실행 결과물을 받는 역할
	
	private ArrayList<UserDTO> users = null;

	// 3. DB 연동하기
//	public Connection getConnection() {
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			
//			String url = "jdbc:mysql://localhost:3306/loginServer?serverTimezone=UTC";
//			String user = "root";
//			String password = "root";
//			
//			conn = DriverManager.getConnection(url,user,password);
//			
//			if(conn != null) {
//				
//				System.out.println("DB 연동 성공");
//			}
//			else {
//				System.out.println("연동 실패");
//			}
//		}
//		catch(Exception e ) {
//			e.printStackTrace();
//		}
//		return conn;
//	}
//	
	// 4. 연동된 DB에서 데이터 불러오기
	public ArrayList<UserDTO> getUsers(){
		users = new ArrayList<>();
		
		try {
			conn = DBManager.getConnection();				// DB에 연동하기
			String sql = "select* from users"; 	
			pstmt = conn.prepareStatement(sql);	// 연동된 DB에 쿼리를 날릴 준비
			rs = pstmt.executeQuery();			// 쿼리를 날리면서 ResultSet을 반환 받음
			
			while(rs.next()) {
				// sql 은 인덱스가 '1'부터 시작
				int code = rs.getInt(1);
				String id = rs.getString(2);
				String pw = rs.getString(3);
				String name = rs.getString(4);
				String year = rs.getString(5);
				String month = rs.getString(6);
				String day = rs.getString(7);
				String gender = rs.getString(8);
				String tel = rs.getString(9);
				Timestamp regDate = rs.getTimestamp(10);
				
				UserDTO user = new UserDTO(code, id, pw, name, year, month, day, gender, tel, regDate);
				users.add(user);
			}
			// System.out.println("성공");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return users;
	}
	
	// 5. CRUD
	// ㄴ Create Read Update Delete
	public void addUser(UserDTO user) {
		
		
		if(checkUser(user.getId())) {
			
			try {
				conn = DBManager.getConnection();
				// sql format= 물음표
				String sql = "insert into users(id, pw, name, year, month, day, gender, tel, regDate) values (?,?,?,?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user.getId());
				pstmt.setString(2, user.getPw());
				pstmt.setString(3, user.getName());
				pstmt.setString(4, user.getYear());
				pstmt.setString(5, user.getMonth());
				pstmt.setString(6, user.getDay());
				pstmt.setString(7, user.getGender());
				pstmt.setString(8, user.getTel());
				pstmt.setTimestamp(9, new Timestamp(Calendar.getInstance().getTimeInMillis()));
				
				pstmt.executeUpdate();
				
				System.out.println("회원가입 성공");
			}
			catch(Exception e) {
				e.printStackTrace();
				System.out.println("fail");
			}
		}
	}


	
	public boolean checkUser(String id) {
		users = getUsers();
		for(UserDTO u : users) {
			if(id.equals(u.getId())) {
				return false;
			}
		}
		return true;
	}
	
	public boolean loginUser(String id ,String pw) {
		users = getUsers();
		int check = -1;
		for(int i=0; i<users.size(); i++) {
			if(id.equals(users.get(i).getId()) && pw.equals(users.get(i).getPw())) {
				check = i;
			}
		}
		if(check != -1) {
			return true;
		}
		else { 
			return false;
		}
	}
}
