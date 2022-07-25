package com.txt.borad;

public class BoardVO {
	private int boardId;
	private String title;
	private String content;
	private String writer;
	private String createDate;
	private int cnt;

	public BoardVO() {
	}

	public BoardVO(int boardId ,String tilte, String content, String writer, String createDate, int cnt) {
		super();
		this.boardId=boardId;
		this.title = tilte;
		this.content = content;
		this.writer = writer;
		this.createDate = createDate;
		this.cnt = cnt;
	}
	
	public int getBoardId() {
		return boardId;
	}
	
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String tilte) {
		this.title = tilte;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
}
