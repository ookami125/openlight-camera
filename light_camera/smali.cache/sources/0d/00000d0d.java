package openlight.co.camera.models;

import android.graphics.Point;
import android.view.MotionEvent;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class MeteringPoint {
    public static final MeteringPoint CENTER = new MeteringPoint();
    private int mX = 0;
    private int mY = 0;
    private Type mType = Type.CENTER;

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public enum Type {
        CENTER,
        OTHER
    }

    public MeteringPoint set(MotionEvent motionEvent) {
        return set((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    public MeteringPoint set(int i, int i2) {
        this.mType = Type.OTHER;
        this.mX = i;
        this.mY = i2;
        return this;
    }

    public MeteringPoint set(Point point) {
        return set(point.x, point.y);
    }

    public MeteringPoint resetToCenter() {
        this.mType = Type.CENTER;
        this.mX = 0;
        this.mY = 0;
        return this;
    }

    public int getX() {
        return this.mX;
    }

    public int getY() {
        return this.mY;
    }

    public Type getType() {
        return this.mType;
    }

    public boolean isCenter() {
        return Type.CENTER.equals(this.mType);
    }

    public String toString() {
        return String.format("MeteringPoint { type=%s, x=%d, y=%d }", this.mType.name(), Integer.valueOf(this.mX), Integer.valueOf(this.mY));
    }
}