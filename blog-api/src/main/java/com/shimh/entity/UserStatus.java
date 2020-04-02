package com.shimh.entity;


public enum UserStatus {

    normal("normal"), blocked("forbidden");

    private final String info;

    private UserStatus(String info) {
        this.info = info;
    }

    public String getInfo() {
        return info;
    }
}
