package com.nmnm.gms.service;

import java.util.List;
import com.nmnm.gms.Pagination;
import com.nmnm.gms.domain.Co;

public interface CoService {

  void add(Co co) throws Exception;

  List<Co> list() throws Exception;

  List<Co> list(Pagination pagination) throws Exception;

  int delete(int coNo) throws Exception;

  Co get(int coNo) throws Exception;

  int update(Co co) throws Exception;

  List<Co> search(String keyword) throws Exception;

  List<Co> categorySearch(String keyword2) throws Exception;

  // 페이징
  Co getCoContent(int bid) throws Exception;

  public int listCnt() throws Exception;

  // public List<Co> getCoList(Pagination pagination) throws Exception;
}