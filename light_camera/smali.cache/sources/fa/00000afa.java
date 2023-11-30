package com.immersion;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class EnhancedWaveformEffectDefinition {
    private int actuatorIndex;
    private byte[] data;
    private int format;
    private int magnitude;
    private int sampleRate;
    private int secureMode;

    public EnhancedWaveformEffectDefinition(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        setData(bArr);
        setSampleRate(i);
        setFormat(i2);
        setMagnitude(i3);
        setActuatorIndex(i4);
        setSecureMode(i5);
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
    }

    public byte[] getData() {
        return this.data;
    }

    public int getDataSize() {
        return this.data.length;
    }

    public void setSampleRate(int i) {
        this.sampleRate = i;
    }

    public int getSampleRate() {
        return this.sampleRate;
    }

    public void setFormat(int i) {
        this.format = i;
    }

    public int getFormat() {
        return this.format;
    }

    public void setMagnitude(int i) {
        this.magnitude = i;
    }

    public int getMagnitude() {
        return this.magnitude;
    }

    public void setActuatorIndex(int i) {
        this.actuatorIndex = i;
    }

    public int getActuatorIndex() {
        return this.actuatorIndex;
    }

    public void setSecureMode(int i) {
        this.secureMode = i;
    }

    public int getSecureMode() {
        return this.secureMode;
    }
}