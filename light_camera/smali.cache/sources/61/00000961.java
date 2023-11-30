package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class ImageVideoWrapper {
    private final ParcelFileDescriptor fileDescriptor;
    private final InputStream streamData;

    public ImageVideoWrapper(InputStream inputStream, ParcelFileDescriptor parcelFileDescriptor) {
        this.streamData = inputStream;
        this.fileDescriptor = parcelFileDescriptor;
    }

    public InputStream getStream() {
        return this.streamData;
    }

    public ParcelFileDescriptor getFileDescriptor() {
        return this.fileDescriptor;
    }
}