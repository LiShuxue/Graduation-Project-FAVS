package com.favs.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.favs.bean.Admins;
import com.favs.service.AdminsService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:applicationContext-*.xml")
public class SSHTest {
	@Resource
	private Date date;
	@Resource
	private AdminsService adminsService;

	@Test
	public void testSpring() {
		System.out.println(date);
	}
	
	@Test
	public void testHibernate() {
		System.out.println(adminsService);
		adminsService.save(new Admins("lisi", "123", "男", 25, "15822471231", 1));
	}

	@Test
	public void testHibernateAndSpring() {
		System.out.println(adminsService);
		adminsService.update(new Admins(3, "lisi", "123", "女", 25, "15822471231", 1));
	}
}
