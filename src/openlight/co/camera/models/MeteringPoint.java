package openlight.co.camera.models;

import android.graphics.Point;
import android.view.MotionEvent;

public class MeteringPoint {
    public static final MeteringPoint CENTER = new MeteringPoint();

    public enum Type {
        CENTER,
        OTHER
    }

    private int mX = 0;
    private int mY = 0;
    private Type mType = Type.CENTER;

    public Type getType() { return mType; }
    public int getX() { return mX; }
    public int getY() { return mY; }

    public boolean isCenter() { return Type.CENTER.equals(mType); }

    public MeteringPoint resetToCenter() {
        mType = Type.CENTER;
        mX = 0;
        mY = 0;
        return this;
    }

    public MeteringPoint set(int x, int y) {
        mType = Type.OTHER;
        mX = x;
        mY = y;
        return this;
    }

    public MeteringPoint set(Point point) {
        return set(point.x, point.y);
    }

    public MeteringPoint set(MotionEvent event) {
        return set((int) event.getX(), (int) event.getY());
    }

    @Override
    public String toString() {
        return String.format("MeteringPoint { type=%s, x=%d, y=%d }", mType.name(), mX, mY);
    }
}
