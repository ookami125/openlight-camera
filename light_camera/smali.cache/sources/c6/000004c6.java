package android.support.v4.os;

import android.os.AsyncTask;

@Deprecated
/* loaded from: /tmp/jadx-11175800792829446388.dex */
public final class AsyncTaskCompat {
    @Deprecated
    public static <Params, Progress, Result> AsyncTask<Params, Progress, Result> executeParallel(AsyncTask<Params, Progress, Result> asyncTask, Params... paramsArr) {
        if (asyncTask == null) {
            throw new IllegalArgumentException("task can not be null");
        }
        asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, paramsArr);
        return asyncTask;
    }

    private AsyncTaskCompat() {
    }
}