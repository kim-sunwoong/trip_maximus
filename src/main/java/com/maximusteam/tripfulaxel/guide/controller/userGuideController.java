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
import com.maximusteam.tripfulaxel.guide.model.dto.GuideTripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripCourseDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripImageDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripRegistListDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripThemeChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripTransitChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.service.GuideService;
/*코스가 1개일때 리스트 처리안됨*/
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
		System.out.println("imageTrip type check : ");
		System.out.println(formDataMap.get("imageData").get("imageTrip").getClass().getName());
		
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
		guideDTO.setUserCode(Integer.valueOf((String)formDataMap.get("formData").get("userCode")));
		guideDTO.setPeriodCode(Integer.valueOf((String)formDataMap.get("formData").get("periodCode")));
		guideDTO.setGuideYn("N"); // 승인에 대한 내용, 등록시에는 N으로 기본값 설정
		guideDTO.setLevelCode(1); // 가입시 레벨은 1로 초기화
		
		System.out.println("guideDTO" + guideDTO);
		// 1-2 GUIDE 테이블에 INSERT
		
		
		// 2-1 TripDTO
		TripDTO tripDTO = new TripDTO();
		tripDTO.setTripTitle((String)formDataMap.get("formData").get("tripName"));
		tripDTO.setTripIntro((String)formDataMap.get("formData").get("tripIntro"));
		tripDTO.setTripStartDate(Date.valueOf((String)formDataMap.get("formData").get("peakStart")));
		tripDTO.setTripEndDate(Date.valueOf((String)formDataMap.get("formData").get("peakEnd")));
		tripDTO.setInclude((String)formDataMap.get("formData").get("include"));
		tripDTO.setExclude((String)formDataMap.get("formData").get("exclude"));
		String meetLocation = (String)formDataMap.get("formData").get("address1") + " "
							 + (String)formDataMap.get("formData").get("address2") + " "
							 + (String)formDataMap.get("formData").get("zipCode");
		tripDTO.setMeetLocation(meetLocation);
		
		System.out.println("tripDTO" + tripDTO);

		// 2-2 TRIP 테이블에 INSERT

		// 3-1 TripRegistListDTO
		TripRegistListDTO tripRegistListDTO = new TripRegistListDTO();
		tripRegistListDTO.setTripTypeCode(1);
		tripRegistListDTO.setRegistTypeCode(1);
		tripRegistListDTO.setUserCode(Integer.valueOf((String)formDataMap.get("formData").get("userCode")));
		tripRegistListDTO.setTripCode(tripDTO.getTripCode());
		
		System.out.println("tripRegistListDTO" + tripRegistListDTO);

		// 3-2 TRIP_REGIST_LIST 테이블에 INSERT
		
		// 4-1 ExamineDTO
		ExamineDTO examineDTO = new ExamineDTO();
		examineDTO.setExamineRequestReason((String)formDataMap.get("formData").get("requestReason"));
		examineDTO.setTypeCode(3); // 가이드 등록 심사코드 - 3
		examineDTO.setExamineRequestYn("N"); // 심사등록시 기본값 N으로 등록
		examineDTO.setExamineRequestFrom(Integer.valueOf((String)formDataMap.get("formData").get("userCode")));
		examineDTO.setExamineRequestTo(tripRegistListDTO.getRegistListCode());
		
		System.out.println("examineDTO" + examineDTO);

		// 4-2 EXAMINE 테이블에 INSERT - requestDate는 query의 now()함수 이용예정
		
		
		// 5-1 TripThemeChoiceDTO - BRIDGE 테이블에 사용된다.
		List<Object> choiceTheme = (List)formDataMap.get("formData").get("theme");
		List<TripThemeChoiceDTO> themeList = new ArrayList<>();		
				
		for(int i = 0; i < choiceTheme.size(); i++) {
			TripThemeChoiceDTO tripThemeChoiceDTO = new TripThemeChoiceDTO();
			tripThemeChoiceDTO.setTripCode(tripDTO.getTripCode());
			tripThemeChoiceDTO.setThemeCode(Integer.valueOf((String)choiceTheme.get(i)));
			
			themeList.add(tripThemeChoiceDTO);
		}
		System.out.println("themeList" + themeList);

		// 5-2 TRIP_THEME_CHOICE 테이블에 INSERT
		
		
		// 6-1 TripTransitChoiceDTO
		List<Object> choiceTransit = (List)formDataMap.get("formData").get("transit");
		List<TripTransitChoiceDTO> transitList = new ArrayList<>();
		
		for(int i = 0; i < choiceTransit.size(); i++) {
			TripTransitChoiceDTO tripTransitChoiceDTO = new TripTransitChoiceDTO();
			tripTransitChoiceDTO.setTripCode(tripDTO.getTripCode());
			tripTransitChoiceDTO.setTransitCode(Integer.valueOf((String)choiceTransit.get(i)));
			
			transitList.add(tripTransitChoiceDTO);
		}
		System.out.println("transitList" + transitList);

		// 6-2 TRANSIT_CHOICE 테이블에 INSERT
		
		// 7-1 GuideTripDTO
		GuideTripDTO guideTripDTO = new GuideTripDTO();
		guideTripDTO.setPayment(Integer.valueOf((String)formDataMap.get("formData").get("price")));
		guideTripDTO.setMinimum(Integer.valueOf((String)formDataMap.get("formData").get("minimum")));
		guideTripDTO.setMaximum(Integer.valueOf((String)formDataMap.get("formData").get("maximum")));
		guideTripDTO.setTripCode(tripDTO.getTripCode());
		
		System.out.println("guideTripDTO" + guideTripDTO);

		// 7-2 GUIDE_TRIP 테이블에 INSERT
		
		/*
		 *  imageID, imageFace, imageCerti(List)- TripImageDTO를 사용한다.
		 *  json에서 바로 사용한다. parsing 불필요
 		 * */
		
		/* TRIP_IMAGE, COURSE_IMAGE  
		 * JSON으로 전달받은 데이터 중 imageForm을 사용
		 * imageData경우, 사진을 선택했을 시 이미 DB에 저장이 되어있으므로
		 * 저장한 사진의 pk를 가지고 UPDATE 진행한다.
		 * (imageCourse경우에는 TRIP_COURSE에 INSERT 별도로 진행)
		 * 
		 * UPDATE 목록&순서 
		 *    테이블         DTO 
		 * 1. TRIP_IMAGE   TripImageDTO - 여행사진
		 * 2. TRIP_IMAGE   TripImageDTO - 코스사진
		 * 
		 * INSERT 목록&순서
		 *    테이블         DTO 
		 * 3. TRIP_COURSE  TripCourseDTO - 코스사진정보
		 */
		
		// 1 TripImageDTO - TRIP_IMAGE에 사용 - refCode:tripCode
		// 8-1 imageTrip List타입이므로 for-loop을 통해 값 없데이트
		List<TripImageDTO> tripImageList = new ArrayList<>();
		List<LinkedHashMap<String, Object>> tripImageListMap 
			= (List<LinkedHashMap<String, Object>>)formDataMap.get("imageData").get("imageTrip");
		for(int i = 0; i < tripImageListMap.size(); i++) {
			TripImageDTO tripIdImageDTO = new TripImageDTO();
			
			tripIdImageDTO.setImageCode((Integer)tripImageListMap.get(i).get("imageCode"));
			tripIdImageDTO.setSavedName((String)tripImageListMap.get(i).get("savedName"));
			tripIdImageDTO.setImageTypeCode((Integer)tripImageListMap.get(i).get("imageTypeCode"));
			tripIdImageDTO.setOriginName((String)tripImageListMap.get(i).get("originName"));
			tripIdImageDTO.setRefCode(tripDTO.getTripCode());
			
			tripImageList.add(tripIdImageDTO);
		}
		System.out.println("tripImageList" + tripImageList);

		// 8-2 
		
		// 9-1 TripCourseDTO
		List<TripCourseDTO> courseImageList = new ArrayList<>();
		List<LinkedHashMap<String, Object>> courseImageListMap 
		= (List<LinkedHashMap<String, Object>>)formDataMap.get("imageData").get("imageCourse");
		
		// 코스제목, 코스설명은 formData에 array형태로 JSON으로 만들어져있다.
		List<String> courseTitleList = (List)formDataMap.get("formData").get("courseTitle");
		List<String> courseIntroList = (List)formDataMap.get("formData").get("courseIntro");

		for(int i = 0; i < courseImageListMap.size(); i++) {
			TripCourseDTO tripCourseDTO = new TripCourseDTO();
			
			tripCourseDTO.setTripImageCode((Integer)tripImageListMap.get(i).get("imageCode"));
			tripCourseDTO.setCourseName(courseTitleList.get(i));
			tripCourseDTO.setCourseInfo(courseIntroList.get(i));
			
			courseImageList.add(tripCourseDTO);
		}
		System.out.println("courseImageList" + courseImageList);

		
		return null;
	}
}
