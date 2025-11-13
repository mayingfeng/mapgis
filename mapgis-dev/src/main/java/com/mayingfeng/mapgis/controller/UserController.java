package com.mayingfeng.mapgis.controller;

import com.mayingfeng.mapgis.data.Result;
import com.mayingfeng.mapgis.service.UserService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "/user")
public class UserController {

    @Resource
    private UserService userService;

    @GetMapping(value = "/getAll")
    public Result getAll() {
        return Result.success(userService.list());
    }
}
