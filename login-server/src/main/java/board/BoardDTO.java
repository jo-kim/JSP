package board;

import java.sql.Timestamp;

public class BoardDTO {
	private int code, view, like;
	private String title, content, id, pw;
	private Timestamp date;
	
	public BoardDTO(String title, String content, String pw) {
		this.title = title;
		this.content = content;
		this.pw = pw;
	}
	
	public BoardDTO(String id, String pw, String title, String content) {
		
		this.id = id; 
		this.pw = pw;
		this.title = title; 
		this.content = content;
	
	
	}
	
	
	public BoardDTO(int code, String title, String content, String id, String pw, int view, int like, Timestamp date) {
		
		this.code= code;
		this.title = title; 
		this.content = content;
		this.id = id; 
		this.pw = pw;
		this.view = view;
		this.like = like;
		this.date = date;
	}


	public int getCode() {
		return code;
	}


	public int getView() {
		return view;
	}


	public void setView(int view) {
		this.view = view;
	}


	public int getLike() {
		return like;
	}


	public void setLike(int like) {
		this.like = like;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public Timestamp getDate() {
		return date;
	}


	
	
}
