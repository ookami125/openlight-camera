package android.support.v4.os;

import android.os.Parcel;

@Deprecated
/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface ParcelableCompatCreatorCallbacks<T> {
    T createFromParcel(Parcel parcel, ClassLoader classLoader);

    T[] newArray(int i);
}