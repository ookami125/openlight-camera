package com.immersion;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class WaveformEffectDefinition {
    private int actuatorIndex;
    private int bitDepth;
    private byte[] data;
    private int dataSize;
    private int magnitude;
    private int sampleRate;

    public WaveformEffectDefinition(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        setData(bArr);
        setDataSize(i);
        setSampleRate(i2);
        setBitDepth(i3);
        setMagnitude(i4);
        setActuatorIndex(i5);
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
    }

    public byte[] getData() {
        return this.data;
    }

    public void setDataSize(int i) {
        this.dataSize = i;
    }

    public int getDataSize() {
        return this.dataSize;
    }

    public void setSampleRate(int i) {
        this.sampleRate = i;
    }

    public int getSampleRate() {
        return this.sampleRate;
    }

    public void setBitDepth(int i) {
        this.bitDepth = i;
    }

    public int getBitDepth() {
        return this.bitDepth;
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
}