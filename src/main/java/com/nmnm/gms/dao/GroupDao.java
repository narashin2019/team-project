package com.nmnm.gms.dao;

import java.util.List;
import com.nmnm.gms.domain.Group;

// 데이터를 저장하고 꺼내는 방식(파일, 클라우드저장소, DB 등)에 상관없이
// DAO 사용법을 통일하기 위해
// 메서드 호출 규칙을 정의한다.
//
public interface GroupDao {

  // 모임 생성
  int insert(Group group) throws Exception;

  List<Group> findAll() throws Exception;

  // 모임홈 app/moim/home=groupNo?=1 | get에 사용 
  Group findByNo(int groupNo) throws Exception;

  int update(Group group) throws Exception;

  int delete(int groupNo) throws Exception;

  List<Group> findByKeyword(String keyword) throws Exception;

  // 멤버가 가입한 모임 리스트 - 배열 0번 그룹부터 추출 해야함
  List<Group> listByJoin(int memberNo) throws Exception;
  
  // 추천 모임 리스트 - 배열 0번 그룹 부터 추출해야함
  List<Group> listByRec(String interest) throws Exception;
  
  // 신규 모임 리스트
  List<Group> listByCd() throws Exception;
}
