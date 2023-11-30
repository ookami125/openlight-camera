package android.support.constraint.solver;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
final class Pools {
    private static final boolean DEBUG = false;

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    interface Pool<T> {
        T acquire();

        boolean release(T t);

        void releaseAll(T[] tArr, int i);
    }

    private Pools() {
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SimplePool(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.mPool = new Object[i];
        }

        @Override // android.support.constraint.solver.Pools.Pool
        public T acquire() {
            if (this.mPoolSize > 0) {
                int i = this.mPoolSize - 1;
                T t = (T) this.mPool[i];
                this.mPool[i] = null;
                this.mPoolSize--;
                return t;
            }
            return null;
        }

        @Override // android.support.constraint.solver.Pools.Pool
        public boolean release(T t) {
            if (this.mPoolSize < this.mPool.length) {
                this.mPool[this.mPoolSize] = t;
                this.mPoolSize++;
                return true;
            }
            return false;
        }

        @Override // android.support.constraint.solver.Pools.Pool
        public void releaseAll(T[] tArr, int i) {
            if (i > tArr.length) {
                i = tArr.length;
            }
            for (int i2 = 0; i2 < i; i2++) {
                T t = tArr[i2];
                if (this.mPoolSize < this.mPool.length) {
                    this.mPool[this.mPoolSize] = t;
                    this.mPoolSize++;
                }
            }
        }

        private boolean isInPool(T t) {
            for (int i = 0; i < this.mPoolSize; i++) {
                if (this.mPool[i] == t) {
                    return true;
                }
            }
            return false;
        }
    }
}