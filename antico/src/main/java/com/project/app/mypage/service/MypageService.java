package com.project.app.mypage.service;

import java.util.Map;


public interface MypageService {

    // 탈퇴테이블 insert
	int delete_submit(Map<String, String> paraMap);

	// 결제하기를 눌렀을 경우 회원의 포인트 업데이트
	int pointcharge(Map<String, String> paraMap);
}
