package com.mayingfeng.mapgis.service.impl;

import com.mayingfeng.mapgis.entity.User;
import com.mayingfeng.mapgis.mapper.UserMapper;
import com.mayingfeng.mapgis.service.UserService;
import com.mybatisflex.spring.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
