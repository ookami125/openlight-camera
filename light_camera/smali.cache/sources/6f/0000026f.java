package android.support.v13.view.inputmethod;

import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.view.inputmethod.EditorInfo;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public final class EditorInfoCompat {
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final int IME_FLAG_FORCE_ASCII = Integer.MIN_VALUE;
    public static final int IME_FLAG_NO_PERSONALIZED_LEARNING = 16777216;
    private static final EditorInfoCompatImpl IMPL;

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    private interface EditorInfoCompatImpl {
        @NonNull
        String[] getContentMimeTypes(@NonNull EditorInfo editorInfo);

        void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] strArr);
    }

    static {
        if (Build.VERSION.SDK_INT >= 25) {
            IMPL = new EditorInfoCompatApi25Impl();
        } else {
            IMPL = new EditorInfoCompatBaseImpl();
        }
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    private static final class EditorInfoCompatBaseImpl implements EditorInfoCompatImpl {
        private static String CONTENT_MIME_TYPES_KEY = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES";

        private EditorInfoCompatBaseImpl() {
        }

        @Override // android.support.v13.view.inputmethod.EditorInfoCompat.EditorInfoCompatImpl
        public void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] strArr) {
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            editorInfo.extras.putStringArray(CONTENT_MIME_TYPES_KEY, strArr);
        }

        @Override // android.support.v13.view.inputmethod.EditorInfoCompat.EditorInfoCompatImpl
        @NonNull
        public String[] getContentMimeTypes(@NonNull EditorInfo editorInfo) {
            String[] stringArray;
            return (editorInfo.extras == null || (stringArray = editorInfo.extras.getStringArray(CONTENT_MIME_TYPES_KEY)) == null) ? EditorInfoCompat.EMPTY_STRING_ARRAY : stringArray;
        }
    }

    @RequiresApi(25)
    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    private static final class EditorInfoCompatApi25Impl implements EditorInfoCompatImpl {
        private EditorInfoCompatApi25Impl() {
        }

        @Override // android.support.v13.view.inputmethod.EditorInfoCompat.EditorInfoCompatImpl
        public void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] strArr) {
            editorInfo.contentMimeTypes = strArr;
        }

        @Override // android.support.v13.view.inputmethod.EditorInfoCompat.EditorInfoCompatImpl
        @NonNull
        public String[] getContentMimeTypes(@NonNull EditorInfo editorInfo) {
            String[] strArr = editorInfo.contentMimeTypes;
            return strArr != null ? strArr : EditorInfoCompat.EMPTY_STRING_ARRAY;
        }
    }

    public static void setContentMimeTypes(@NonNull EditorInfo editorInfo, @Nullable String[] strArr) {
        IMPL.setContentMimeTypes(editorInfo, strArr);
    }

    @NonNull
    public static String[] getContentMimeTypes(EditorInfo editorInfo) {
        return IMPL.getContentMimeTypes(editorInfo);
    }
}