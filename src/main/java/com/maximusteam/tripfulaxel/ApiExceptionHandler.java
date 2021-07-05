package com.maximusteam.tripfulaxel;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice // @ResponseBody + @ControllerAdvice
public class ApiExceptionHandler {

	@ExceptionHandler(value = ApiException.class)
    public ResponseEntity handleException(ApiException e) {
        return ResponseEntity.status(e.getHttpStatus())
                  .contentType(MediaType.APPLICATION_JSON).body(e.getMsg());
    }
}
