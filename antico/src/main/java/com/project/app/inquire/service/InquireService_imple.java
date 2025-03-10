package com.project.app.inquire.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.app.comment.domain.CommentVO;
import com.project.app.inquire.domain.InquireVO;
import com.project.app.inquire.model.InquireDAO;

@Service
public class InquireService_imple implements InquireService {

	@Autowired
	private InquireDAO dao;

	// 문의 내역 조회
	@Override
	public List<InquireVO> inquire_list() {
		List<InquireVO> inquire_list = dao.inquire_list();
		return inquire_list;
	}
	
	// 파일첨부가 없는 경우의 1:1문의
	@Override
	public int add(InquireVO inquirevo) {
		int n = dao.add(inquirevo);
		return n;
	}

	// 파일첨부가 있는 경우의 1:1문의
	@Override
	public int add_withFile(InquireVO inquirevo) {
		int n = dao.add_withFile(inquirevo); // 첨부파일이 있는 경우
		return n;
	}

	// 문의 상세보기
	@Override
	public InquireVO inquire_detail(Map<String, String> paraMap) {
		InquireVO inquirevo = dao.inquire_detail(paraMap); // 글 1개 조회하기
		return inquirevo;
	}

	// 답변 조회
	@Override
	public List<CommentVO> inquire_comment(String pk_inquire_no) {
		List<CommentVO> comment_list = dao.get_inquire_comment(pk_inquire_no);		
		return comment_list;
	}



}
