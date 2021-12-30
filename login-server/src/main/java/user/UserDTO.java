package user;

import java.sql.Timestamp;

public class UserDTO {
	// 
	// Data Transfer Object = Bean = VO (read only) 조회용도의 객체  = Entity Object = POJO
	
	// 캡슐화
	private int code;
	private String id, pw, name, year, month, day ,gender, tel;
	
	private Timestamp regDate;
	
	
	public UserDTO( String id, String pw, String name , String year, String month , String day, String gender, String tel) {
		
		this.id = id;
		this.pw =pw;
		this.name = name; 
		this.year = year;
		this.month = month;
		this.day = day; 
		this.gender = gender;
		this.tel = tel;
		
	}
	
	public UserDTO(int code, String id, String pw, String name , String year, String month , String day, String gender, String tel, Timestamp regDate ) {
		this.code = code;
		this.id = id;
		this.pw =pw;
		this.name = name; 
		this.year = year;
		this.month = month;
		this.day = day; 
		this.gender = gender;
		this.tel = tel;
		this.regDate = regDate;
	}
	
	public String getGender() {
		return gender;
	}
	
	public String getName() {
		return name;
	}



	public String getYear() {
		return year;
	}

	

	public String getMonth() {
		return month;
	}

	
	public String getDay() {
		return day;
	}


	public String getTel() {
		return tel;
	}


	public int getCode() {
		return code;
	}


	public String getId() {
		return id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public Timestamp getRegDate() {
		return regDate;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return String.format("%d) Id: %s / Pw: %s / Name: %s / Birth: %s-%s-%s / Gender: %s / Tel: 010) %s (%s)", this.code, this.id, this.pw,this.name, this.year, this.month,this.day,this.gender,this.tel, this.regDate) ;
	}

}
