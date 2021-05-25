package com.douzone.guestbook01.dao.test;

import java.util.List;

import com.douzone.guestbook01.dao.GuestbookDao;
import com.douzone.guestbook01.vo.GuestbookVo;

public class GuestbookDaoTest {

	public static void main(String[] args) {
		//insertTest();
		findAllTest();
		//deleteTest();
		findAllTest();
	}

	private static void deleteTest() {
GuestbookVo vo = new GuestbookVo();
		
		vo.setName("원식이");
		vo.setPassword("2222");
		new GuestbookDao().delete(vo);
	}

	private static void findAllTest() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
	}

	private static void insertTest() {
		GuestbookVo vo = new GuestbookVo();
		
		vo.setName("원식이");
		vo.setPassword("2222");
		vo.setMessage("안녕?");
		new GuestbookDao().insert(vo);
		
	}

}
