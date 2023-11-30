package android.support.v13.view;

import android.app.Activity;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.view.DragAndDropPermissions;
import android.view.DragEvent;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public final class DragAndDropPermissionsCompat {
    private static DragAndDropPermissionsCompatImpl IMPL;
    private Object mDragAndDropPermissions;

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    interface DragAndDropPermissionsCompatImpl {
        void release(Object obj);

        Object request(Activity activity, DragEvent dragEvent);
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    static class BaseDragAndDropPermissionsCompatImpl implements DragAndDropPermissionsCompatImpl {
        @Override // android.support.v13.view.DragAndDropPermissionsCompat.DragAndDropPermissionsCompatImpl
        public void release(Object obj) {
        }

        @Override // android.support.v13.view.DragAndDropPermissionsCompat.DragAndDropPermissionsCompatImpl
        public Object request(Activity activity, DragEvent dragEvent) {
            return null;
        }

        BaseDragAndDropPermissionsCompatImpl() {
        }
    }

    @RequiresApi(24)
    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    static class Api24DragAndDropPermissionsCompatImpl extends BaseDragAndDropPermissionsCompatImpl {
        Api24DragAndDropPermissionsCompatImpl() {
        }

        @Override // android.support.v13.view.DragAndDropPermissionsCompat.BaseDragAndDropPermissionsCompatImpl, android.support.v13.view.DragAndDropPermissionsCompat.DragAndDropPermissionsCompatImpl
        public Object request(Activity activity, DragEvent dragEvent) {
            return activity.requestDragAndDropPermissions(dragEvent);
        }

        @Override // android.support.v13.view.DragAndDropPermissionsCompat.BaseDragAndDropPermissionsCompatImpl, android.support.v13.view.DragAndDropPermissionsCompat.DragAndDropPermissionsCompatImpl
        public void release(Object obj) {
            ((DragAndDropPermissions) obj).release();
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 24) {
            IMPL = new Api24DragAndDropPermissionsCompatImpl();
        } else {
            IMPL = new BaseDragAndDropPermissionsCompatImpl();
        }
    }

    private DragAndDropPermissionsCompat(Object obj) {
        this.mDragAndDropPermissions = obj;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static DragAndDropPermissionsCompat request(Activity activity, DragEvent dragEvent) {
        Object request = IMPL.request(activity, dragEvent);
        if (request != null) {
            return new DragAndDropPermissionsCompat(request);
        }
        return null;
    }

    public void release() {
        IMPL.release(this.mDragAndDropPermissions);
    }
}