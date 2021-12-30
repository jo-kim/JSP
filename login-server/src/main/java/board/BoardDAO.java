package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

import util.DBManager;

public class BoardDAO {
	
	private BoardDAO() {};
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	
	// 데이터베이스 연동 준비
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private ArrayList<BoardDTO> boards = null;
	
	// 가져오기
	public ArrayList<BoardDTO> getBoard(){
		boards = new ArrayList<>();
		try {
			conn = DBManager.getConnection();
			String sql = "select * from boards";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int code = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String id = rs.getString(4);
				String pw = rs.getString(5);
				int view = rs.getInt(6);
				int like = rs.getInt(7);
				
				Timestamp regDate = rs.getTimestamp(8);
				
				BoardDTO board = new BoardDTO(code,title,content,id,pw,view,like,regDate );
				boards.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return boards;
	}
	// CRUD
	public void addBoard(BoardDTO board) {
		
		try {
			conn = DBManager.getConnection();
		    String sql = "insert into boards(id,pw,title,content) values(?,?,?,?)";
			
		    pstmt = conn.prepareStatement(sql);
		    
		    pstmt.setString(1, board.getId());
			pstmt.setString(2, board.getPw());
			pstmt.setString(3, board.getTitle());
			pstmt.setString(4, board.getContent());
			
			
			pstmt.executeUpdate();
			System.out.println("등록하기완료");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateBoard(int code, BoardDTO board) {
		
		try {
			conn = DBManager.getConnection();
			String sql = "update boards set title = ? , content = ? , pw = ? where code = '"+code+"' ";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1,board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getPw());
			
			pstmt.executeUpdate();
			System.out.println("수정완료");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public BoardDTO getCode(int code) {
		
		for(BoardDTO b : boards) {
			if(b.getCode() == code)
				return b;
		}
		
		return null;
	}
	
	public void deleteBoard(int code) {
		try {
			conn = DBManager.getConnection();
			String sql = "delete from boards where code = '"+code+"'";
			pstmt  = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			System.out.println("삭제완료");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void viewCnt(int code,BoardDTO board) {
		
		try {
			conn = DBManager.getConnection();
			String sql = "update boards set view = view+1 where code='"+code+"'";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			System.out.println("view+1");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void likeCnt(int code, BoardDTO board) {
		//
		try {
			conn = DBManager.getConnection();
			String sql = "update boards set `like` = `like`+1 where code = '"+code+"'";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			System.out.println("like+1");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
