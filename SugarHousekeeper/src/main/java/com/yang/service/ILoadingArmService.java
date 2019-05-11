package com.yang.service;

import java.util.List;

import com.yang.model.LoadingArm;

/**
 *  
 * @author <a href="mailto:xingm@vt08.com">xingMiao</a>
 * @version 1.0, 2017年12月28日
 */
public interface ILoadingArmService {
	List<LoadingArm> findall();
	int deleteByPrimaryKey(Integer wharfid);

	int insert(LoadingArm record);

	int insertSelective(LoadingArm record);

	LoadingArm selectByPrimaryKey(Integer wharfid);

	int updateByPrimaryKeySelective(LoadingArm record);

	int updateByPrimaryKey(LoadingArm record);
}