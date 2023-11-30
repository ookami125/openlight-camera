package com.immersion;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public abstract class ImmVibe implements ImmVibeAPI {
    private static ImmVibe sInstance;

    private static ImmVibe newImmVibeInstanceForName(String str) {
        try {
            return (ImmVibe) Class.forName(str).newInstance();
        } catch (Exception unused) {
            return null;
        }
    }

    private static ImmVibe newImmVibeInstance() {
        ImmVibe newImmVibeInstanceForName = newImmVibeInstanceForName("com.immersion.android.ImmVibe");
        return newImmVibeInstanceForName == null ? newImmVibeInstanceForName("com.immersion.J2ME.ImmVibe") : newImmVibeInstanceForName;
    }

    public static ImmVibe getInstance() {
        if (sInstance == null) {
            ImmVibe newImmVibeInstance = newImmVibeInstance();
            if (newImmVibeInstance == null) {
                throw new RuntimeException("VIBE_E_FAIL");
            }
            newImmVibeInstance.initialize();
            sInstance = newImmVibeInstance;
            return newImmVibeInstance;
        }
        return sInstance;
    }

    @Override // com.immersion.ImmVibeAPI
    public void terminate() {
        sInstance = null;
    }
}