package com.model;

public class DepartmentDTO {
	
	// DTO 또는 VO 클래스는 데이터를 옮기기 위한 클래스로, 테이블 별로 1개씩 생성합니다.
	// 관련변수를 테이블과 동일한 이름으로 선언하고, getter / setter 메서드를 반드시 생성합니다.
	
	private int departmentId;
	private String departmentName;
	private int managerId;
	private int locationId;
	
	// join 하여 추가할 컬럼(n 대 1 join 만 가능)
	private String managerName;
	private String streetAddress;
	
	// 생성자는 기본생성자, 멤버변수를 모두 초기화 하는 생성자 를 만듭니다.
	public DepartmentDTO() {
	}
	
	public DepartmentDTO(int departmentId, String departmentName, int managerId, int locationId, String managerName,
			String streetAddress) {
		super();
		this.departmentId = departmentId;
		this.departmentName = departmentName;
		this.managerId = managerId;
		this.locationId = locationId;
		this.managerName = managerName;
		this.streetAddress = streetAddress;
	}

	// getter / setter
	public int getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public int getManagerId() {
		return managerId;
	}

	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}

	public int getLocationId() {
		return locationId;
	}

	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}

	
	// join 한 컬럼
	public String getManagerName() {
		return managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

	public String getStreetAddress() {
		return streetAddress;
	}

	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}
	


}
