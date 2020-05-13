package com.nmnm.gms;

public class PagingInfo {
  // 보고있는 페이지에서 시작번호 ( 예) 10개씩이라고하면 1 , 11 , 21 , 31 ..... )
  private int startPage;
  // 보고있는 페이지에서 끝번호 ( 예) 10개씩이라고하면 10, 20, 30 ,40 ,50 .....)
  private int endPage;
  // 이번페이지가 있는지 다음페이지가 있는지 확인
  private boolean prev, next;
  private int lastPage;
  // 전체 게시글 수
  private int total;
  // 요청이 온 페이지의 페이지번호와 몇개씩 보고 싶은지
  private Criteria cri;


  public PagingInfo(Criteria cri, int total) {
    this.cri = cri; // 요청 정보
    this.total = total; // 전체 게시글 수

    this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10;
    this.startPage = this.endPage - 9;
    int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));
    lastPage = realEnd;
    if (realEnd < this.endPage) {
      this.endPage = realEnd;
    }
    this.prev = this.startPage > 1;
    this.next = this.endPage < realEnd;
  }



  @Override
  public String toString() {
    return "PagingInfo [startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev
        + ", next=" + next + ", lastPage=" + lastPage + ", total=" + total + ", cri=" + cri + "]";
  }

  public int getStartPage() {
    return startPage;
  }

  public void setStartPage(int startPage) {
    this.startPage = startPage;
  }

  public int getEndPage() {
    return endPage;
  }

  public void setEndPage(int endPage) {
    this.endPage = endPage;
  }

  public boolean isPrev() {
    return prev;
  }

  public void setPrev(boolean prev) {
    this.prev = prev;
  }

  public boolean isNext() {
    return next;
  }

  public void setNext(boolean next) {
    this.next = next;
  }

  public int getLastPage() {
    return lastPage;
  }

  public void setLastPage(int lastPage) {
    this.lastPage = lastPage;
  }

  public int getTotal() {
    return total;
  }

  public void setTotal(int total) {
    this.total = total;
  }

  public Criteria getCri() {
    return cri;
  }

  public void setCri(Criteria cri) {
    this.cri = cri;
  }
}
