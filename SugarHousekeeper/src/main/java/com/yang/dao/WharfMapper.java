package com.yang.dao;

import java.util.List;

import com.yang.model.Wharf;

public interface WharfMapper {
	List<Wharf> findAll();
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_wharf
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer wharfid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_wharf
     *
     * @mbggenerated
     */
    int insert(Wharf record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_wharf
     *
     * @mbggenerated
     */
    int insertSelective(Wharf record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_wharf
     *
     * @mbggenerated
     */
    Wharf selectByPrimaryKey(Integer wharfid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_wharf
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Wharf record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_wharf
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Wharf record);
}