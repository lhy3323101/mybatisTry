package com.ssm.model;

import java.io.Serializable;

/**
 *
 * @since 2018年09月28日
 */
public class User implements Serializable {
    private static final long serialVersionUID = -264886452673131665L;

    private int age;

    private int id;

    private String name;

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
