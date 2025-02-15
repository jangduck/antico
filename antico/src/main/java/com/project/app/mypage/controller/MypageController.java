package com.project.app.mypage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.app.mypage.service.MypageService;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value="/mypage/*")
public class MypageController {

	@Autowired
	private MypageService service;
	
	@GetMapping("mypagemain")
	public ModelAndView mypagemain(HttpServletRequest request, ModelAndView mav) {
		
	//	mav.addObject("category_detail_list", category_detail_list);
		mav.setViewName("mypage/mypage");
		return mav;
	}
	
	@GetMapping("pointcharge")
	public ModelAndView pointcharge(HttpServletRequest request, ModelAndView mav) {
		
	//	int n  = service.pointcharge(); // 결제하기를 눌렀을 경우 회원의 포인트 업데이트
		
	//	mav.addObject("n", n);
		mav.setViewName("mypage/pointcharge");
		return mav;
	}
	
	@GetMapping("sellList")
	public ModelAndView sellList(HttpServletRequest request, ModelAndView mav) {
		mav.setViewName("mypage/sellList");
		return mav;
	}
	
	@GetMapping("buyList")
	public ModelAndView buyList(HttpServletRequest request, ModelAndView mav) {
		mav.setViewName("mypage/buyList");
		return mav;
	}
	
	@GetMapping("myBank")
	public ModelAndView myBank(HttpServletRequest request, ModelAndView mav) {
		mav.setViewName("mypage/myBank");
		return mav;
	}
	
	@GetMapping("memberDelete")
	public ModelAndView memberDelete(HttpServletRequest request, ModelAndView mav) {
		mav.setViewName("mypage/memberDelete");
		return mav;
	}
	
}
