package com.daian.ex.controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author daixiangtao
 * @description
 * @date 2018/9/29 下午6:40
 */
public class VelocityAction extends ActionSupport {
    private String name;

    @Override
    public String execute() {

        System.out.println("Velocity!!!!!!!!!!!!!!!!!!!!!!!!!");

        this.setName("Shigenori Ozawa");

        return SUCCESS;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
