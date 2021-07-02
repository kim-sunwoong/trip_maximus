package com.maximusteam.tripfulaxel.guide.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.maximusteam.tripfulaxel.guide.model.dto.GuideDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideRegistFormDTO;
import com.maximusteam.tripfulaxel.guide.model.service.GuideService;

@RestController
public class userGuideController {

	@Inject
	private final GuideService guideService;
	
	public userGuideController(GuideService guideService) {
		this.guideService = guideService;
	}
	
//	@RequestMapping(value = "/api/guides", method = RequestMethod.POST)
//	public GuideRegistFormDTO insertGuide(@RequestBody GuideRegistFormDTO formDataMap){
//		
//		System.out.println("come in controller");
//		System.out.println(formDataMap.getFormData());
//		System.out.println(formDataMap.getImageData());
//		
//		return null;
//	}

	@RequestMapping(value = "/api/guides", method = RequestMethod.POST)
	public GuideRegistFormDTO insertGuide(@RequestBody Map<String, LinkedHashMap<String, Object>> formDataMap){
		
		System.out.println("come in controller1");
		
		System.out.println(formDataMap.get("formData").getClass().getName()); // LinkedHashMap
		for (Map.Entry<String, Object> entry : formDataMap.get("formData").entrySet()) {
			  System.out.println(entry.getKey() + ":" + entry.getValue());
		}
		
		
		System.out.println(formDataMap.get("imageData").getClass().getName()); // LinkedHashMap
		for (Map.Entry<String, Object> entry : formDataMap.get("imageData").entrySet()) {
			  System.out.println(entry.getKey() + ":" + entry.getValue());
		}
		
		/* JSON으로부터의 데이터를 알맞는 TABLE-DTO에 사용할 수 있도록 파싱한다. 
		 * 
		 * INSERT 목록&순서 
		 *    테이블     DTO 
		 * 1. GUIDE   GuideDTO
		 *  
		 * */
		
		// 1. GuideDTO
		GuideDTO guideDTO = new GuideDTO();
		guideDTO.setNickname((String)formDataMap.get("formData").get("guideNickname"));
		guideDTO.setCarYn((String)formDataMap.get("formData").get("hasCar"));
		guideDTO.setExpYn((String)formDataMap.get("formData").get("hasExp"));
		guideDTO.setIntro((String)formDataMap.get("formData").get("intro"));
		guideDTO.setUserCode((int)formDataMap.get("formData").get("userCode"));
		guideDTO.setLevelCode((int)formDataMap.get("formData").get("intro"));
		guideDTO.setGuideYn("N"); // 승인에 대한 내용, 등록시에는 N으로 기본값 설정
		guideDTO.setLevelCode(1); // 가입시 레벨은 1로 초기화
		
		// 2. TripDTO
		
		
		// 3. TripRegistListDTO
		
		// ExamineDTO 여행등록코드가 필요
		
		return null;
	}
}
