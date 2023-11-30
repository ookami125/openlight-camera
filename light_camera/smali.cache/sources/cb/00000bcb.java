package net.hockeyapp.android.objects;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum CrashManagerUserInput {
    CrashManagerUserInputDontSend(0),
    CrashManagerUserInputSend(1),
    CrashManagerUserInputAlwaysSend(2);
    
    private final int mValue;

    CrashManagerUserInput(int i) {
        this.mValue = i;
    }

    public int getValue() {
        return this.mValue;
    }
}