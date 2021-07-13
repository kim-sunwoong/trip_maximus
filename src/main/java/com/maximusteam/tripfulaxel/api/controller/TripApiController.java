package com.maximusteam.tripfulaxel.api.controller;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.maximusteam.tripfulaxel.api.Response;
import com.maximusteam.tripfulaxel.api.model.dto.TripApiDTO;
import com.maximusteam.tripfulaxel.api.model.service.TripApiService;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/api")
public class TripApiController {

	@Inject
	private final TripApiService tripApiService;
	
	public TripApiController(TripApiService tripApiService) {
		this.tripApiService = tripApiService;
	}
	
	@GetMapping("/trips")
	@ApiOperation(value = "여행목록 조회", notes="전체 여행목록을 조회한다")
	public Response getTrips() {
		
		Response response = new Response();
		response.add("trip", tripApiService.getTrips());
		
		return response;
	}
	
	@GetMapping("/trips/{id}")
	@ApiOperation(value = "특정여행 조회", notes="특정 여행를 id를 이용해 조회한다")
	@ApiImplicitParam(name = "id", value = "여행 코드")
	public Response getTrip(@PathVariable int id) {
		
		Response response = new Response();
		TripApiDTO resultTrip = tripApiService.getTrip(id);
		if( resultTrip != null) {
			response.add("trip", resultTrip);
		} else {
			response.add("error", "존재하지 않는 여행코드입니다");
		}
		
		return response;
	}
	
	@PostMapping("/trips")
	@ApiOperation(value = "여행등록", notes="여행를 등록한다")
	public Response registtrip(@RequestBody TripApiDTO tripApiDTO) {
		
		Response response = new Response();
		
		if(tripApiService.registTrip(tripApiDTO)) {
			response.add("registered trip", tripApiDTO);
		} else {
			response.add("error", "등록 실패");
		}
		return response;
	}
	
	@PutMapping("/trips")
	@ApiOperation(value = "여행정보 수정", notes="여행정보를 수정한다")
	public Response modifyTrip(@RequestBody TripApiDTO tripApiDTO) {
		
		Response response = new Response();
		
		if(tripApiService.modifyTrip(tripApiDTO)) {
			response.add("updated trip", tripApiDTO);
		} else {
			response.add("error", "수정 실패");
		}
		return response;
	}
	
	@DeleteMapping("/trips/{id}")
	@ApiOperation(value = "특정여행 삭제", notes="특정 여행를 code를 이용해 삭제한다")
	@ApiImplicitParam(name = "id", value = "삭제할 여행 코드")
	public Response removeTrip(@PathVariable int id) {
		
		Response response = new Response();
		response.add("removed trip", tripApiService.removeTrip(id));
		
		return response;
	}
}
