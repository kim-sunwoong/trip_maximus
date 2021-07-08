package com.maximusteam.tripfulaxel.user.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.maximusteam.tripfulaxel.user.model.dto.UserDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.GuideTripApplyDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.JoinTripListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.ReqImageDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.ReqListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.TestDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.service.UserMypageService;

@Controller
@RequestMapping("/user/mypage/*")
public class UserMyPageController {
	
	private final UserMypageService userMypageService;
	
	@Autowired
	public UserMyPageController(UserMypageService userMypageService) {
		this.userMypageService = userMypageService;
	}
	
	@GetMapping(value = { "mypageTab1", "/"})
	public String selectJoinList(Model model) {
		List<JoinTripListDTO> joinList = userMypageService.selectJoinList();
		List<JoinTripListDTO> joinList2 = userMypageService.selectJoinList2();
		for(int i = 0; i<joinList.size();i++) {
			joinList.get(i).setCountUser(joinList2.get(i).getCountUser());
//			if(joinList.get(i).getStatus().getTripCancelYN().equals("Y") && Date (joinList.get(i).getStatus().getTripEndDate()) > today) {
//				joinList.get(i).getStatus().setStatus("참여대기중");
//			}
		}
		
		model.addAttribute("joinList",joinList);
		return "user/mypage/mypageTab1";
	}
	

	@GetMapping("mypageTab2")
	public String selectGuideTripList(Model model) {
		
		List<GuideTripApplyDTO> gApplyList = userMypageService.selectguideTripList();
		
		System.out.println(gApplyList);
		model.addAttribute("gApplyList",gApplyList);
		
		return "user/mypage/mypageTab2";
	}
	
	@GetMapping("mypageTab3")
	public String selectMyTripReviewList(Model model) {
		List<JoinTripListDTO> myjoinList = userMypageService.selectMyJoinList();
		List<JoinTripListDTO> myjoinList2 = userMypageService.selectMyJoinList2();
		for(int i = 0; i<myjoinList.size();i++) {
			myjoinList.get(i).setCountUser(myjoinList2.get(i).getCountUser());
		}
		model.addAttribute("myjoinList",myjoinList);
		
		return "user/mypage/mypageTab3";
	}
	
	@GetMapping("mypageTab4")
	public String selectMyjoinTrip(Model model) {
		
		List<GuideTripApplyDTO> myTreview = userMypageService.selectMyTripReviewList();
		
		System.out.println(myTreview);
		model.addAttribute("myTreview",myTreview);
		
		
		return "user/mypage/mypageTab4";
	}
	
	@GetMapping("mypageTab5")
	public String modifyUserAccount(Model model) {
		
		
		 
		return "user/mypage/mypageTab5";
	}
	
	@GetMapping("mypageTab6")
	public String selectRequestList(Model model, HttpSession session) {
		

		UserDTO userdto = (UserDTO) session.getAttribute("loginUser");
		int id = userdto.getUserCode();
		System.out.println(id);
		
		List<ReqListDTO> reqList = userMypageService.selectRequestList(id);
		for(int i = 0; i<reqList.size();i++) {
			if(reqList.get(i).getReqYN().equals("N")){
				reqList.get(i).setReqYN("처리중");
			} else {
				reqList.get(i).setReqYN("처리완료");
			}
		}
		System.out.println(reqList);
		model.addAttribute("reqList",reqList);
		
		return "user/mypage/mypageTab6";
	}
	@GetMapping("mypageTab7")
	public String insertRequest(Model model,HttpSession session) {
		
		return "user/mypage/mypageTab7";
	}
	
