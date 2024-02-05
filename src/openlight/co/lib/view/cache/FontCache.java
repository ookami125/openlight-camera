package openlight.co.lib.view.cache;

import android.content.Context;
import android.graphics.Typeface;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import openlight.co.lib.utils.LogUtil;

public class FontCache {
    private static final String HARMONIA_REGULAR = "harmonia-regular.ttf";
    private static final String HARMONIA_SEMIBOLD = "harmonia-semibold.ttf";
    private static final String TAG = "FontCache";
    private static FontCache sInstance;
    private WeakReference mContext;
    private final Map mFontCache = Collections.synchronizedMap(new HashMap());

    private FontCache(Context var1) {
        this.mContext = new WeakReference(var1);
    }

    public static FontCache get() {
        synchronized(FontCache.class){}

        FontCache var0;
        try {
            var0 = sInstance;
        } finally {
            ;
        }

        return var0;
    }

    private Typeface getTypeface(String var1) {
        Typeface var3 = (Typeface)this.mFontCache.get(var1);
        Typeface var2 = var3;
        if (var3 == null) {
            try {
                var2 = Typeface.createFromAsset(((Context)this.mContext.get()).getAssets(), var1);
            } catch (Exception var4) {
                LogUtil.e(TAG, "Error getting typeface", var4);
                return null;
            }

            this.mFontCache.put(var1, var2);
        }

        return var2;
    }

    public static void init(Context var0) {
        sInstance = new FontCache(var0);
    }

    public Typeface getHarmoniaRegular() {
        return this.getTypeface("harmonia-regular.ttf");
    }

    public Typeface getHarmoniaSemibold() {
        return this.getTypeface("harmonia-semibold.ttf");
    }
}
