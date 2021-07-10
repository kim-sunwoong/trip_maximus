package com.maximusteam.tripfulaxel.api;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;

import io.swagger.annotations.ApiModelProperty;

public class Response {

	@ApiModelProperty(example = "싱태코드")
	private int status;
	
	@ApiModelProperty(example = "메세지")
	private String message;
	
	@ApiModelProperty(example = "응답데이터")
	private Map<String, Object> data;
	
	@ApiModelProperty(example = "시간")
	private LocalDateTime timestamp;
	
	public Response() {
		this(HttpStatus.OK);
	}
	
	public Response(HttpStatus httpStatus) {
		this.status = httpStatus.value();
		this.message = httpStatus.getReasonPhrase();
		this.data = new HashMap<>();
		this.timestamp = LocalDateTime.now();
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

	public Map<String, Object> getData() {
		return data;
	}

	public void setData(Map<String, Object> data) {
		this.data = data;
	}

	public LocalDateTime getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(LocalDateTime timestamp) {
		this.timestamp = timestamp;
	}

	@Override
	public String toString() {
		return "Response [status=" + status + ", message=" + message + ", data=" + data + ", timestamp=" + timestamp
				+ "]";
	}

	public void add(String key, Object value) {
		this.data.put(key, value);
	}
}
