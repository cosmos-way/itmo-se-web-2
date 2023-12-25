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
    private boolean areaIntersection;
    private String time;
    private String execTime;
    public RowCheckout(){}

    public RowCheckout(float x, float y, float r, boolean areaIntersection, String time, String execTime) {
        this.x = x;
        this.y = y;
        this.r = r;
        this.areaIntersection = areaIntersection;
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

    public boolean getAreaIntersection() {
        return areaIntersection;
    }

    public void setAreaIntersection(boolean areaIntersection) {
        this.areaIntersection = areaIntersection;
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

