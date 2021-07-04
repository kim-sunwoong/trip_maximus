package com.maximusteam.tripfulaxel;

import org.springframework.http.HttpStatus;

public class ApiException extends RuntimeException {

	private HttpStatus httpStatus;
    private String msg;
    
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
 
    public ApiException(HttpStatus httpStatus, String msg) {
        this.msg = msg;
        this.httpStatus = httpStatus;
    }
}
