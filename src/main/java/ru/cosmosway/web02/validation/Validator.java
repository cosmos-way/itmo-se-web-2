package ru.cosmosway.web02.validation;

public class Validator {
    private final int MIN_X = -5;
    private final int MAX_X = 5;

    private final int MAX_Y = 5;
    private final int MIN_Y = -5;
    private final int MIN_R = 1;
    private final int MAX_R = 5;

    public Validator(float x, float y, float r) {
        this.x = x;
        this.y = y;
        this.r = r;
    }

    float x;
    float y;
    float r;
    public boolean validate() {
            if (!(x >= MIN_X && x <= MAX_X)) {
                return false;
            }
            if (!(y >= MIN_Y && y <= MAX_Y)) {
                return false;
            }
            if (!(r >= MIN_R && r <= MAX_R)) {
                return false;
            }
            return true;
        }

}
