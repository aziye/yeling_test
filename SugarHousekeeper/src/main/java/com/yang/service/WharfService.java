package com.yang.service;

import java.util.List;

import com.yang.model.Wharf;

/**
 * 
 * @author miao
 *
 */
public interface WharfService {
	/**
	 * 查询所有
	 * 
	 * @return
	 */
	List<Wharf> findAll();

	/**
	 * 刪除by主键
	 * 
	 * @param wharfid
	 * @return
	 */
	int deleteByPrimaryKey(Integer wharfid);

	/**
	 * 插入
	 * 
	 * @param record
	 * @return
	 */
	int insert(Wharf record);

	/**
	 * 插入
	 * 
	 * @param record
	 * @return
	 */
	int insertSelective(Wharf record);

	/**
	 * 查询
	 * 
	 * @param wharfid
	 * @return
	 */
	Wharf selectByPrimaryKey(Integer wharfid);

	/**
	 * 更新
	 * 
	 * @param record
	 * @return
	 */
	int updateByPrimaryKeySelective(Wharf record);

	/**
	 * 更新
	 * 
	 * @param record
	 * @return
	 */
	int updateByPrimaryKey(Wharf record);
}
