package com.maximusteam.tripfulaxel;

import org.springframework.http.HttpStatus;

public class ApiResponse {

	private HttpStatus httpStatus;
    private String msg;
	
	public ApiResponse() {
		super();
	}
	
	public ApiResponse(HttpStatus httpStatus, String msg) {
		super();
		this.httpStatus = httpStatus;
		this.msg = msg;
	}

	public HttpStatus getHttpStatus() {
		return httpStatus;
	}

	public void setHttpStatus(HttpStatus httpStatus) {
		this.httpStatus = httpStatus;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	@Override
	public String toString() {
		return "ApiResponse [httpStatus=" + httpStatus + ", msg=" + msg + "]";
	}

	
}
