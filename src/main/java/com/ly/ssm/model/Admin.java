package com.ly.ssm.model;

public class Admin {
    public final int WUYE=1;
    public final int BAOJIE=2;
    public final int WEIXIU=3;

    private String name;
    private String level;
    private String job;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }
}
