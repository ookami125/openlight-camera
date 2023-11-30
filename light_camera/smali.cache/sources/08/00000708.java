package android.support.v7.util;

import android.support.v7.util.TileList;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
interface ThreadUtil<T> {

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface BackgroundCallback<T> {
        void loadTile(int i, int i2);

        void recycleTile(TileList.Tile<T> tile);

        void refresh(int i);

        void updateRange(int i, int i2, int i3, int i4, int i5);
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface MainThreadCallback<T> {
        void addTile(int i, TileList.Tile<T> tile);

        void removeTile(int i, int i2);

        void updateItemCount(int i, int i2);
    }

    BackgroundCallback<T> getBackgroundProxy(BackgroundCallback<T> backgroundCallback);

    MainThreadCallback<T> getMainThreadProxy(MainThreadCallback<T> mainThreadCallback);
}