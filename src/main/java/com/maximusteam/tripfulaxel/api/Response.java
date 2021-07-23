package com.maximusteam.tripfulaxel.api;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;

import com.fasterxml.jackson.annotation.JsonFormat;

import io.swagger.annotations.ApiModelProperty;

public class Response {

	@ApiModelProperty(example = "상태코드")
	private int status;
	
	@ApiModelProperty(example = "메세지")
	private String message;
	
	@ApiModelProperty(example = "시간")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private LocalDateTime timestamp;
	
	@ApiModelProperty(example = "응답데이터")
	private Map<String, Object> data;
	
	public Response() {
		this(HttpStatus.OK);
	}
	
	public Response(HttpStatus httpStatus) {
		this.status = httpStatus.value();
		this.message = httpStatus.getReasonPhrase();
		this.timestamp = LocalDateTime.now();
		this.data = new HashMap<>();
	}
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public LocalDateTime getTimestamp() {
		return timestamp;
	}
	
	public void setTimestamp(LocalDateTime timestamp) {
		this.timestamp = timestamp;
	}
	
	public Map<String, Object> getData() {
		return data;
	}

	public void setData(Map<String, Object> data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "Response [status=" + status + ", message=" + message + ", timestamp=" + timestamp + ", data=" + data
				+ "]";
	}

	public void add(String key, Object value) {
		this.data.put(key, value);
	}
}
