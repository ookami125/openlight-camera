package openlight.co.camera.view.rotate;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import openlight.co.camera.R;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class RotateLayout extends ViewGroup {
    private int mAngle;
    private boolean mAngleChanged;
    private final float[] mChildTouchPoint;
    private final RectF mF1TempRect;
    private final RectF mF2TempRect;
    private final Matrix mRotateMatrix;
    private final Rect mRotationViewRect;
    private final float[] mViewTouchPoint;

    public RotateLayout(Context context) {
        this(context, null);
    }

    public RotateLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RotateLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.mRotateMatrix = new Matrix();
        this.mRotationViewRect = new Rect();
        this.mF1TempRect = new RectF();
        this.mF2TempRect = new RectF();
        this.mViewTouchPoint = new float[2];
        this.mChildTouchPoint = new float[2];
        this.mAngleChanged = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RotateLayout);
        this.mAngle = fixAngle(obtainStyledAttributes.getInt(0, 0));
        obtainStyledAttributes.recycle();
        setWillNotDraw(false);
    }

    public int getAngle() {
        return this.mAngle;
    }

    public void setAngle(int i) {
        int fixAngle = fixAngle(i);
        if (this.mAngle != fixAngle) {
            this.mAngle = fixAngle;
            this.mAngleChanged = true;
            requestLayout();
        }
    }

    public View getView() {
        if (getChildCount() > 0) {
            return getChildAt(0);
        }
        return null;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        View view = getView();
        if (view != null) {
            if (Math.abs(this.mAngle % 180) == 90) {
                measureChild(view, i2, i);
                setMeasuredDimension(resolveSize(view.getMeasuredHeight(), i), resolveSize(view.getMeasuredWidth(), i2));
                return;
            }
            measureChild(view, i, i2);
            setMeasuredDimension(resolveSize(view.getMeasuredWidth(), i), resolveSize(view.getMeasuredHeight(), i2));
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mAngleChanged || z) {
            RectF rectF = this.mF1TempRect;
            RectF rectF2 = this.mF2TempRect;
            rectF.set(0.0f, 0.0f, i3 - i, i4 - i2);
            this.mRotateMatrix.setRotate(this.mAngle, rectF.centerX(), rectF.centerY());
            this.mRotateMatrix.mapRect(rectF2, rectF);
            rectF2.round(this.mRotationViewRect);
            this.mAngleChanged = false;
        }
        View view = getView();
        if (view != null) {
            view.layout(this.mRotationViewRect.left, this.mRotationViewRect.top, this.mRotationViewRect.right, this.mRotationViewRect.bottom);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        canvas.rotate(this.mAngle, getWidth() / 2.0f, getHeight() / 2.0f);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        invalidate();
        return super.invalidateChildInParent(iArr, rect);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.mViewTouchPoint[0] = motionEvent.getX();
        this.mViewTouchPoint[1] = motionEvent.getY();
        this.mRotateMatrix.mapPoints(this.mChildTouchPoint, this.mViewTouchPoint);
        motionEvent.setLocation(this.mChildTouchPoint[0], this.mChildTouchPoint[1]);
        boolean dispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        motionEvent.setLocation(this.mViewTouchPoint[0], this.mViewTouchPoint[1]);
        return dispatchTouchEvent;
    }

    private static int fixAngle(int i) {
        return (i / 90) * 90;
    }
}