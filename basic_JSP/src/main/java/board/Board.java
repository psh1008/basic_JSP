package board;

public class Board {
    int no; // 게시글 번호
    String writer; //작성자
    String subject;//제목
    String contents;//내용
    String regDate;//작성일
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public Board(int no, String writer, String subject, String contents, String regDate) {
		super();
		this.no = no;
		this.writer = writer;
		this.subject = subject;
		this.contents = contents;
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "Board [no=" + no + ", writer=" + writer + ", subject=" + subject + ", contents=" + contents
				+ ", regDate=" + regDate + "]";
	}
    
    
}