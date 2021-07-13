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
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
import com.maximusteam.tripfulaxel.user.mypage.model.dto.ImageDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.InquiryDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.JoinTripListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.ReqImageDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.ReqListDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.ReviewDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.dto.TestDTO;
import com.maximusteam.tripfulaxel.user.mypage.model.service.UserMypageService;
import com.maximusteam.tripfulaxel.user.mypage.model.service.UserMypageServiceImpl;

@Controller
@RequestMapping("/user/mypage/*")
public class UserMyPageController {
	
	private final UserMypageService userMypageService;
	private final BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public UserMyPageController(UserMypageService userMypageService, BCryptPasswordEncoder passwordEncoder) {
		super();
		this.userMypageService = userMypageService;
		this.passwordEncoder = passwordEncoder;
	}
	
	@GetMapping(value = { "mypageTab1", "/"})
	public String selectJoinList(Model model, HttpSession session) {
		
		UserDTO userdto = (UserDTO) session.getAttribute("loginUser");
		int id = userdto.getUserCode();
		System.out.println(id);
		
		List<JoinTripListDTO> joinList = userMypageService.selectJoinList(id);
//		List<JoinTripListDTO> joinList2 = userMypageService.selectJoinList2(id);
//		for(int i = 0; i<joinList.size();i++) {
//			joinList.get(i).setCountUser(joinList2.get(i).getCountUser());
//			if(joinList.get(i).getStatus().getTripCancelYN().equals("Y") && Date (joinList.get(i).getStatus().getTripEndDate()) > today) {
//				joinList.get(i).getStatus().setStatus("참여대기중");
//			}
//		}
		
		model.addAttribute("joinList",joinList);
		return "user/mypage/mypageTab1";
	}
	
//	@GetMapping("tab1Detail")
//	public void
	
	@GetMapping("mypageTab2")
	public String selectGuideTripList(Model model, HttpSession session) {
		
		UserDTO userdto = (UserDTO) session.getAttribute("loginUser");
		int id = userdto.getUserCode();
		System.out.println(id);
		
		List<GuideTripApplyDTO> gApplyList = userMypageService.selectguideTripList(id);
		
		System.out.println(gApplyList);
		model.addAttribute("gApplyList",gApplyList);
		
		return "user/mypage/mypageTab2";
	}
	
	@GetMapping("mypageTab3")
	public String selectMyjoinList(Model model, HttpSession session) {
		
		UserDTO userdto = (UserDTO) session.getAttribute("loginUser");
		int id = userdto.getUserCode();
		System.out.println(id);
		
		List<JoinTripListDTO> myjoinList = userMypageService.selectMyJoinList(id);
		List<JoinTripListDTO> myjoinList2 = userMypageService.selectMyJoinList2(id);
		for(int i = 0; i<myjoinList.size();i++) {
			myjoinList.get(i).setCountUser(myjoinList2.get(i).getCountUser());
		}
		model.addAttribute("myjoinList",myjoinList);
		
		return "user/mypage/mypageTab3";
	}
	
	@GetMapping("mypageTab4")
	public String selectMyjoinTrip(Model model, HttpSession session) {
		
		UserDTO userdto = (UserDTO) session.getAttribute("loginUser");
		int id = userdto.getUserCode();
		System.out.println(id);
		
		List<GuideTripApplyDTO> myTreview = userMypageService.selectMyTripReviewList(id);
		
		System.out.println(myTreview);
		model.addAttribute("myTreview",myTreview);
		
		
		return "user/mypage/mypageTab4";
	}
	
	@GetMapping("mypageTab5")
	public String modifyUserAccount(Model model, HttpSession session) {
		
		UserDTO userdto = (UserDTO) session.getAttribute("loginUser");
		int id = userdto.getUserCode();
		System.out.println(id);
		
		UserDTO user = userMypageService.selectUserInfo(id);
		
		model.addAttribute("user",user);
		
		return "user/mypage/mypageTab5";
	}
	
