package com.maximusteam.tripfulaxel.guide.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/imageUpload/*")
public class ImageUploadController {

	@RequestMapping(value = "/guide", method= RequestMethod.POST)
	@ResponseBody
	public ModelAndView insertImages(ModelAndView mv,
			HttpServletRequest request,
			@RequestParam("imageFile") List<MultipartFile> multipartFiles,
			@RequestParam("imageCategory") String imageCategory
			) {
		
//		System.out.println(multipartFiles.size());
//		
//		for(MultipartFile mf : multipartFiles) {
//			System.out.println(imageCategory);
//			System.out.println(mf.getResource().getFilename());
//		}
		
		
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
		
		/*
		 * 리스트로 받기 때문에 for-loop을 통해 개별적으로 저장을 한다.
		 * */
		for(int i = 0; i < multipartFiles.size(); i++) {
			
			String originFileName = "";
			String ext = "";
			String savedName = "";
			

			if(multipartFiles.get(i).getSize() > 0) {
				originFileName = multipartFiles.get(i).getOriginalFilename();
				
				ext = originFileName.substring(originFileName.lastIndexOf("."));
				
				SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMDDHHmmss-" + i);
                Calendar calendar = Calendar.getInstance();
				savedName = simpleDateFormat.format(calendar.getTime());
				
				try {
					multipartFiles.get(i).transferTo(new File(filePath + File.separator + savedName + ext));
				} catch (IOException e) {
					e.printStackTrace();
					
					new File(filePath + File.separator + savedName + ext).delete();
					System.out.println("사진 업로드 실패");
//					throw new MemberRegistException("사진 업로드 때문에 회원 가입 실패함!");
				}
			}
			
		}
		

//		
		
		
		
		
		return mv;
	}
}
