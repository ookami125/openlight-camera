package com.immersion;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class PeriodicEffectDefinition {
    private int actuatorIndex;
    private int attackLevel;
    private int attackTime;
    private int duration;
    private int fadeLevel;
    private int fadeTime;
    private int magnitude;
    private int period;
    private int styleAndWaveType;

    public PeriodicEffectDefinition(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        setDuration(i);
        setMagnitude(i2);
        setPeriod(i3);
        setStyleAndWaveType(i4);
        setAttackTime(i5);
        setAttackLevel(i6);
        setFadeTime(i7);
        setFadeLevel(i8);
        setActuatorIndex(i9);
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

    public void setPeriod(int i) {
        this.period = i;
    }

    public int getPeriod() {
        return this.period;
    }

    public void setStyleAndWaveType(int i) {
        this.styleAndWaveType = i;
    }

    public int getStyleAndWaveType() {
        return this.styleAndWaveType;
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