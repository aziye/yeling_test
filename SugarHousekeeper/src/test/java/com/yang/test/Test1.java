package com.yang.test;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.yang.model.Wharf;
import com.yang.service.WharfService;

@RunWith(SpringJUnit4ClassRunner.class) // 表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = { "classpath:spring-mybatis.xml" })
public class Test1 {
    private static Logger logger = Logger.getLogger(Test1.class);
    // private ApplicationContext ac = null;
    
    @Resource
	private WharfService wharfdao = null;
    // @Before
    // public void before() {
    // ac = new ClassPathXmlApplicationContext("applicationContext.xml");
    // userService = (IUserService) ac.getBean("userService");
    // }

    @Test
    public void test() {
		// List<LoadingArm> ww = loadingdao.findall();
		List<Wharf> ww = wharfdao.findAll();
        // System.out.println(user.getUserName());
        // logger.info("值："+user.getUserName());
		logger.info("测试输出结果：" + JSON.toJSONString(ww));
    }
}