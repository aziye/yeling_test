package com.yang.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yang.dao.WharfMapper;
import com.yang.model.Wharf;
import com.yang.service.WharfService;

/**
 * 
 * @author xingMiao
 *
 */
@Service
public class WharfServiceImpl implements WharfService{
	@Autowired
	private WharfMapper wharf;

	@Override
	public int deleteByPrimaryKey(Integer wharfid) {
		// TODO Auto-generated method stub
		return wharf.deleteByPrimaryKey(wharfid);
	}

	@Override
	public int insert(Wharf record) {
		// TODO Auto-generated method stub
		return wharf.insert(record);
	}

	@Override
	public int insertSelective(Wharf record) {
		// TODO Auto-generated method stub
		return wharf.insertSelective(record);
	}

	@Override
	public Wharf selectByPrimaryKey(Integer wharfid) {
		// TODO Auto-generated method stub
		return wharf.selectByPrimaryKey(wharfid);
	}

	@Override
	public int updateByPrimaryKeySelective(Wharf record) {
		// TODO Auto-generated method stub
		return wharf.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Wharf record) {
		// TODO Auto-generated method stub
		return wharf.updateByPrimaryKey(record);
	}

	@Override
	public List<Wharf> findAll() {
		// TODO Auto-generated method stub
		return wharf.findAll();
	}

}
