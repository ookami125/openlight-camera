package com.immersion;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class MagSweepEffectDefinition {
    private int actuatorIndex;
    private int attackLevel;
    private int attackTime;
    private int duration;
    private int fadeLevel;
    private int fadeTime;
    private int magnitude;
    private int style;

    public MagSweepEffectDefinition(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        setDuration(i);
        setMagnitude(i2);
        setStyle(i3);
        setAttackTime(i4);
        setAttackLevel(i5);
        setFadeTime(i6);
        setFadeLevel(i7);
        setActuatorIndex(i8);
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    public int getDuration() {
        return this.duration;
    }

    public void setMagnitude(int i) {
        this.magnitude = i;
    }

    public int getMagnitude() {
        return this.magnitude;
    }

    public void setStyle(int i) {
        this.style = i;
    }

    public int getStyle() {
        return this.style;
    }

    public void setAttackTime(int i) {
        this.attackTime = i;
    }

    public int getAttackTime() {
        return this.attackTime;
    }

    public void setAttackLevel(int i) {
        this.attackLevel = i;
    }

    public int getAttackLevel() {
        return this.attackLevel;
    }

    public void setFadeTime(int i) {
        this.fadeTime = i;
    }

    public int getFadeTime() {
        return this.fadeTime;
    }

    public void setFadeLevel(int i) {
        this.fadeLevel = i;
    }

    public int getFadeLevel() {
        return this.fadeLevel;
    }

    public void setActuatorIndex(int i) {
        this.actuatorIndex = i;
    }

    public int getActuatorIndex() {
        return this.actuatorIndex;
    }
}