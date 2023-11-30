package net.hockeyapp.android.metrics.model;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum SessionState {
    START(0),
    END(1);
    
    private final int value;

    SessionState(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }
}