package com.yang.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yang.dao.LoadingArmMapper;
import com.yang.model.LoadingArm;
import com.yang.service.ILoadingArmService;

/**
 *  
 * @author <a href="mailto:xingm@vt08.com">xingMiao</a>
 * @version 1.0, 2017年12月28日
 */
@Service
public class LoadingArmServiiceImpl implements ILoadingArmService {
	@Autowired
	private LoadingArmMapper loadingdao;
	@Override
	public int deleteByPrimaryKey(Integer wharfid) {
		// TODO Auto-generated method stub
		return this.loadingdao.deleteByPrimaryKey(wharfid);
	}

	@Override
	public int insert(LoadingArm record) {
		// TODO Auto-generated method stub
		return this.loadingdao.insert(record);
	}

	@Override
	public int insertSelective(LoadingArm record) {
		// TODO Auto-generated method stub
		return this.loadingdao.insertSelective(record);
	}

	@Override
	public LoadingArm selectByPrimaryKey(Integer wharfid) {
		// TODO Auto-generated method stub
		return this.loadingdao.selectByPrimaryKey(wharfid);
	}

	@Override
	public int updateByPrimaryKeySelective(LoadingArm record) {
		// TODO Auto-generated method stub
		return this.loadingdao.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(LoadingArm record) {
		// TODO Auto-generated method stub
		return this.loadingdao.updateByPrimaryKey(record);
	}

	@Override
	public List<LoadingArm> findall() {
		// TODO Auto-generated method stub
		return this.loadingdao.findall();
	}

}
