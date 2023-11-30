package openlight.co.lib.content;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface Prefs {

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface OnPreferenceChangeListener {
        void onPreferenceChanged(Prefs prefs, String str);
    }

    boolean getBooleanValue(String str);

    float getFloatValue(String str);

    int getIntValue(String str);

    long getLongValue(String str);

    String getStringValue(String str);

    <T> T getValue(String str, Class<T> cls);

    void putValue(String str, float f);

    void putValue(String str, int i);

    void putValue(String str, long j);

    void putValue(String str, Object obj);

    void putValue(String str, String str2);

    void putValue(String str, boolean z);

    void registerChangeListener(OnPreferenceChangeListener onPreferenceChangeListener);

    void removeValue(String str);

    void unregisterChangeListener(OnPreferenceChangeListener onPreferenceChangeListener);

    void withBroadcast(Runnable runnable);
}