package com.shop.app.admin.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.app.admin.service.AdminService;
import com.shop.app.member.entity.Member;
import com.shop.app.servicecenter.inquiry.entity.Question;
import com.shop.app.member.entity.MemberRole;
import com.shop.app.member.entity.Subscribe;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Validated
@RequestMapping("/admin")
@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("/admin.do")
	public void admin() {}
	
	@GetMapping({"/adminMemberList.do", "/adminSubscribeList.do"})
	public void adminMemberList(@RequestParam(defaultValue = "1") int page,
			Model model) {
		
		int limit = 10;
		Map<String, Object> params = Map.of(
				"page", page,
				"limit", limit
			);
		// MemberDetails로 바꿔야댐
		List<Member> members = adminService.adminMemberList(params);
		// log.debug("members = {}", members);
		
		// EnumTypeHandler 사용하여 enum 값 매핑
	    for (Member member : members) {
	        String roleString = member.getMemberRole().toString(); // 데이터베이스에서 받은 열 값
	        MemberRole memberRole = MemberRole.valueOf(roleString); // Enum 값으로 변환
	        
	        String subscribeString = member.getSubscribe().toString(); 
	        Subscribe subscribe = Subscribe.valueOf(subscribeString); 
	        
	        
	        member.setMemberRole(memberRole); // 변환된 Enum 값을 Member 객체에 설정
	        member.setSubscribe(subscribe);
	    }
		
		model.addAttribute("members", members);
	}
	

	// 관리자 1:1 문의 전체 내역 조회 (예라)
	@GetMapping("/adminQuestionist.do")
	public void adminQuestionist(Question question, Model model) {
		List<Question> questions = adminService.findQuestionAll(question);
		model.addAttribute("questions", questions);
	}

	@GetMapping("/adminMemberSearchByNameOrId.do")
	public String adminMemberSearchByNameOrId(
	        @RequestParam(required = false) String searchKeyword,
	        Model model) {

	    if (searchKeyword != null && !searchKeyword.isEmpty()) {
	        List<Member> members = adminService.adminMemberSearchByNameOrId(searchKeyword);

	        for (Member member : members) {
		        String roleString = member.getMemberRole().toString(); 
		        MemberRole memberRole = MemberRole.valueOf(roleString); 
		        
		        String subscribeString = member.getSubscribe().toString(); 
		        Subscribe subscribe = Subscribe.valueOf(subscribeString);
		        
		        member.setMemberRole(memberRole); 
		        member.setSubscribe(subscribe);
		    }

	        model.addAttribute("members", members);
	    }
	    return "admin/adminMemberList";
	}
	
	@GetMapping("/adminSubscribeSearchByNameOrId.do")
	public String adminSubscribeSearchByNameOrId(
	        @RequestParam(required = false) String searchKeyword,
	        Model model) {

	    if (searchKeyword != null && !searchKeyword.isEmpty()) {
	        List<Member> members = adminService.adminMemberSearchByNameOrId(searchKeyword);
	        List<Member> subscribedMembers = new ArrayList<>();
	        for (Member member : members) {
		        String roleString = member.getMemberRole().toString(); 
		        MemberRole memberRole = MemberRole.valueOf(roleString); 
		        
		        String subscribeString = member.getSubscribe().toString(); 
		        Subscribe subscribe = Subscribe.valueOf(subscribeString);
		        
		        member.setMemberRole(memberRole); 
		        member.setSubscribe(subscribe);
	        
		        if (member.getSubscribe() == Subscribe.Y) {
	                subscribedMembers.add(member);
		        }
	        }
	        model.addAttribute("members", subscribedMembers);
	    }
	    return "admin/adminSubscribeList";
	}
	

	@GetMapping("/adminOrderList.do")
	public void adminOrderList() {}
	
	@GetMapping("/adminProductList.do")
	public void adminProductList() {}
	
	@GetMapping("/adminStatistics.do")
	public void adminStatistics() {}
	
	

}



