package com.maximusteam.tripfulaxel;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Date;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;

@Controller
@RequestMapping("/*")
public class MainController {

	@GetMapping(value={"/", "main"})
	public String main(){
        return "user/main/main";
	}
	
	@GetMapping("jeju")
	@ResponseBody
	public ModelAndView searchJejuData(ModelAndView mv,HttpServletResponse response) throws IOException {
		response.setContentType("application/json; charset=UTF-8");
		
		StringBuilder urlBuilder = new StringBuilder("http://api.visitkorea.or.kr/openapi/service/rest/PhotoGalleryService/gallerySearchList"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=qiBMch2XLyGzzmlUaWQ1%2BB6laTjpanQ1YGhlYjwKsoT%2FJ40Nx6%2FPAGc331orJarrVQq35y5ojNT4jNnwal8E1A%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8")); /*IOS(아이폰), AND(안드로이드), WIN(윈도우폰),ETC(WEB이나 기타 등등)*/
        urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("TripfulAxel", "UTF-8")); /*서비스명=어플명*/
        urlBuilder.append("&" + URLEncoder.encode("arrange","UTF-8") + "=" + URLEncoder.encode("A", "UTF-8")); /*A=촬영일, B=제목, C=수정일, D=조회수*/
        urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); 
        urlBuilder.append("&" + URLEncoder.encode("keyword","UTF-8")+ "=" + URLEncoder.encode("제주", "UTF-8"));

        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
           rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
           rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        
        StringBuilder sb = new StringBuilder();
        String line;
        
        while ((line = rd.readLine()) != null) {
            sb.append(line);
            System.out.println(sb.toString());
        }
       
        rd.close();
        conn.disconnect();
        mv.addObject("jejuData", sb.toString());
        mv.setViewName("jsonView");
        
        return mv;
	}
	
	@GetMapping("insertGuide")
	public String insertGuide(Model model) {
		/* 로그인이 되었다는 가정하에 기능 구현을 위한 세션에 로그인정보 집어넣기 */
		UserDTO user = new UserDTO(1,"차진서", "010-9882-1912", "1234", "19920504", "남자", 
				"up1912@gmail.com", "2021-06-26",0,"N");

		model.addAttribute("loginMember", user);
		
		return "user/main/insertGuide";
	}

}
