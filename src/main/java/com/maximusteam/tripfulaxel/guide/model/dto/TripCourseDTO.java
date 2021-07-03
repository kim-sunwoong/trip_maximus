package com.maximusteam.tripfulaxel.guide.model.dto;

public class TripCourseDTO {
	
	private int courseCode;
	private String courseName;
	private String courseInfo;
	private int tripImageCode;
	
	public TripCourseDTO() {
		super();
	}
	public TripCourseDTO(int courseCode, String courseName, String courseInfo, int tripImageCode) {
		super();
		this.courseCode = courseCode;
		this.courseName = courseName;
		this.courseInfo = courseInfo;
		this.tripImageCode = tripImageCode;
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
	public int getTripImageCode() {
		return tripImageCode;
	}
	public void setTripImageCode(int tripImageCode) {
		this.tripImageCode = tripImageCode;
	}
	@Override
	public String toString() {
		return "TripCourseDTO [courseCode=" + courseCode + ", courseName=" + courseName + ", courseInfo=" + courseInfo
				+ ", tripImageCode=" + tripImageCode + "]";
	}
}
