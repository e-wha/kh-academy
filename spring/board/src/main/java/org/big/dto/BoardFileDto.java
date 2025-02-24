package org.big.dto;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class BoardFileDto {
	
	private int idx;
	private int boardIdx;
	private String originalFileName;
	private String storedFilePath;
	private long fileSize;
	private LocalDateTime createdDatetime;
	private String creatorId;
}