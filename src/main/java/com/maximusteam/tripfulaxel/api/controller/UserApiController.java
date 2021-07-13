package com.maximusteam.tripfulaxel.api.controller;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.maximusteam.tripfulaxel.api.Response;
import com.maximusteam.tripfulaxel.api.model.dto.NewUserApiDTO;
import com.maximusteam.tripfulaxel.api.model.dto.UserApiDTO;
import com.maximusteam.tripfulaxel.api.model.service.UserApiService;
import com.maximusteam.tripfulaxel.user.model.service.UserService;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/api")
public class UserApiController {

	private final UserApiService userApiService;
	private final BCryptPasswordEncoder passwordEncoder;

	@Inject
	public UserApiController(UserApiService userApiService, BCryptPasswordEncoder passwordEncoder) {
		this.userApiService = userApiService;
		this.passwordEncoder = passwordEncoder;
	}
	
	@GetMapping("/users")
	@ApiOperation(value = "유저목록 조회", notes="전체 유저목록을 조회한다")
	public Response getUsers() {
		
		Response response = new Response();
		response.add("user", userApiService.getUsers());
		
		return response;
	}
	
	@GetMapping("/users/{id}")
	@ApiOperation(value = "특정유저 조회", notes="특정 유저를 id를 이용해 조회한다")
	@ApiImplicitParam(name = "id", value = "유저 아이디")
	public Response getUser(@PathVariable int id) {
		
		Response response = new Response();
		response.add("user", userApiService.getUser(id));
		
		return response;
	}
	
	@PostMapping("/users")
	@ApiOperation(value = "유저등록", notes="유저를 등록한다")
	public Response registUser(@RequestBody NewUserApiDTO userDTO) {
		
		Response response = new Response();
		userDTO.setPassword(passwordEncoder.encode(userDTO.getPassword()));
		response.add("registered user", userApiService.registUser(userDTO));
		
		return response;
	}
	
	@PutMapping("/users")
	@ApiOperation(value = "유저정보 수정", notes="유저정보를 수정한다")
	public Response modifyUser(@RequestBody UserApiDTO userDTO) {
		
		Response response = new Response();
		response.add("updated user", userApiService.modifyUser(userDTO));
		
		return response;
	}
	
	@DeleteMapping("/users/{id}")
	@ApiOperation(value = "특정유저 삭제", notes="특정 유저를 id를 이용해 삭제한다")
	@ApiImplicitParam(name = "id", value = "삭제할 유저 아이디")
	public Response removeUser(@PathVariable int id) {
		Response response = new Response();
		response.add("removed user", userApiService.removeUser(id));
		
		return response;
	}
}
