package com.gms.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.gms.web.domain.MemberDTO;
import com.gms.web.service.MemberService;

@Controller
@RequestMapping("/member")
@SessionAttributes("user")
public class MemberController {
	@Autowired MemberService memberService;
	@Autowired MemberDTO member;
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(@ModelAttribute("member") MemberDTO member) {
		System.out.println("add 진입");
		System.out.println("name is "+member.getName());
		memberService.add(member);
		return "public:member/login.tiles";
	}
	@RequestMapping("/list")
	public void list() {}
	@RequestMapping("/search")
	public void search() {}
	@RequestMapping("/retrieve/{page}")
	public String retrieve(@ModelAttribute("member") MemberDTO member,
			Model model,
			@PathVariable String page) {
		System.out.println("리트리버왔다 네임 : "+member.getName());
		//model.addAttribute("user", member);
		//업데이트로 갈지 딜리트로갈지 
		return "auth:member/"+page+".tiles";
	}
	@RequestMapping("/count")
	public void count() {}
	
	@RequestMapping("/modify")
	public String modify(Model model,
			@ModelAttribute("member") MemberDTO member,
			@ModelAttribute("user") MemberDTO user) {
		System.out.println("modify user : "+user.getTeamid()
		+" 역할:"+user.getRoll()
		+" 과목:"+user.getSubject()
		+" 비번:"+user.getPassword()
		+" 아이디:"+user.getUserid());
		//널값일경우???
		//변경된값을 유저에 변경하고 넘겨야함
		//model.addAttribute("user", member); // 수정된 데이터값 저장
		memberService.modify(user);
		System.out.println("modify성공?");
		return "auth:member/retrieve.tiles";
	}
	@RequestMapping("/remove")
	public String remove(@ModelAttribute MemberDTO member,
			@ModelAttribute("user") MemberDTO user,
			SessionStatus status,
			Model model) {
		memberService.remove(user);
		status.setComplete();
		return "home:common/content.tiles";
	}
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(@ModelAttribute MemberDTO member,
			Model model) {
		/*@PathVariable String userid,
		@PathVariable String password*/
		String path = "";
		System.out.println("login들어옴 ");
		if(memberService.login(member)) {
			model.addAttribute("user", 
					memberService.retrieve(member.getUserid()));
			path = "auth:member/retrieve.tiles";
			System.out.println("로그인 성공");
		}else {
			System.out.println("로그인 실패");
			path = "public:member/login.tiles";
		}
		return path;
	}
	@RequestMapping("/logout")
	public String logout(@ModelAttribute MemberDTO member,
			@ModelAttribute MemberDTO user,
			SessionStatus status,
			Model model) {
		status.setComplete();
		return "home:common/content.tiles";
		
	}
	@RequestMapping("/fileupload")
	public void fileupload() {}
}
