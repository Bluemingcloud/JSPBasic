package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DepartmentDAO {
	
	// DAO는 불필요하게 여러개 만들 필요가 없기 때문에
	// 객체가 1개만 생성되도록 Singleton 형식으로 설계	
	
	// 1. 나자신의 객체를 1개 생성하고 private을 붙임
	private static DepartmentDAO instance = new DepartmentDAO();
	
	// 2. 직접 객체를 생성할 수 없도록 생성자에도 private 을 붙임
	private DepartmentDAO() {
		
		// 커넥션풀에 사용할 객체를 얻어옴
		try {
			InitialContext init = new InitialContext();	// 시작 설정 객체
			
			ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
			
		} catch (Exception e) {
			System.out.println("커넥션 풀 에러");
		}
	}
	
	// 3. 객체 생성을 요구할때 getter메서드를 사용해서 1번의 객체를 반환
	public static DepartmentDAO getInstance() {
		return instance;
	}
	
	
	// 필요한 메서드를 생성
	
	// 데이터베이스 연결
//	public static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
//	public static final String UID = "HR";
//	public static final String UPW = "HR";
	
	// 커넥션 풀 객체정보
	private DataSource ds;
	
	// department 부서명을 조회하는 메서드
	public List<DepartmentDTO> getList() {
		
		List<DepartmentDTO> list = new ArrayList<>();
		
		String sql = "SELECT * FROM DEPARTMENTS WHERE MANAGER_ID IS NOT NULL";
		
		Connection conn = null;	// 연결객체
		PreparedStatement pstmt = null;	// sql문 실행 객체
		ResultSet rs = null; // 결과처리 객체
		
		try {
//			Class.forName("oracle.jdbc.OracleDriver");
			
//			conn = DriverManager.getConnection(URL, UID, UPW);
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery(); // select 구문의 실행
			
			while(rs.next()) {	// 다음이 있으면 true 없으면 false, 한 행씩 전진
				// 1행에 대한 처리
				int departmentId = rs.getInt("department_id"); // column 명
				String departmentName = rs.getString("department_name");
				int managerId = rs.getInt("manager_id");
				int locationId = rs.getInt("location_id");
				
				// 1행을 DTO 에 저장 (조회할 column 모두 저장)
				DepartmentDTO dto = new DepartmentDTO();
				dto.setDepartmentId(departmentId);
				dto.setDepartmentName(departmentName);
				dto.setManagerId(managerId);
				dto.setLocationId(locationId);
				
				// DTO를 리스트에 추가
				list.add(dto);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) conn.close();
				if(pstmt != null) pstmt.close(); 
				if(rs != null) rs.close();
			} catch (Exception e2) {
			}
		}
		
		return list;
	}
	
	public DepartmentDTO getInfo(int departmentId) {
		
		DepartmentDTO dto = new DepartmentDTO();
		String sql = "SELECT D.DEPARTMENT_NAME, "
				+           "E.FIRST_NAME || ' ' || E.LAST_NAME AS MANAGER_NAME, "
				+ 			"L.STREET_ADDRESS "
				+ "FROM DEPARTMENTS D "
				+ "LEFT JOIN EMPLOYEES E "
				+ "ON D.MANAGER_ID = E.EMPLOYEE_ID "
				+ "LEFT JOIN LOCATIONS L "
				+ "ON D.LOCATION_ID = L.LOCATION_ID "
				+ "WHERE D.DEPARTMENT_ID = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, departmentId);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				
				String departmentName = rs.getString("department_name");
				String managerName = rs.getString("manager_name");
				String streetAddress = rs.getString("street_address");
				
				dto.setDepartmentId(departmentId);
				dto.setDepartmentName(departmentName);
				dto.setManagerName(managerName);
				dto.setStreetAddress(streetAddress);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (Exception e2) {
			}
		}
		
		return dto;
	}

}
