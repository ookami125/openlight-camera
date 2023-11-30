package openlight.co.lib.view.cache;

import android.content.Context;
import android.graphics.Typeface;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import openlight.co.lib.utils.LogUtil;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class FontCache {
    private static final String HARMONIA_REGULAR = "harmonia-regular.ttf";
    private static final String HARMONIA_SEMIBOLD = "harmonia-semibold.ttf";
    private static final String TAG = "FontCache";
    private static FontCache sInstance;
    private WeakReference<Context> mContext;
    private final Map<String, Typeface> mFontCache = Collections.synchronizedMap(new HashMap());

    public static synchronized FontCache get() {
        FontCache fontCache;
        synchronized (FontCache.class) {
            fontCache = sInstance;
        }
        return fontCache;
    }

    public Typeface getHarmoniaRegular() {
        return getTypeface(HARMONIA_REGULAR);
    }

    public Typeface getHarmoniaSemibold() {
        return getTypeface(HARMONIA_SEMIBOLD);
    }

    private Typeface getTypeface(String str) {
        Typeface typeface = this.mFontCache.get(str);
        if (typeface == null) {
            try {
                typeface = Typeface.createFromAsset(this.mContext.get().getAssets(), str);
                this.mFontCache.put(str, typeface);
            } catch (Exception e) {
                LogUtil.e(TAG, "Error getting typeface", e);
                return null;
            }
        }
        return typeface;
    }

    public static void init(Context context) {
        sInstance = new FontCache(context);
    }

    private FontCache(Context context) {
        this.mContext = new WeakReference<>(context);
    }
}