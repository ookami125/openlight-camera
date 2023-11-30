package openlight.co.lib.utils;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class LogUtil {
    private static final int MAX_ENTRIES;
    private static final boolean SHOW_LOG = !CommonConstants.IS_USER_BUILD;
    private static final boolean SUPPORT_ON_DEVICE_LOG_VIEW = !CommonConstants.IS_USER_BUILD;
    private static final String TAG = "LogUtil";
    private static final Entry[] sEntries;
    private static volatile int sId;
    private static final HashSet<OnLogChangedListener> sListeners;
    private static final Object sLock;
    private static int sNext;

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface OnLogChangedListener {
        void onLogChanged();
    }

    static {
        MAX_ENTRIES = SUPPORT_ON_DEVICE_LOG_VIEW ? 10000 : 0;
        sId = -1;
        sLock = new Object();
        sEntries = new Entry[MAX_ENTRIES];
        sNext = 0;
        sListeners = new HashSet<>();
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public static class Entry {
        public final Exception exception;
        public final int id;
        public final int level;
        public final String message;
        public final String tag;
        public final long timestamp;

        Entry(int i, long j, int i2, String str, String str2, Exception exc) {
            this.id = i;
            this.timestamp = j;
            this.level = i2;
            this.tag = str;
            this.message = str2;
            this.exception = exc;
        }
    }

    public static void v(String str, String str2) {
        if (SHOW_LOG) {
            fv(str, str2, null);
        }
    }

    public static void v(String str, String str2, Exception exc) {
        if (SHOW_LOG) {
            fv(str, str2, exc);
        }
    }

    public static void d(String str, String str2) {
        if (SHOW_LOG) {
            fd(str, str2, null);
        }
    }

    public static void d(String str, String str2, Exception exc) {
        if (SHOW_LOG) {
            fd(str, str2, exc);
        }
    }

    public static void i(String str, String str2) {
        fi(str, str2, null);
    }

    public static void i(String str, String str2, Exception exc) {
        fi(str, str2, exc);
    }

    public static void w(String str, String str2) {
        fw(str, str2, null);
    }

    public static void w(String str, String str2, Exception exc) {
        fw(str, str2, exc);
    }

    public static void e(String str, String str2) {
        fe(str, str2, null);
    }

    public static void e(String str, String str2, Exception exc) {
        fe(str, str2, exc);
    }

    private static void fv(String str, String str2, Exception exc) {
        Log.v(str, str2, exc);
        if (SUPPORT_ON_DEVICE_LOG_VIEW) {
            addEntry(2, str, str2, exc);
        }
    }

    private static void fd(String str, String str2, Exception exc) {
        Log.d(str, str2, exc);
        if (SUPPORT_ON_DEVICE_LOG_VIEW) {
            addEntry(3, str, str2, exc);
        }
    }

    private static void fi(String str, String str2, Exception exc) {
        Log.i(str, str2, exc);
        if (SUPPORT_ON_DEVICE_LOG_VIEW) {
            addEntry(4, str, str2, exc);
        }
    }

    private static void fw(String str, String str2, Exception exc) {
        Log.w(str, str2, exc);
        if (SUPPORT_ON_DEVICE_LOG_VIEW) {
            addEntry(5, str, str2, exc);
        }
    }

    private static void fe(String str, String str2, Exception exc) {
        Log.e(str, str2, exc);
        if (SUPPORT_ON_DEVICE_LOG_VIEW) {
            addEntry(6, str, str2, exc);
        }
    }

    public static boolean addOnLogChangedListener(OnLogChangedListener onLogChangedListener) {
        boolean add;
        synchronized (sListeners) {
            add = sListeners.add(onLogChangedListener);
        }
        return add;
    }

    public static boolean removeOnLogChangedListener(OnLogChangedListener onLogChangedListener) {
        boolean remove;
        synchronized (sListeners) {
            remove = sListeners.remove(onLogChangedListener);
        }
        return remove;
    }

    public static Entry[] getEntries(int i) {
        synchronized (sLock) {
            int max = Math.max(0, Math.min(sId - i, MAX_ENTRIES));
            Entry[] entryArr = new Entry[max];
            if (max == 0) {
                return entryArr;
            }
            int i2 = sNext - max;
            if (i2 < 0) {
                i2 += MAX_ENTRIES;
            }
            int i3 = sNext;
            if (i2 < i3) {
                System.arraycopy(sEntries, i2, entryArr, 0, max);
            } else {
                System.arraycopy(sEntries, i2, entryArr, 0, MAX_ENTRIES - i2);
                System.arraycopy(sEntries, 0, entryArr, MAX_ENTRIES - i2, i3);
            }
            return entryArr;
        }
    }

    private static void addEntry(int i, @NonNull String str, @NonNull String str2, @Nullable Exception exc) {
        ArrayList arrayList;
        if (MAX_ENTRIES > 0) {
            synchronized (sLock) {
                int i2 = sId + 1;
                sId = i2;
                sEntries[sNext] = new Entry(i2, System.currentTimeMillis(), i, str, str2, exc);
                sNext = (sNext + 1) % MAX_ENTRIES;
            }
            synchronized (sListeners) {
                arrayList = new ArrayList(sListeners);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                try {
                    ((OnLogChangedListener) it.next()).onLogChanged();
                } catch (Exception e) {
                    Log.w(TAG, "problem calling OnLogChangedListener", e);
                }
            }
        }
    }
}