	@GetMapping("test2")
	public String test(Model model) {
		
		List<TestDTO> test = userMypageService.test();
		System.out.println(test);
		model.addAttribute("test",test);
		
		return "user/mypage/test2";
	}
	
	
	@PostMapping("insert/Request")
	public String insertRequest(@RequestParam List<MultipartFile> multiFiles, HttpServletResponse response,
				HttpServletRequest request, Model model,HttpSession session,@ModelAttribute("req") ReqListDTO req) {
		
		System.out.println("----------------------------------");
		System.out.println(multiFiles);
		System.out.println(req);
		if(req.getReqImage()==null) {
			UserDTO userdto = (UserDTO) session.getAttribute("loginUser");
			int id = userdto.getUserCode();
			System.out.println(id);
			req.setReqFrom(id);
			
			Map<String, Object> map = new HashMap<String, Object>();
			
			map.put("req", req);
			map.put("id", id);
			
			int result = userMypageService.insertRequest(map);
		}
		else {
		/* 파일을 저장할 경로 설정 */
		/* RootContext : request.getSession().getServletContext() + getRealPath("이 부분을 찾는다.") */
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String filePath = root + "\\uploadFiles";
		
		 // 폴더경로만들어주기 자동생성
		File mkdir = new File(filePath);
		if(!mkdir.exists()) {
			mkdir.mkdirs();
		}
		
		List<Map<String,String>> files = new ArrayList<>();
		for(int i = 0 ; i<multiFiles.size();i++) {
			
			/* 파일명 변경 처리 */
			String originFileName = multiFiles.get(i).getOriginalFilename();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String saveName = UUID.randomUUID().toString().replace("-", "") + ext;
			
			/* 파일에 관한 정보 추출 후 보관*/
			Map<String, String> file = new HashMap<String, String>();
			file.put("originFileName", originFileName);
			file.put("saveName", saveName);
			file.put("filePath", filePath);
			
			files.add(file);
		}
		
		/* 파일을 저장한다. */
		try {
			System.out.println("=================================================");
			UserDTO userdto = (UserDTO) session.getAttribute("loginUser");
			int id = userdto.getUserCode();
			System.out.println(id);
			req.setReqFrom(id);
			
			System.out.println("=================================================");
			System.out.println(req);
			
			System.out.println(files);
			System.out.println(files.size());
			
			if(req.getReqTo() == 0) {
				req.setReqType(5);
			}
			
			List<ReqImageDTO> reqimglist = new ArrayList<ReqImageDTO>();
			for(int i = 0; i<files.size(); i++) {
				ReqImageDTO reqimgdto = new ReqImageDTO();
				reqimgdto.setSaveName(files.get(i).get("saveName"));
				reqimgdto.setOrignName(files.get(i).get("originFileName"));
				
				reqimglist.add(reqimgdto);
			}
			req.setReqImage(reqimglist);
			
			System.out.println(req);
			
			/* 넘겨줄때는 무조건 한개의 매개변수만 가능하다 맵 또는 리스트를 활용하자 */
			
			Map<String, Object> map = new HashMap<String, Object>();
			
			map.put("req", req);
			map.put("id", id);
			
			int result = userMypageService.insertRequest(map);
			
			if(result > 0) {
				try {
					response.setCharacterEncoding("UTF-8");
					response.getWriter().print("여행 문의가 등록 되었습니다.");
				} catch (IOException e) {
					e.printStackTrace();
				}
			} else {
				System.out.println("여행 문의 등록 실패!");
			}
			
			
			for(int i = 0; i<multiFiles.size(); i++) {
				
				Map<String, String> file = files.get(i);
				
				multiFiles.get(i).transferTo(new File(filePath + "\\" + file.get("saveName")));

			}
			model.addAttribute("message","파일 업로드 성공!~!!!!");
		} catch (Exception e) {
			e.printStackTrace();
			
			/* 실패시 파일 삭제 */
			for(int i = 0; i<multiFiles.size(); i++) {
			
			Map<String, String> file = files.get(i);
			
			new File(filePath + "\\" + file.get("saveName")).delete();
			}
			model.addAttribute("message","파일 업로드 실패!!");
		}
		}
		return "user/mypage/mypageTab7";
	}
	
	
	
	
}
