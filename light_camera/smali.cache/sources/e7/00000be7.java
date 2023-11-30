package net.hockeyapp.android.utils;

import android.annotation.SuppressLint;
import android.os.AsyncTask;
import android.os.Build;
import java.util.concurrent.Executor;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class AsyncTaskUtils {
    private static Executor sCustomExecutor;

    @SuppressLint({"InlinedApi"})
    public static void execute(AsyncTask<Void, ?, ?> asyncTask) {
        if (Build.VERSION.SDK_INT <= 12) {
            asyncTask.execute(new Void[0]);
        } else {
            asyncTask.executeOnExecutor(sCustomExecutor != null ? sCustomExecutor : AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public static Executor getCustomExecutor() {
        return sCustomExecutor;
    }

    public static void setCustomExecutor(Executor executor) {
        sCustomExecutor = executor;
    }
}