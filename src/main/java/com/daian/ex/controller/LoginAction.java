package com.daian.ex.controller;

import com.daian.ex.model.MessageStore;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author daixiangtao
 * @description
 * @date 2018/9/29 下午6:38
 */
public class LoginAction  extends ActionSupport {
    private MessageStore messageStore;

    public MessageStore getMessageStore() {
        return messageStore;
    }

    public void setMessageStore(MessageStore messageStore) {
        this.messageStore = messageStore;
    }

    @Override
    public String  execute(){

        System.out.println("hello 111111111");
        messageStore = new MessageStore();
        System.out.println(messageStore.getMessage());

        return SUCCESS;
    }

    public String login(){

        return SUCCESS;
    }
}
