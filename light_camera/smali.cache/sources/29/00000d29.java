package openlight.co.camera.utils;

import android.support.annotation.NonNull;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class ExecutorUtil {
    private static final int CORE_POOL_SIZE = 1;
    private static final int KEEP_ALIVE_SECS = 10;
    private static final int CPU_COUNT = Runtime.getRuntime().availableProcessors();
    private static final int MAXIMUM_POOL_SIZE = CPU_COUNT + 1;
    private static final ThreadFactory sThreadFactory = new ThreadFactory() { // from class: openlight.co.camera.utils.ExecutorUtil.1
        private final AtomicInteger mCount = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            if (runnable instanceof RunnableWrapper) {
                RunnableWrapper runnableWrapper = (RunnableWrapper) runnable;
                return new Thread(runnableWrapper.getRunnable(), runnableWrapper.getName());
            }
            return new Thread(runnable, "ExecutorUtil #" + this.mCount.getAndIncrement());
        }
    };
    private static final BlockingQueue<Runnable> sPoolWorkQueue = new LinkedBlockingQueue(128);
    private static final Executor sExecutor = new ThreadPoolExecutor(1, MAXIMUM_POOL_SIZE, 10, TimeUnit.SECONDS, sPoolWorkQueue, sThreadFactory);

    public static void execute(Runnable runnable) {
        sExecutor.execute(runnable);
    }

    public static void execute(@NonNull Runnable runnable, @NonNull String str) {
        sExecutor.execute(new RunnableWrapper(runnable, str));
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    private static class RunnableWrapper implements Runnable {
        private final String mName;
        private final Runnable mRunnable;

        RunnableWrapper(@NonNull Runnable runnable, @NonNull String str) {
            this.mRunnable = runnable;
            this.mName = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mRunnable.run();
        }

        public Runnable getRunnable() {
            return this.mRunnable;
        }

        public String getName() {
            return this.mName;
        }
    }
}