package com.maximusteam.tripfulaxel.guide.controller;

import java.util.List;

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
			@RequestParam("imageFile") List<MultipartFile> multipartFiles,
			@RequestParam("imageCategory") String imageCategory
			) {
		
		System.out.println(multipartFiles.size());
		
		for(MultipartFile mf : multipartFiles) {
			System.out.println(imageCategory);
			System.out.println(mf.getResource().getFilename());
		}
		
		return mv;
	}
}
