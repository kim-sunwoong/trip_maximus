package com.maximusteam.tripfulaxel.guide.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.maximusteam.tripfulaxel.guide.model.dto.GuideImageDTO;
import com.maximusteam.tripfulaxel.guide.model.service.GuideService;

@Controller
@RequestMapping("/imageUpload/*")
public class ImageUploadController {

	@Inject
	private final GuideService guideService;
	
	public ImageUploadController(GuideService guideService) {
		this.guideService = guideService;
	}
	
	@RequestMapping(value = "/guide", method= RequestMethod.POST)
	@ResponseBody
	public ModelAndView insertImages(ModelAndView mv,
			HttpServletRequest request,
			HttpSession session,
			@RequestParam("imageFile") List<MultipartFile> multipartFiles,
			@RequestParam("imageCategory") String imageCategory
			) {
		
		List<GuideImageDTO> imageList = new ArrayList<>();
		
		// 서버에 사진 저장
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		/* 선택된 사진에 따라 저장위치 변경 분기 처리
		 *  case 1. 가이드 신분증, 이미지, 자격증 -> resources/images/guide
		 *	case 2. 여행 사진, 코스 사진 -> resources/images/trip/guidetrip에 저장
		 */
		String filePath;
		if( imageCategory.equals("imageID") || imageCategory.equals("imageFace") || imageCategory.equals("imageCerti") ) {
			// case 1
			filePath = root + File.separator +"images" + File.separator +"guide";
		}else {
			// case 2
			filePath = root + File.separator + "images" + File.separator + "trip"+ File.separator +"guidetrip";
		}
		
		System.out.println(filePath);
			
		File mkdir = new File(filePath);
		if(!mkdir.exists()) {
			mkdir.mkdirs();
		}
		
		// DB에 사진정보 저장
		
		/*
		 * 하나의 GuideImageDTO지만
		 * DB의 GUIDE_IMAGE 테이블과 TRIP_IMAGE 테이블에 저장할 수 있도록 분기처리한다
		 * tableCode 1일 때는 GUIDE_IMAGE 테이블
		 *           2일 때는 TRIP_IMAGE 테이블 
		 * */
		int tableCode = 0;
		
		/* 리스트로 받기 때문에 for-loop을 통해 개별적으로 저장을 한다. */
		for(int i = 0; i < multipartFiles.size(); i++) {
			
			String originFileName = "";
			String ext = "";
			String savedName = "";
			
			// 파일 서버에 저장
			if(multipartFiles.get(i).getSize() > 0) {
				originFileName = multipartFiles.get(i).getOriginalFilename();
				
				ext = originFileName.substring(originFileName.lastIndexOf("."));
				
				SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMDDHHmmss-" + i);
                Calendar calendar = Calendar.getInstance();
				savedName = simpleDateFormat.format(calendar.getTime()) + ext;
				
				try {
					multipartFiles.get(i).transferTo(new File(filePath + File.separator + savedName + ext));
				} catch (IOException e) {
					e.printStackTrace();
					
					new File(filePath + File.separator + savedName + ext).delete();
					System.out.println("사진 업로드 실패");
//					throw new MemberRegistException("사진 업로드 때문에 회원 가입 실패함!");
				}
			}
			
			// 파일정보를 DB에 저장 -> DTO -> List<DTO>
			GuideImageDTO guideImage = new GuideImageDTO();
			guideImage.setSavedName(savedName);
			guideImage.setOriginName(originFileName);
			
			// session에 저장되어있는 유저정보에서 pk를 사용
//			int userCode = ((UserDTO)session.getAttribute("loginUser")).getCode();
//			guideImage.setUserCode(userCode);
			
			guideImage.setRefCode(6);// test for usercode 6
			
			/* 매개변수로 받아온 category를 통해 imagetype code 설정
			 * 코드가 겹치는것을 허용, 
			 * 이유는 trip이미지와 course이미지는 별도 테이블에 별도 imageTypeCode를 사용하기때문
			 */
			int imageTypeCode = 0;
			
			switch(imageCategory) {
				case "imageFace" :
					imageTypeCode = 1;
					tableCode = 1;
					break;
				case "imageID" :
					imageTypeCode = 3;
					tableCode = 1;
					break;
				case "imageCerti" :
					imageTypeCode = 4;
					tableCode = 1;
					break;
				case "imageTrip" :
					imageTypeCode = 1;
					tableCode = 2;
					break;
				case "imageCourse" :
					imageTypeCode = 2;
					tableCode = 2;
					break;
			}
			
			guideImage.setImageTypeCode(imageTypeCode);
			imageList.add(guideImage);
			System.out.println(imageList);
		}
		
		if(guideService.insertImage(imageList, tableCode)) {
			// DB에 사진저장 성공
			System.out.println("성공");
			System.out.println(imageList);
		}else {
			// DB에 사진저장 실패
			System.out.println("실패");
		}

		/* JSON을 만들기위한 분기처리 */
		Gson gson = new Gson();
		if(imageList.size() > 1) {
			mv.addObject("imageList", gson.toJson(imageList));
		}else {
			mv.addObject("imageList", gson.toJson(imageList.get(0)));
		}
		mv.setViewName("jsonView");
		
		return mv;
	}
}
