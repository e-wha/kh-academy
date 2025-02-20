package org.big.service;

import java.util.List;

import org.big.dto.BoardDto;
import org.big.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Override
	public List<BoardDto> selectBoardList() throws Exception {
		// TODO Auto-generated method stub
		return boardMapper.selectBoardList();
	}
	
	@Override
	public void insertBoard(BoardDto board) throws Exception {
		// TODO Auto-generated method stub
		boardMapper.insertBoard(board);
	}
	
	@Override
	public void updateHitCount(int boardIdx) throws Exception {
		// TODO Auto-generated method stub
		boardMapper.updateHitCount(boardIdx);
	}
	
	@Override
	public BoardDto selectBoardDetail(int boardIdx) throws Exception {
		// TODO Auto-generated method stub
		BoardDto board = boardMapper.selectBoardDetail(boardIdx);
		return board;
	}
	
	@Override
	public void updateBoard(BoardDto board) throws Exception {
		// TODO Auto-generated method stub
		boardMapper.updateBoard(board);
	}
	
	@Override
	public void deleteBoard(int boardIdx) throws Exception {
		// TODO Auto-generated method stub
		boardMapper.deleteBoard(boardIdx);
	}
}