	@PostMapping("update/userinfo")
	public String updateUserInfo(Model model, HttpSession session, @ModelAttribute("user") UserDTO user) {
		
		UserDTO userdto = (UserDTO) session.getAttribute("loginUser");
		int id = userdto.getUserCode();
		System.out.println(id);
		user.setUserCode(id);
		user.setUserPwd(passwordEncoder.encode(user.getUserPwd()));
		
		int result = userMypageService.updateUserPwd(user);
		
		
		
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
		System.out.println(multiFiles==null);
		System.out.println(multiFiles.isEmpty());
		System.out.println(multiFiles);
		System.out.println("----------------------------------");
		System.out.println(multiFiles.get(0));
		System.out.println("----------------------------------");
		System.out.println(multiFiles.size());
		System.out.println("----------------------------------");


		if(multiFiles.size() == 1) {
			UserDTO userdto = (UserDTO) session.getAttribute("loginUser");
			int id = userdto.getUserCode();
			System.out.println(id);
			req.setReqFrom(id);
			
			Map<String, Object> map = new HashMap<String, Object>();
			
			map.put("req", req);
			map.put("id", id);
			
			int result = userMypageService.insertRequest(map);
			System.out.println("==============   null인경우   =============================");
			System.out.println("result : " + result);
			System.out.println("===========================================");
			
			
			
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
			
			System.out.println("===========================================");
			System.out.println("result : " + result);
			System.out.println("===========================================");
			
			if(result > 0) {
				System.out.println("godd");
				int code = userMypageService.selectRepPK();
				System.out.println("CODE : " + code);
				for(int i= 0 ;i<map.size();i++) {
				req.getReqImage().get(i).setCode(code);
				}
				map.put("req", req);
				
				userMypageService.insertReqImg(map);
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
	
	@GetMapping("mypageTab8")
	public String selectInquiry(Model model,HttpSession session) {
		
		UserDTO userdto = (UserDTO) session.getAttribute("loginUser");
		int id = userdto.getUserCode();
		System.out.println(id);
		
		List<InquiryDTO> inqdto = userMypageService.selectInquiry(id);
		
		for(int i = 0; i<inqdto.size();i++) {
			if(inqdto.get(i).getInqYN().equals("N")){
				inqdto.get(i).setInqYN("문의 확인중");
			} else {
				inqdto.get(i).setInqYN("답변완료");
			}
		}
		
		model.addAttribute("inqdto",inqdto);
		
		return "user/mypage/mypageTab8";
	}
	
	

  @PostMapping("insert/review")
  public String insertReview(@RequestParam List<MultipartFile> multiFiles, Model model, HttpServletRequest
  request,HttpSession session, @ModelAttribute("review") ReviewDTO review) {
	  
 /********************************* 
  MultipartFile 타입의 변수만 매개변수로 선언하면 파일에 대한 처리를 할 수
  있다.*************************************/
  
//  multipart로 전송된 request에 대한 인코딩 처리를 해주어야 하는데 일반 인코딩 필터보다 구현하기 힘들다. 스프링에서 인코딩
//  필터를 제공한다. --> web.xml에 필터를 등록
  
  System.out.println("===============================================");
  System.out.println("multiFile : " + multiFiles);
  System.out.println("===============================================");
  System.out.println("review : " + review);
  System.out.println("===============================================");
  
  
  if(multiFiles.size()==1) { UserDTO userdto = (UserDTO)
  session.getAttribute("loginUser"); int id = userdto.getUserCode();
  System.out.println(id);
  
  Map<String, Object> map = new HashMap<String, Object>();
  
  map.put("review", review); map.put("id", id);
  
  int result = userMypageService.insertReview(map); }
  
  
  else {
//	  파일을 저장할 경로 설정
//  RootContext : request.getSession().getServletContext() + getRealPath("이 부분을 찾는다.")
  String root =  request.getSession().getServletContext().getRealPath("resources");
  
  String filePath = root + "\\uploadFiles";
  
  // 폴더경로만들어주기 자동생성
  File mkdir = new File(filePath);
  if(!mkdir.exists()) { mkdir.mkdirs(); }
  
  List<Map<String,String>> files = new ArrayList<>();
  for(int i = 0 ;i<multiFiles.size();i++) {
  
//  파일명 변경 처리 
  String originFileName = multiFiles.get(i).getOriginalFilename();
  String ext = originFileName.substring(originFileName.lastIndexOf("."));
  String saveName = UUID.randomUUID().toString().replace("-", "") + ext;
  
//  파일에 관한 정보 추출 후 보관
  Map<String, String> file = new HashMap<String, String>();
  file.put("originFileName", originFileName); file.put("saveName", saveName);
  file.put("filePath", filePath);
  
  files.add(file); 
  }
  
//  파일을 저장한다.
  UserDTO userdto = (UserDTO) session.getAttribute("loginUser"); int
  id = userdto.getUserCode(); System.out.println(id);
  
  List<ImageDTO> revimglist = new ArrayList<ImageDTO>();
  
  for(int i = 0; i<files.size(); i++) {
			  ImageDTO revimgdto = new ImageDTO();
		  revimgdto.setSaveName(files.get(i).get("saveName"));
		  revimgdto.setOrignName(files.get(i).get("originFileName"));
		  
		  revimglist.add(revimgdto);
  }
  
  review.setReviewImgList(revimglist);
  
  Map<String, Object> map = new HashMap<String, Object>();
  
  int jtaCode = userMypageService.selectjtaCode(id);
  review.setJtaCode(jtaCode);
  
  map.put("review", review);
  map.put("id", id);
  
  int result = userMypageService.insertReview(map);
  
  System.out.println(
  "=======================================================================");
  System.out.println("result : "+result);
  
  System.out.println(
  "========================================================================");
  
  
  if(result>0) {
  
  int revimgCode = userMypageService.selectRevPK(map);
  for(int i = 0; i<review.getReviewImgList().size(); i++) {
  review.getReviewImgList().get(i).setCode(revimgCode); }
  
  int result2 = userMypageService.insertrevImg(map);
  System.out.println("result2 : "+result2);
  
  }
  System.out.println("========================================================================");
  try { for(int i = 0; i<multiFiles.size(); i++) {
  
  Map<String, String> file = files.get(i);
  
  multiFiles.get(i).transferTo(new File(filePath + "\\" + file.get("saveName")));
  
  } model.addAttribute("message","파일 업로드 성공!~!!!!"); } catch (Exception e) {
  e.printStackTrace();
  
//  실패시 파일 삭제
  for(int i = 0; i<multiFiles.size(); i++) {
  
  Map<String, String> file = files.get(i);
  
  new File(filePath + "\\" + file.get("saveName")).delete(); }
  model.addAttribute("message","파일 업로드 실패!!"); }
  
  
  } return "user/mypage/mypageTab2"; }
  
  }
 