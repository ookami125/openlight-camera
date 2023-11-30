package com.immersion.android;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class ImmVibe extends com.immersion.ImmVibe {
    private native int AppendEnhancedWaveformEffect(int i, int i2, byte[] bArr, int i3, int i4, int i5, int i6);

    private native int AppendWaveformEffect(int i, int i2, byte[] bArr, int i3, int i4, int i5, int i6);

    private native void CloseDevice2(int i);

    private native int CreateStreamingEffect(int i);

    private native void DeleteIVTFile(String str);

    private native void DestroyStreamingEffect(int i, int i2);

    private native byte[] GetBuiltInEffects();

    private native boolean GetDeviceCapabilityBool(int i, int i2);

    private native int GetDeviceCapabilityInt32(int i, int i2);

    private native String GetDeviceCapabilityString(int i, int i2);

    private native int GetDeviceCount();

    private native int GetDeviceKernelParameter(int i, int i2);

    private native boolean GetDevicePropertyBool(int i, int i2);

    private native int GetDevicePropertyInt32(int i, int i2);

    private native String GetDevicePropertyString(int i, int i2);

    private native int GetDeviceState(int i);

    private native int GetEffectRemainingDuration(int i, int i2);

    private native int GetEffectState(int i, int i2);

    private native int GetIVTEffectCount(byte[] bArr);

    private native int GetIVTEffectDuration(byte[] bArr, int i);

    private native int GetIVTEffectIndexFromName(byte[] bArr, String str);

    private native String GetIVTEffectName(byte[] bArr, int i);

    private native int GetIVTEffectType(byte[] bArr, int i);

    private native void GetIVTMagSweepEffectDefinition(byte[] bArr, int i, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7);

    private native void GetIVTPeriodicEffectDefinition(byte[] bArr, int i, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7, int[] iArr8);

    private native int GetIVTSize2(byte[] bArr);

    private native void Initialize2();

    private native byte[] InitializeIVTBuffer(int i);

    private native byte[] InsertIVTElement2(byte[] bArr, int i, int[] iArr, byte[] bArr2);

    private native byte[] LoadIVTFromXIVT(int i, int i2, byte[] bArr);

    private native void ModifyPlayingInterpolatedEffectInterpolant(int i, int i2, int i3);

    private native void ModifyPlayingMagSweepEffect(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    private native void ModifyPlayingPeriodicEffect(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10);

    private native int OpenCompositeDevice2(int[] iArr, int i);

    private native int OpenDevice2(int i);

    private native void PausePlayingEffect(int i, int i2);

    private native int PlayEnhancedWaveformEffect(int i, byte[] bArr, int i2, int i3, int i4, int i5);

    private native int PlayIVTEffect(int i, byte[] bArr, int i2);

    private native int PlayIVTEffectRepeat(int i, byte[] bArr, int i2, byte b);

    private native int PlayIVTInterpolatedEffect(int i, byte[] bArr, int i2, int i3);

    private native int PlayMagSweepEffect(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    private native int PlayPeriodicEffect(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    private native void PlayStreamingSample(int i, int i2, byte[] bArr, int i3);

    private native void PlayStreamingSampleWithOffset(int i, int i2, byte[] bArr, int i3, int i4);

    private native int PlayWaveformEffect(int i, byte[] bArr, int i2, int i3, int i4, int i5);

    private native int[] ReadIVTElement2(byte[] bArr, int i, int i2);

    private native byte[] ReadIVTElementData(byte[] bArr, int i, int i2);

    private native byte[] RemoveIVTElement2(byte[] bArr, int i, int i2);

    private native int ReplaceEnhancedWaveformEffect(int i, int i2, byte[] bArr, int i3, int i4, int i5, int i6);

    private native void ResumePausedEffect(int i, int i2);

    private native void SaveIVTFile(byte[] bArr, String str);

    private native void SetDevicePropertyBool(int i, int i2, boolean z);

    private native void SetDevicePropertyInt32(int i, int i2, int i3);

    private native void SetDevicePropertyString(int i, int i2, String str);

    private native void StopAllPlayingEffects(int i);

    private native void StopPlayingEffect(int i, int i2);

    private native void Terminate2();

    @Override // com.immersion.ImmVibeAPI
    public void initialize() {
        Initialize2();
    }

    @Override // com.immersion.ImmVibe, com.immersion.ImmVibeAPI
    public void terminate() {
        Terminate2();
        super.terminate();
    }

    @Override // com.immersion.ImmVibeAPI
    public int getDeviceCount() {
        return GetDeviceCount();
    }

    @Override // com.immersion.ImmVibeAPI
    public int getDeviceState(int i) {
        return GetDeviceState(i);
    }

    @Override // com.immersion.ImmVibeAPI
    public boolean getDeviceCapabilityBool(int i, int i2) {
        return GetDeviceCapabilityBool(i, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public int getDeviceCapabilityInt32(int i, int i2) {
        return GetDeviceCapabilityInt32(i, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public String getDeviceCapabilityString(int i, int i2) {
        return GetDeviceCapabilityString(i, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public int openDevice(int i) {
        return OpenDevice2(i);
    }

    public int openDevice(int i, String str) {
        int OpenDevice2 = OpenDevice2(i);
        if (str != null && !str.equals("")) {
            try {
                setDevicePropertyString(OpenDevice2, 0, str);
            } catch (Exception e) {
                CloseDevice2(OpenDevice2);
                throw new RuntimeException(e.getMessage());
            }
        }
        return OpenDevice2;
    }

    @Override // com.immersion.ImmVibeAPI
    public int openCompositeDevice(int i) {
        return OpenCompositeDevice2(null, i);
    }

    public int openCompositeDevice(int[] iArr, int i, String str) {
        int OpenCompositeDevice2 = OpenCompositeDevice2(null, i);
        if (str != null && !str.equals("")) {
            try {
                setDevicePropertyString(OpenCompositeDevice2, 0, str);
            } catch (Exception e) {
                CloseDevice2(OpenCompositeDevice2);
                throw new RuntimeException(e.getMessage());
            }
        }
        return OpenCompositeDevice2;
    }

    @Override // com.immersion.ImmVibeAPI
    public void closeDevice(int i) {
        if (i != -1) {
            CloseDevice2(i);
        }
    }

    @Override // com.immersion.ImmVibeAPI
    public boolean getDevicePropertyBool(int i, int i2) {
        return GetDevicePropertyBool(i, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public void setDevicePropertyBool(int i, int i2, boolean z) {
        SetDevicePropertyBool(i, i2, z);
    }

    @Override // com.immersion.ImmVibeAPI
    public int getDevicePropertyInt32(int i, int i2) {
        return GetDevicePropertyInt32(i, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public void setDevicePropertyInt32(int i, int i2, int i3) {
        SetDevicePropertyInt32(i, i2, i3);
    }

    @Override // com.immersion.ImmVibeAPI
    public String getDevicePropertyString(int i, int i2) {
        return GetDevicePropertyString(i, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public void setDevicePropertyString(int i, int i2, String str) {
        SetDevicePropertyString(i, i2, str);
    }

    @Override // com.immersion.ImmVibeAPI
    public int getDeviceKernelParameter(int i, int i2) {
        return GetDeviceKernelParameter(i, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public int playIVTEffect(int i, byte[] bArr, int i2) {
        return PlayIVTEffect(i, bArr, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public int playIVTEffectRepeat(int i, byte[] bArr, int i2, byte b) {
        return PlayIVTEffectRepeat(i, bArr, i2, b);
    }

    @Override // com.immersion.ImmVibeAPI
    public int playMagSweepEffect(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return PlayMagSweepEffect(i, i2, i3, i4, i5, i6, i7, i8);
    }

    @Override // com.immersion.ImmVibeAPI
    public int playPeriodicEffect(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        return PlayPeriodicEffect(i, i2, i3, i4, i5, i6, i7, i8, i9);
    }

    @Override // com.immersion.ImmVibeAPI
    public int playWaveformEffect(int i, byte[] bArr, int i2, int i3, int i4, int i5) {
        return PlayWaveformEffect(i, bArr, i2, i3, i4, i5);
    }

    @Override // com.immersion.ImmVibeAPI
    public int appendWaveformEffect(int i, int i2, byte[] bArr, int i3, int i4, int i5, int i6) {
        return AppendWaveformEffect(i, i2, bArr, i3, i4, i5, i6);
    }

    @Override // com.immersion.ImmVibeAPI
    public void modifyPlayingMagSweepEffect(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        ModifyPlayingMagSweepEffect(i, i2, i3, i4, i5, i6, i7, i8, i9);
    }

    @Override // com.immersion.ImmVibeAPI
    public void modifyPlayingPeriodicEffect(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        ModifyPlayingPeriodicEffect(i, i2, i3, i4, i5, i6, i7, i8, i9, i10);
    }

    @Override // com.immersion.ImmVibeAPI
    public int getEffectState(int i, int i2) {
        return GetEffectState(i, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public void pausePlayingEffect(int i, int i2) {
        PausePlayingEffect(i, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public void resumePausedEffect(int i, int i2) {
        ResumePausedEffect(i, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public void stopPlayingEffect(int i, int i2) {
        StopPlayingEffect(i, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public void stopAllPlayingEffects(int i) {
        StopAllPlayingEffects(i);
    }

    @Override // com.immersion.ImmVibeAPI
    public int playIVTInterpolatedEffect(int i, byte[] bArr, int i2, int i3) {
        return PlayIVTInterpolatedEffect(i, bArr, i2, i3);
    }

    @Override // com.immersion.ImmVibeAPI
    public void modifyPlayingInterpolatedEffectInterpolant(int i, int i2, int i3) {
        ModifyPlayingInterpolatedEffectInterpolant(i, i2, i3);
    }

    @Override // com.immersion.ImmVibeAPI
    public int createStreamingEffect(int i) {
        return CreateStreamingEffect(i);
    }

    @Override // com.immersion.ImmVibeAPI
    public void destroyStreamingEffect(int i, int i2) {
        DestroyStreamingEffect(i, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public void playStreamingSample(int i, int i2, byte[] bArr, int i3) {
        PlayStreamingSample(i, i2, bArr, i3);
    }

    @Override // com.immersion.ImmVibeAPI
    public void playStreamingSampleWithOffset(int i, int i2, byte[] bArr, int i3, int i4) {
        PlayStreamingSampleWithOffset(i, i2, bArr, i3, i4);
    }

    @Override // com.immersion.ImmVibeAPI
    public byte[] getBuiltInEffects() {
        return GetBuiltInEffects();
    }

    public int playBuiltInEffect(int i, int i2) {
        return PlayIVTEffect(i, GetBuiltInEffects(), i2);
    }

    public int playBuiltInEffectRepeat(int i, int i2, byte b) {
        return PlayIVTEffectRepeat(i, GetBuiltInEffects(), i2, b);
    }

    @Override // com.immersion.ImmVibeAPI
    public int getIVTEffectCount(byte[] bArr) {
        return GetIVTEffectCount(bArr);
    }

    @Override // com.immersion.ImmVibeAPI
    public String getIVTEffectName(byte[] bArr, int i) {
        return GetIVTEffectName(bArr, i);
    }

    @Override // com.immersion.ImmVibeAPI
    public int getIVTEffectIndexFromName(byte[] bArr, String str) {
        return GetIVTEffectIndexFromName(bArr, str);
    }

    @Override // com.immersion.ImmVibeAPI
    public int getIVTEffectType(byte[] bArr, int i) {
        return GetIVTEffectType(bArr, i);
    }

    @Override // com.immersion.ImmVibeAPI
    public int getIVTEffectDuration(byte[] bArr, int i) {
        return GetIVTEffectDuration(bArr, i);
    }

    @Override // com.immersion.ImmVibeAPI
    public void getIVTMagSweepEffectDefinition(byte[] bArr, int i, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7) {
        GetIVTMagSweepEffectDefinition(bArr, i, iArr, iArr2, iArr3, iArr4, iArr5, iArr6, iArr7);
    }

    @Override // com.immersion.ImmVibeAPI
    public void getIVTPeriodicEffectDefinition(byte[] bArr, int i, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7, int[] iArr8) {
        GetIVTPeriodicEffectDefinition(bArr, i, iArr, iArr2, iArr3, iArr4, iArr5, iArr6, iArr7, iArr8);
    }

    @Override // com.immersion.ImmVibeAPI
    public void saveIVTFile(byte[] bArr, String str) {
        SaveIVTFile(bArr, str);
    }

    @Override // com.immersion.ImmVibeAPI
    public void deleteIVTFile(String str) {
        DeleteIVTFile(str);
    }

    @Override // com.immersion.ImmVibeAPI
    public byte[] initializeIVTBuffer(int i) {
        return InitializeIVTBuffer(i);
    }

    @Override // com.immersion.ImmVibeAPI
    public int getIVTSize(byte[] bArr) {
        return GetIVTSize2(bArr);
    }

    public int getIVTSize(byte[] bArr, int i) {
        return GetIVTSize2(bArr);
    }

    @Override // com.immersion.ImmVibeAPI
    public byte[] insertIVTElement(byte[] bArr, int i, int[] iArr, byte[] bArr2) {
        return InsertIVTElement2(bArr, i, iArr, bArr2);
    }

    public byte[] insertIVTElement(byte[] bArr, int i, int i2, int[] iArr) {
        return InsertIVTElement2(bArr, i2, iArr, null);
    }

    @Override // com.immersion.ImmVibeAPI
    public byte[] removeIVTElement(byte[] bArr, int i, int i2) {
        return RemoveIVTElement2(bArr, i, i2);
    }

    public byte[] removeIVTElement(byte[] bArr, int i, int i2, int i3) {
        return RemoveIVTElement2(bArr, i2, i3);
    }

    @Override // com.immersion.ImmVibeAPI
    public int[] readIVTElement(byte[] bArr, int i, int i2) {
        return ReadIVTElement2(bArr, i, i2);
    }

    public int[] readIVTElement(byte[] bArr, int i, int i2, int i3) {
        return ReadIVTElement2(bArr, i2, i3);
    }

    @Override // com.immersion.ImmVibeAPI
    public byte[] readIVTElementData(byte[] bArr, int i, int i2) {
        return ReadIVTElementData(bArr, i, i);
    }

    @Override // com.immersion.ImmVibeAPI
    public int playEnhancedWaveformEffect(int i, byte[] bArr, int i2, int i3, int i4, int i5) {
        return PlayEnhancedWaveformEffect(i, bArr, i2, i3, i4, i5);
    }

    @Override // com.immersion.ImmVibeAPI
    public int appendEnhancedWaveformEffect(int i, int i2, byte[] bArr, int i3, int i4, int i5, int i6) {
        return AppendEnhancedWaveformEffect(i, i2, bArr, i3, i4, i5, i6);
    }

    @Override // com.immersion.ImmVibeAPI
    public int replaceEnhancedWaveformEffect(int i, int i2, byte[] bArr, int i3, int i4, int i5, int i6) {
        return ReplaceEnhancedWaveformEffect(i, i2, bArr, i3, i4, i5, i6);
    }

    @Override // com.immersion.ImmVibeAPI
    public int getEffectRemainingDuration(int i, int i2) {
        return GetEffectRemainingDuration(i, i2);
    }

    @Override // com.immersion.ImmVibeAPI
    public byte[] loadIVTFromXIVT(int i, byte[] bArr) {
        return LoadIVTFromXIVT(i, bArr.length, bArr);
    }

    static {
        System.loadLibrary("ImmVibeJ");
    }
}