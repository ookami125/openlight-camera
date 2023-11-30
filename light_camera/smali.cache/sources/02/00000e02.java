package openlight.co.camera.view.ripple;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.support.annotation.ColorRes;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.animation.ScaleAnimation;
import android.widget.AdapterView;
import android.widget.RelativeLayout;
import openlight.co.camera.R;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class RippleViewOnClick extends RelativeLayout {
    private int durationEmpty;
    private GestureDetector gestureDetector;
    private Boolean hasToZoom;
    private Boolean isCentered;
    private boolean mAnimationRunning;
    private Handler mCanvasHandler;
    private int mFrameRate;
    private int mHeight;
    private float mRadiusMax;
    private int mRippleAnimation;
    private int mRippleDuration;
    private int mWidth;
    private OnRippleCompleteListener onCompletionListener;
    private Bitmap originBitmap;
    private Paint paint;
    private int rippleColor;
    private int ripplePadding;
    private Integer rippleType;
    private final Runnable runnable;
    private ScaleAnimation scaleAnimation;
    private int timer;
    private int timerEmpty;
    private float x;
    private float y;
    private int zoomDuration;
    private float zoomScale;

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface OnRippleCompleteListener {
        void onComplete(RippleViewOnClick rippleViewOnClick);
    }

    public RippleViewOnClick(Context context) {
        super(context);
        this.mFrameRate = 10;
        this.mRippleDuration = 400;
        this.mRippleAnimation = 90;
        this.mRadiusMax = 0.0f;
        this.mAnimationRunning = false;
        this.timer = 0;
        this.timerEmpty = 0;
        this.durationEmpty = -1;
        this.x = -1.0f;
        this.y = -1.0f;
        this.runnable = new Runnable() { // from class: openlight.co.camera.view.ripple.RippleViewOnClick.1
            @Override // java.lang.Runnable
            public void run() {
                RippleViewOnClick.this.invalidate();
            }
        };
    }

    public RippleViewOnClick(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFrameRate = 10;
        this.mRippleDuration = 400;
        this.mRippleAnimation = 90;
        this.mRadiusMax = 0.0f;
        this.mAnimationRunning = false;
        this.timer = 0;
        this.timerEmpty = 0;
        this.durationEmpty = -1;
        this.x = -1.0f;
        this.y = -1.0f;
        this.runnable = new Runnable() { // from class: openlight.co.camera.view.ripple.RippleViewOnClick.1
            @Override // java.lang.Runnable
            public void run() {
                RippleViewOnClick.this.invalidate();
            }
        };
        init(context, attributeSet);
    }

    public RippleViewOnClick(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFrameRate = 10;
        this.mRippleDuration = 400;
        this.mRippleAnimation = 90;
        this.mRadiusMax = 0.0f;
        this.mAnimationRunning = false;
        this.timer = 0;
        this.timerEmpty = 0;
        this.durationEmpty = -1;
        this.x = -1.0f;
        this.y = -1.0f;
        this.runnable = new Runnable() { // from class: openlight.co.camera.view.ripple.RippleViewOnClick.1
            @Override // java.lang.Runnable
            public void run() {
                RippleViewOnClick.this.invalidate();
            }
        };
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        if (isInEditMode()) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RippleViewOnClick);
        this.rippleColor = obtainStyledAttributes.getColor(2, getResources().getColor(R.color.primaryMarkColorLight));
        this.rippleType = Integer.valueOf(obtainStyledAttributes.getInt(6, 0));
        this.hasToZoom = Boolean.valueOf(obtainStyledAttributes.getBoolean(7, false));
        this.isCentered = Boolean.valueOf(obtainStyledAttributes.getBoolean(1, false));
        this.mRippleDuration = obtainStyledAttributes.getInteger(4, this.mRippleDuration);
        this.mFrameRate = obtainStyledAttributes.getInteger(3, this.mFrameRate);
        this.mRippleAnimation = obtainStyledAttributes.getInteger(0, this.mRippleAnimation);
        this.ripplePadding = obtainStyledAttributes.getDimensionPixelSize(5, 0);
        this.mCanvasHandler = new Handler();
        this.zoomScale = obtainStyledAttributes.getFloat(9, 1.03f);
        this.zoomDuration = obtainStyledAttributes.getInt(8, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        obtainStyledAttributes.recycle();
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.rippleColor);
        this.paint.setAlpha(this.mRippleAnimation);
        setWillNotDraw(false);
        this.gestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: openlight.co.camera.view.ripple.RippleViewOnClick.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                super.onLongPress(motionEvent);
                RippleViewOnClick.this.animateRipple(motionEvent);
                RippleViewOnClick.this.sendClickEvent(true);
            }
        });
        setDrawingCacheEnabled(true);
        setClickable(true);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.mAnimationRunning) {
            canvas.save();
            if (this.mRippleDuration <= this.timer * this.mFrameRate) {
                this.mAnimationRunning = false;
                this.timer = 0;
                this.durationEmpty = -1;
                this.timerEmpty = 0;
                if (Build.VERSION.SDK_INT != 23) {
                    canvas.restore();
                }
                invalidate();
                if (this.onCompletionListener != null) {
                    this.onCompletionListener.onComplete(this);
                    return;
                }
                return;
            }
            this.mCanvasHandler.postDelayed(this.runnable, this.mFrameRate);
            if (this.timer == 0) {
                canvas.save();
            }
            canvas.drawCircle(this.x, this.y, this.mRadiusMax * ((this.timer * this.mFrameRate) / this.mRippleDuration), this.paint);
            this.paint.setColor(Color.parseColor("#ffff4444"));
            if (this.rippleType.intValue() == 1 && this.originBitmap != null && (this.timer * this.mFrameRate) / this.mRippleDuration > 0.4f) {
                if (this.durationEmpty == -1) {
                    this.durationEmpty = this.mRippleDuration - (this.timer * this.mFrameRate);
                }
                this.timerEmpty++;
                Bitmap circleBitmap = getCircleBitmap((int) (this.mRadiusMax * ((this.timerEmpty * this.mFrameRate) / this.durationEmpty)));
                canvas.drawBitmap(circleBitmap, 0.0f, 0.0f, this.paint);
                circleBitmap.recycle();
            }
            this.paint.setColor(this.rippleColor);
            if (this.rippleType.intValue() == 1) {
                if ((this.timer * this.mFrameRate) / this.mRippleDuration > 0.6f) {
                    this.paint.setAlpha((int) (this.mRippleAnimation - (this.mRippleAnimation * ((this.timerEmpty * this.mFrameRate) / this.durationEmpty))));
                } else {
                    this.paint.setAlpha(this.mRippleAnimation);
                }
            } else {
                this.paint.setAlpha((int) (this.mRippleAnimation - (this.mRippleAnimation * ((this.timer * this.mFrameRate) / this.mRippleDuration))));
            }
            this.timer++;
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mWidth = i;
        this.mHeight = i2;
        this.scaleAnimation = new ScaleAnimation(1.0f, this.zoomScale, 1.0f, this.zoomScale, i / 2, i2 / 2);
        this.scaleAnimation.setDuration(this.zoomDuration);
        this.scaleAnimation.setRepeatMode(2);
        this.scaleAnimation.setRepeatCount(1);
    }

    public void animateRipple(MotionEvent motionEvent) {
        createAnimation(motionEvent.getX(), motionEvent.getY());
    }

    public void animateRipple(float f, float f2) {
        createAnimation(f, f2);
    }

    private void createAnimation(float f, float f2) {
        if (!isEnabled() || this.mAnimationRunning) {
            return;
        }
        if (this.hasToZoom.booleanValue()) {
            startAnimation(this.scaleAnimation);
        }
        this.mRadiusMax = Math.max(this.mWidth, this.mHeight);
        if (this.rippleType.intValue() != 2) {
            this.mRadiusMax /= 2.0f;
        }
        this.mRadiusMax -= this.ripplePadding;
        if (this.isCentered.booleanValue() || this.rippleType.intValue() == 1) {
            this.x = getMeasuredWidth() / 2;
            this.y = getMeasuredHeight() / 2;
        } else {
            this.x = f;
            this.y = f2;
        }
        this.mAnimationRunning = true;
        if (this.rippleType.intValue() == 1 && this.originBitmap == null) {
            this.originBitmap = getDrawingCache(true);
        }
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.gestureDetector.onTouchEvent(motionEvent)) {
            animateRipple(motionEvent);
            sendClickEvent(false);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        onTouchEvent(motionEvent);
        return super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendClickEvent(Boolean bool) {
        if (getParent() instanceof AdapterView) {
            AdapterView<?> adapterView = (AdapterView) getParent();
            int positionForView = adapterView.getPositionForView(this);
            long itemIdAtPosition = adapterView.getItemIdAtPosition(positionForView);
            if (bool.booleanValue()) {
                if (adapterView.getOnItemLongClickListener() != null) {
                    adapterView.getOnItemLongClickListener().onItemLongClick(adapterView, this, positionForView, itemIdAtPosition);
                }
            } else if (adapterView.getOnItemClickListener() != null) {
                adapterView.getOnItemClickListener().onItemClick(adapterView, this, positionForView, itemIdAtPosition);
            }
        }
    }

    private Bitmap getCircleBitmap(int i) {
        Bitmap createBitmap = Bitmap.createBitmap(this.originBitmap.getWidth(), this.originBitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        float f = i;
        Rect rect = new Rect((int) (this.x - f), (int) (this.y - f), (int) (this.x + f), (int) (this.y + f));
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        canvas.drawCircle(this.x, this.y, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(this.originBitmap, rect, rect, paint);
        return createBitmap;
    }

    @ColorRes
    public void setRippleColor(int i) {
        this.rippleColor = getResources().getColor(i);
    }

    public int getRippleColor() {
        return this.rippleColor;
    }

    public RippleType getRippleType() {
        return RippleType.values()[this.rippleType.intValue()];
    }

    public void setRippleType(RippleType rippleType) {
        this.rippleType = Integer.valueOf(rippleType.ordinal());
    }

    public Boolean isCentered() {
        return this.isCentered;
    }

    public void setCentered(Boolean bool) {
        this.isCentered = bool;
    }

    public int getRipplePadding() {
        return this.ripplePadding;
    }

    public void setRipplePadding(int i) {
        this.ripplePadding = i;
    }

    public Boolean isZooming() {
        return this.hasToZoom;
    }

    public void setZooming(Boolean bool) {
        this.hasToZoom = bool;
    }

    public float getZoomScale() {
        return this.zoomScale;
    }

    public void setZoomScale(float f) {
        this.zoomScale = f;
    }

    public int getZoomDuration() {
        return this.zoomDuration;
    }

    public void setZoomDuration(int i) {
        this.zoomDuration = i;
    }

    public int getmRippleDuration() {
        return this.mRippleDuration;
    }

    public void setmRippleDuration(int i) {
        this.mRippleDuration = i;
    }

    public int getmFrameRate() {
        return this.mFrameRate;
    }

    public void setmFrameRate(int i) {
        this.mFrameRate = i;
    }

    public int getmRippleAnimation() {
        return this.mRippleAnimation;
    }

    public void setmRippleAnimation(int i) {
        this.mRippleAnimation = i;
    }

    public void setOnRippleCompleteListener(OnRippleCompleteListener onRippleCompleteListener) {
        this.onCompletionListener = onRippleCompleteListener;
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public enum RippleType {
        SIMPLE(0),
        DOUBLE(1),
        RECTANGLE(2);
        
        int type;

        RippleType(int i) {
            this.type = i;
        }
    }
}