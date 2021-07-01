package com.maximusteam.tripfulaxel.user.mypage.model.dto;

public class TripCourseDTO {

	private int courseCode;
	private String courseName;
	private String courseInfo;
	private int tripCode;
	private String image;
	
	public TripCourseDTO() {
		// TODO Auto-generated constructor stub
	}

	public TripCourseDTO(int courseCode, String courseName, String courseInfo, int tripCode, String image) {
		super();
		this.courseCode = courseCode;
		this.courseName = courseName;
		this.courseInfo = courseInfo;
		this.tripCode = tripCode;
		this.image = image;
	}

	public int getCourseCode() {
		return courseCode;
	}

	public void setCourseCode(int courseCode) {
		this.courseCode = courseCode;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCourseInfo() {
		return courseInfo;
	}

	public void setCourseInfo(String courseInfo) {
		this.courseInfo = courseInfo;
	}

	public int getTripCode() {
		return tripCode;
	}

	public void setTripCode(int tripCode) {
		this.tripCode = tripCode;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "TripCourseDTO [courseCode=" + courseCode + ", courseName=" + courseName + ", courseInfo=" + courseInfo
				+ ", tripCode=" + tripCode + ", image=" + image + "]";
	}
	
	
}
