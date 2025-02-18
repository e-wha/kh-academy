package org.big.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDto {
	
	private int boardIdx;
	private String title;
	private String content;
	private int hit_cnt;
	private Date creator_datetime;
	private String creator_id;
	private Date updated_datetime;
	private String updator_id;
	private String deleted_yn;
}