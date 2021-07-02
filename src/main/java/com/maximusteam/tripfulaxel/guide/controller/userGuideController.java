package com.maximusteam.tripfulaxel.guide.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.maximusteam.tripfulaxel.admin.model.dto.ExamineDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideRegistFormDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripRegistListDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripThemeChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.service.GuideService;

@RestController
public class userGuideController {

	@Inject
	private final GuideService guideService;
	
	public userGuideController(GuideService guideService) {
		this.guideService = guideService;
	}
	
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
		
		// 1-1 GuideDTO 생성
		GuideDTO guideDTO = new GuideDTO();
		guideDTO.setNickname((String)formDataMap.get("formData").get("guideNickname"));
		guideDTO.setCarYn((String)formDataMap.get("formData").get("hasCar"));
		guideDTO.setExpYn((String)formDataMap.get("formData").get("hasExp"));
		guideDTO.setIntro((String)formDataMap.get("formData").get("intro"));
		guideDTO.setUserCode((int)formDataMap.get("formData").get("userCode"));
		guideDTO.setLevelCode((int)formDataMap.get("formData").get("intro"));
		guideDTO.setGuideYn("N"); // 승인에 대한 내용, 등록시에는 N으로 기본값 설정
		guideDTO.setLevelCode(1); // 가입시 레벨은 1로 초기화
		
		// 1-2 GUIDE 테이블에 INSERT
		
		
		// 2-1 TripDTO
		TripDTO tripDTO = new TripDTO();
		tripDTO.setTripTitle((String)formDataMap.get("formData").get("tripName"));
		tripDTO.setTripIntro((String)formDataMap.get("formData").get("tripIntro"));
		tripDTO.setTripStartDate((Date)formDataMap.get("formData").get("peakStart"));
		tripDTO.setTripEndDate((Date)formDataMap.get("formData").get("peakEnd"));
		tripDTO.setInclude((String)formDataMap.get("formData").get("include"));
		tripDTO.setExclude((String)formDataMap.get("formData").get("exclude"));
		String meetLocation = (String)formDataMap.get("formData").get("address1") + " "
							 + (String)formDataMap.get("formData").get("address2") + " "
							 + (String)formDataMap.get("formData").get("zipCode");
		tripDTO.setMeetLocation(meetLocation);
		
		// 2-2 TRIP 테이블에 INSERT

		// 3-1 TripRegistListDTO
		TripRegistListDTO tripRegistListDTO = new TripRegistListDTO();
		tripRegistListDTO.setTripTypeCode(1);
		tripRegistListDTO.setRegistTypeCode(1);
		tripRegistListDTO.setUserCode((int)formDataMap.get("formData").get("userCode"));
		tripRegistListDTO.setTripCode(tripDTO.getTripCode());
		
		// 3-2 TRIP_REGIST_LIST 테이블에 INSERT
		
		// 4-1 ExamineDTO
		ExamineDTO examineDTO = new ExamineDTO();
		examineDTO.setExamineRequestReason((String)formDataMap.get("formData").get("requestReason"));
		examineDTO.setTypeCode(3); // 가이드 등록 심사코드 - 3
		examineDTO.setExamineRequestYn("N"); // 심사등록시 기본값 N으로 등록
		examineDTO.setExamineRequestFrom((int)formDataMap.get("formData").get("userCode"));
		examineDTO.setExamineRequestTo(tripRegistListDTO.getRegistListCode());
		
		// 4-2 EXAMINE 테이블에 INSERT - requestDate는 query의 now()함수 이용예정
		
		
		// 5-1 TripThemeChoiceDTO - BRIDGE 테이블에 사용된다.
		int[] choiceTheme = (int[])formDataMap.get("formData").get("theme");
		List<TripThemeChoiceDTO> themeList = new ArrayList<>();		
				
		for(int i = 0; i < choiceTheme.length; i++) {
			TripThemeChoiceDTO tripThemeChoiceDTO = new TripThemeChoiceDTO();
			tripThemeChoiceDTO.setTripCode(tripDTO.getTripCode());
			tripThemeChoiceDTO.setThemeCode(choiceTheme[i]);
			
			themeList.add(tripThemeChoiceDTO);
		}
		
		// 5-2 TRIP_THEME_CHOICE 테이블에 INSERT
		
		
		// 6-1 TripTransitChoice
		int[] choiceTransit = (int[])formDataMap.get("formData").get("transit");
		
		
		
		return null;
	}
}
