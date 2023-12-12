package ru.cosmosway.web02.beans;

import java.beans.JavaBean;
import java.io.Serializable;

import static java.lang.Math.pow;

@JavaBean
public class RowCheckout implements Serializable {
    private static final long serialVersionUID = 2L;

    private float x;
    private float y;
    private float r;
    private String result;
    private String time;
    private String execTime;

    public RowCheckout(float x, float y, float r, String result, String time, String execTime) {
        this.x = x;
        this.y = y;
        this.r = r;
        this.result = result;
        this.time = time;
        this.execTime = execTime;
    }

    public float getX() {
        return x;
    }

    public void setX(float x) {
        this.x = x;
    }

    public float getY() {
        return y;
    }

    public void setY(float y) {
        this.y = y;
    }

    public float getR() {
        return r;
    }

    public void setR(float r) {
        this.r = r;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getExecTime() {
        return execTime;
    }

    public void setExecTime(String scriptTime) {
        this.execTime = scriptTime;
    }
}

