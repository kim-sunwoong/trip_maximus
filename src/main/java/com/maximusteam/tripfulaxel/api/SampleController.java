package com.maximusteam.tripfulaxel.api;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/api/")
public class SampleController {

    @RequestMapping(method = RequestMethod.GET, value = "sample", 
            produces = MediaType.APPLICATION_JSON_VALUE)
    @ApiOperation(value = "ThisIsAPIOPERATIONVALUE", tags = "ThisIsTags")
    public ResponseEntity sample(@RequestParam String param) {
    	Map<String, String> testMap = new HashMap<>();
    	testMap.put("James", param);
        return ResponseEntity.ok(testMap);
    }
}
