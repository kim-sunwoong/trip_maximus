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
import com.maximusteam.tripfulaxel.guide.model.dto.GuideStyleChoiceDTO;
//import com.maximusteam.tripfulaxel.guide.model.dto.GuideRegistFormDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideTripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripCourseDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripImageDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripRegistListDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripThemeChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.dto.TripTransitChoiceDTO;
import com.maximusteam.tripfulaxel.guide.model.service.GuideService;

@RestController
public class userGuideController {

	@Inject
	private final GuideService guideService;
	
	public userGuideController(GuideService guideService) {
		this.guideService = guideService;
	}
	
	@RequestMapping(value = "/api/guides", method = RequestMethod.POST)
	public String insertGuide(@RequestBody Map<String, LinkedHashMap<String, Object>> formDataMap){
		
		/* JSON DATA 확인 */
		System.out.println(formDataMap.get("formData").getClass().getName()); // LinkedHashMap
		for (Map.Entry<String, Object> entry : formDataMap.get("formData").entrySet()) {
			  System.out.println(entry.getKey() + ":" + entry.getValue());
		}
		
		System.out.println(formDataMap.get("imageData").getClass().getName()); // LinkedHashMap
		for (Map.Entry<String, Object> entry : formDataMap.get("imageData").entrySet()) {
			  System.out.println(entry.getKey() + ":" + entry.getValue());
		}

		System.out.println(formDataMap.get("imageData").get("imageTrip").getClass().getName());
		
		/* JSON 데이터를 알맞는 TABLE & DTO에 사용할 수 있도록 파싱한다. 
		 * 
		 * 				FORM DATA - INSERT 
		 *    테이블     				DTO 
		 * 1. GUIDE   				GuideDTO
		 * 2. GUIDE_STYLE_CHOICE    GuideStyleChoiceDTO
		 * 3. TRIP    				TripDTO
		 * 4. TRIP_REGIST_LIST 		TripRegistListDTO
		 * 5. EXAMINE				ExamineDTO
		 * 6. TRIP_THEME_CHOICE		TripThemeChoiceDTO
		 * 7. TRIP_TRANSIT_CHOICE	TripTransitChoiceDTO
		 * 8. GUIDE_TRIP			GuideTripDTO
		 * 
		 * 				IMAGE DATA - UPDATE(OPTIONAL)
		 * 1. TRIP_IMAGE			TripImageDTO 
		 * 
		 * 				IMAGE DATA - INSERT(OPTIONAL)
		 * 1. TRIP_COURSE			TripCourseDTO
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
		if(!guideService.insertGuide(guideDTO)) {
			System.out.println("insert guide error");
		}
		
		// 2-1
		List<GuideStyleChoiceDTO> styleList = new ArrayList<>();

		if(formDataMap.get("formData").get("guideStyle") instanceof ArrayList) {
			List<Object> choiceStyle = (List)formDataMap.get("formData").get("guideStyle");
					
			for(int i = 0; i < choiceStyle.size(); i++) {
				GuideStyleChoiceDTO guideStyleChoiceDTO = new GuideStyleChoiceDTO();
				guideStyleChoiceDTO.setGuideCode(guideDTO.getGuideCode());
				guideStyleChoiceDTO.setGuideStyleChoiceCode(Integer.valueOf((String)choiceStyle.get(i)));
				
				styleList.add(guideStyleChoiceDTO);
			}
		}else {
			GuideStyleChoiceDTO guideStyleChoiceDTO = new GuideStyleChoiceDTO();
			guideStyleChoiceDTO.setGuideCode(guideDTO.getGuideCode());
			guideStyleChoiceDTO.setGuideStyleChoiceCode(Integer.valueOf((String)formDataMap.get("formData").get("guideStyle")));
			
			styleList.add(guideStyleChoiceDTO);
		}
		System.out.println("styleList" + styleList);
		// 2-2 GUIDE_STYLE_CHOICE 테이블에 INSERT
		if(!guideService.insertGuideStyleChoice(styleList)) {
			System.out.println("insert GuideStyleChoice error");
		}
		
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
		if(!guideService.insertTrip(tripDTO)) {
			System.out.println("insert Trip error");
		}
		
		// 3-1 TripRegistListDTO
		TripRegistListDTO tripRegistListDTO = new TripRegistListDTO();
		tripRegistListDTO.setTripTypeCode(1);
		tripRegistListDTO.setRegistTypeCode(1);
		tripRegistListDTO.setUserCode(Integer.valueOf((String)formDataMap.get("formData").get("userCode")));
		tripRegistListDTO.setTripCode(tripDTO.getTripCode());
		
		System.out.println("tripRegistListDTO" + tripRegistListDTO);

		// 3-2 TRIP_REGIST_LIST 테이블에 INSERT
		if(!guideService.insertTripRegistList(tripRegistListDTO)) {
			System.out.println("insert TripRegistList error");
		}
		
		// 4-1 ExamineDTO
		ExamineDTO examineDTO = new ExamineDTO();
		examineDTO.setExamineRequestReason((String)formDataMap.get("formData").get("requestReason"));
		examineDTO.setTypeCode(3); // 가이드 등록 심사코드 - 3
		examineDTO.setExamineRequestYn("N"); // 심사등록시 기본값 N으로 등록
		examineDTO.setExamineRequestFrom(Integer.valueOf((String)formDataMap.get("formData").get("userCode")));
		examineDTO.setExamineRequestTo(tripRegistListDTO.getRegistListCode());
		
		System.out.println("examineDTO" + examineDTO);

		// 4-2 EXAMINE 테이블에 INSERT - requestDate는 query의 now()함수 이용예정
		if(!guideService.insertExamine(examineDTO)) {
			System.out.println("insert Examine error");
		}
		
		// 5-1 TripThemeChoiceDTO - BRIDGE 테이블에 사용된다.
		// 다중 선택 -> ArrayList / 단일 선택 -> String
//		System.out.println("단일선택 객체 타입 확인 : " + formDataMap.get("formData").get("theme").getClass().getName());
		List<TripThemeChoiceDTO> themeList = new ArrayList<>();		
		
		if(formDataMap.get("formData").get("theme") instanceof ArrayList) {
			List<Object> choiceTheme = (List)formDataMap.get("formData").get("theme");
					
			for(int i = 0; i < choiceTheme.size(); i++) {
				TripThemeChoiceDTO tripThemeChoiceDTO = new TripThemeChoiceDTO();
				tripThemeChoiceDTO.setTripCode(tripDTO.getTripCode());
				tripThemeChoiceDTO.setThemeCode(Integer.valueOf((String)choiceTheme.get(i)));
				
				themeList.add(tripThemeChoiceDTO);
			}
		}else {
			TripThemeChoiceDTO tripThemeChoiceDTO = new TripThemeChoiceDTO();
			tripThemeChoiceDTO.setTripCode(tripDTO.getTripCode());
			tripThemeChoiceDTO.setThemeCode(Integer.valueOf((String)formDataMap.get("formData").get("theme")));
			
			themeList.add(tripThemeChoiceDTO);
		}
		System.out.println("themeList" + themeList);
		// 5-2 TRIP_THEME_CHOICE 테이블에 INSERT
		if(!guideService.insertTheme(themeList)) {
			System.out.println("insert Theme error");
		}
		
		// 6-1 TripTransitChoiceDTO
		// 다중 선택 -> ArrayList / 단일 선택 -> String
		List<TripTransitChoiceDTO> transitList = new ArrayList<>();
		
		if(formDataMap.get("formData").get("transit") instanceof ArrayList) {
			List<Object> choiceTransit = (List)formDataMap.get("formData").get("transit");
			
			for(int i = 0; i < choiceTransit.size(); i++) {
				TripTransitChoiceDTO tripTransitChoiceDTO = new TripTransitChoiceDTO();
				tripTransitChoiceDTO.setTripCode(tripDTO.getTripCode());
				tripTransitChoiceDTO.setTransitCode(Integer.valueOf((String)choiceTransit.get(i)));
				
				transitList.add(tripTransitChoiceDTO);
			}
		}else {
			TripTransitChoiceDTO tripTransitChoiceDTO = new TripTransitChoiceDTO();
			tripTransitChoiceDTO.setTripCode(tripDTO.getTripCode());
			tripTransitChoiceDTO.setTransitCode(Integer.valueOf((String)formDataMap.get("formData").get("transit")));
			
			transitList.add(tripTransitChoiceDTO);

		}
		System.out.println("transitList" + transitList);

		// 6-2 TRANSIT_CHOICE 테이블에 INSERT
		if(!guideService.insertTransit(transitList)) {
			System.out.println("insert Transit error");
		}
		
		// 7-1 GuideTripDTO
		GuideTripDTO guideTripDTO = new GuideTripDTO();
		guideTripDTO.setPayment(Integer.valueOf((String)formDataMap.get("formData").get("price")));
		guideTripDTO.setMinimum(Integer.valueOf((String)formDataMap.get("formData").get("minimum")));
		guideTripDTO.setMaximum(Integer.valueOf((String)formDataMap.get("formData").get("maximum")));
		guideTripDTO.setTripCode(tripDTO.getTripCode());
		
		System.out.println("guideTripDTO" + guideTripDTO);

		// 7-2 GUIDE_TRIP 테이블에 INSERT
		if(!guideService.insertGuideTrip(guideTripDTO)) {
			System.out.println("insert GuideTrip error");
		}
		
		/* OPTIONAL DATA 처리
		 * 
		 * TRIP_IMAGE, COURSE_IMAGE  
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
		 * 1. TRIP_COURSE  TripCourseDTO - 코스사진정보
		 */
		
		// 1 TripImageDTO - TRIP_IMAGE에 사용 - refCode:tripCode
		// 1-1 imageTrip 
		List<TripImageDTO> tripImageList = new ArrayList<>();
		
		if(formDataMap.get("imageData").get("imageTrip") instanceof ArrayList) {
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
		}else {
			LinkedHashMap<String, Object> tripImageListMap 
			= (LinkedHashMap<String, Object>)formDataMap.get("imageData").get("imageTrip");
			
			TripImageDTO tripIdImageDTO = new TripImageDTO();
			
			tripIdImageDTO.setImageCode((Integer)tripImageListMap.get("imageCode"));
			tripIdImageDTO.setSavedName((String)tripImageListMap.get("savedName"));
			tripIdImageDTO.setImageTypeCode((Integer)tripImageListMap.get("imageTypeCode"));
			tripIdImageDTO.setOriginName((String)tripImageListMap.get("originName"));
			tripIdImageDTO.setRefCode(tripDTO.getTripCode());
			
			tripImageList.add(tripIdImageDTO);
		}
		
		// 1-2 imageCourse
		List<LinkedHashMap<String, Object>> courseImageListMap 
		= (List<LinkedHashMap<String, Object>>)formDataMap.get("imageData").get("imageCourse");
		for(int i = 0; i < courseImageListMap.size(); i++) {
			TripImageDTO tripIdImageDTO = new TripImageDTO();
			
			tripIdImageDTO.setImageCode((Integer)courseImageListMap.get(i).get("imageCode"));
			tripIdImageDTO.setSavedName((String)courseImageListMap.get(i).get("savedName"));
			tripIdImageDTO.setImageTypeCode((Integer)courseImageListMap.get(i).get("imageTypeCode"));
			tripIdImageDTO.setOriginName((String)courseImageListMap.get(i).get("originName"));
			tripIdImageDTO.setRefCode(tripDTO.getTripCode());
			
			tripImageList.add(tripIdImageDTO);
		}
		
		System.out.println("tripImageList" + tripImageList);

		// 1-3 TRIP_IMAGE 테이블에 UPDATE
//		if(!guideService.insertTripImage(tripImageList)) {
//			System.out.println("insert TripImage error");
//		}
		
		// 2-1 TripCourseDTO
		List<TripCourseDTO> tripCourseList = new ArrayList<>();
		List<LinkedHashMap<String, Object>> courseImageMap 
		= (List<LinkedHashMap<String, Object>>)formDataMap.get("imageData").get("imageCourse");
		
		// 다중선택 -> ArrayList / 단일선택 -> String
		if(formDataMap.get("formData").get("courseTitle") instanceof ArrayList 
				&& formDataMap.get("formData").get("courseIntro") instanceof ArrayList) {
			List<String> courseTitleList = (List)formDataMap.get("formData").get("courseTitle");
			List<String> courseIntroList = (List)formDataMap.get("formData").get("courseIntro");
	
			for(int i = 0; i < courseImageMap.size(); i++) {
				TripCourseDTO tripCourseDTO = new TripCourseDTO();
				
				tripCourseDTO.setTripImageCode((Integer)courseImageMap.get(i).get("imageCode"));
				tripCourseDTO.setCourseName(courseTitleList.get(i));
				tripCourseDTO.setCourseInfo(courseIntroList.get(i));
				
				tripCourseList.add(tripCourseDTO);
			}
		} else {
			TripCourseDTO tripCourseDTO = new TripCourseDTO();
			
			tripCourseDTO.setTripImageCode((Integer)courseImageMap.get(0).get("imageCode"));
			tripCourseDTO.setCourseName((String)formDataMap.get("formData").get("courseTitle"));
			tripCourseDTO.setCourseInfo((String)formDataMap.get("formData").get("courseIntro"));
			
			tripCourseList.add(tripCourseDTO);
		}
		System.out.println("tripCourseList" + tripCourseList);

		// 2-2 TRIP_COURSE 테이블에 INSERT
		if(!guideService.insertTripCourse(tripCourseList)) {
			System.out.println("insert tripCourse error");
		}
		
		
		return null;
	}
}
