package openlight.co.camera.view.grid;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import java.util.Locale;
import openlight.co.camera.listener.OnRotateImageListener;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class RotateController extends RelativeLayout implements View.OnTouchListener {
    private static final int DIVIDE_TEMP = 10;
    private static final int N = 27;
    private static final int W = 679;
    private static final int startPosition = 113;
    int bottom;
    int centerPoint;
    int currentX;
    int currentY;
    Display display;
    float lastPoint;
    int left;
    Context mContext;
    private final Rect mDrawBounds;
    OnRotateImageListener mListener;
    Paint mPaintSelected;
    Paint paint;
    private int relAngle;
    int right;
    float sizeLand;
    int top;

    public RotateController(Context context) {
        super(context);
        this.lastPoint = 0.0f;
        this.currentY = -1;
        this.currentX = -1;
        this.sizeLand = 0.0f;
        this.relAngle = 0;
        this.mDrawBounds = new Rect();
    }

    public RotateController(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.lastPoint = 0.0f;
        this.currentY = -1;
        this.currentX = -1;
        this.sizeLand = 0.0f;
        this.relAngle = 0;
        this.mDrawBounds = new Rect();
        this.mContext = context;
        this.paint = new Paint();
        this.paint.setStrokeWidth(5.0f);
        this.paint.setColor(-1);
        this.mPaintSelected = new Paint();
        this.mPaintSelected.setStrokeWidth(6.0f);
        this.mPaintSelected.setColor(-1);
        this.display = ((WindowManager) this.mContext.getSystemService(WindowManager.class)).getDefaultDisplay();
        setOnTouchListener(this);
    }

    public RotateController(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.lastPoint = 0.0f;
        this.currentY = -1;
        this.currentX = -1;
        this.sizeLand = 0.0f;
        this.relAngle = 0;
        this.mDrawBounds = new Rect();
    }

    public void setListener(OnRotateImageListener onRotateImageListener) {
        this.mListener = onRotateImageListener;
    }

    public int getRelAngle() {
        return this.relAngle;
    }

    public void setRelAngle(int i) {
        this.relAngle = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    private boolean isLandScape() {
        return this.mContext.getResources().getConfiguration().orientation == 2;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.left = i;
        this.top = i2;
        this.right = i3;
        this.bottom = i4;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        super.onDraw(canvas);
        this.sizeLand = 26.0f;
        this.paint.setTextSize(40.0f);
        float f = 3.0f;
        int i5 = 27;
        int i6 = 13;
        if (isLandScape()) {
            String str = this.relAngle + "°";
            this.paint.getTextBounds(str, 0, str.length(), this.mDrawBounds);
            int height = this.mDrawBounds.height();
            int i7 = 0;
            while (i7 < 27) {
                this.paint.setColor(Color.parseColor("#baabab"));
                this.paint.setStrokeWidth(f);
                if (i7 == 13) {
                    float f2 = i7;
                    int i8 = i7 + 1;
                    i4 = i7;
                    canvas.drawLine(0.0f, (this.sizeLand * f2) + 113.0f, (i8 + 30) - 10, (this.sizeLand * f2) + 113.0f, this.paint);
                    this.paint.setColor(-1);
                    this.paint.setStrokeWidth(5.0f);
                    canvas.drawText(str, ((i8 * 2) + 30) - 10, (this.sizeLand * f2) + (height / 2) + 113.0f, this.paint);
                } else {
                    i4 = i7;
                    if (i4 < 13) {
                        float f3 = i4;
                        canvas.drawLine(0.0f, (this.sizeLand * f3) + 113.0f, ((i4 + 1) + 20) - 10, (this.sizeLand * f3) + 113.0f, this.paint);
                    } else if (i4 > 13) {
                        float f4 = i4;
                        canvas.drawLine(0.0f, (this.sizeLand * f4) + 113.0f, ((27 - i4) + 20) - 10, (this.sizeLand * f4) + 113.0f, this.paint);
                    }
                }
                i7 = i4 + 1;
                f = 3.0f;
            }
            if (this.currentY != -1) {
                canvas.drawLine(0.0f, this.currentY, 34.0f, this.currentY, this.mPaintSelected);
                return;
            }
            return;
        }
        String format = String.format(Locale.getDefault(), "%s", Integer.valueOf(this.relAngle));
        String str2 = this.relAngle + "°";
        this.paint.getTextBounds(format, 0, format.length(), this.mDrawBounds);
        int width = this.mDrawBounds.width();
        int height2 = this.mDrawBounds.height();
        int i9 = 0;
        while (i9 < i5) {
            this.paint.setColor(Color.parseColor("#baabab"));
            this.paint.setStrokeWidth(3.0f);
            if (i9 == i6) {
                float f5 = i9;
                int i10 = i9 + 1;
                i = i9;
                canvas.drawLine((this.sizeLand * f5) + 113.0f, 0.0f, (this.sizeLand * f5) + 113.0f, (i10 + 30) - 10, this.paint);
                this.paint.setColor(-1);
                this.paint.setStrokeWidth(5.0f);
                canvas.drawText(str2, ((this.sizeLand * f5) - (width / 2)) + 113.0f, (((i10 * 2) + height2) + 30) - 10, this.paint);
            } else {
                int i11 = i6;
                i = i9;
                if (i < i11) {
                    float f6 = i;
                    canvas.drawLine((this.sizeLand * f6) + 113.0f, 0.0f, (this.sizeLand * f6) + 113.0f, ((i + 1) + 20) - 10, this.paint);
                } else {
                    i2 = i11;
                    if (i > i2) {
                        float f7 = i;
                        i3 = 27;
                        canvas.drawLine((this.sizeLand * f7) + 113.0f, 0.0f, (this.sizeLand * f7) + 113.0f, ((27 - i) + 20) - 10, this.paint);
                        i9 = i + 1;
                        i6 = i2;
                        i5 = i3;
                    }
                    i3 = 27;
                    i9 = i + 1;
                    i6 = i2;
                    i5 = i3;
                }
            }
            i2 = 13;
            i3 = 27;
            i9 = i + 1;
            i6 = i2;
            i5 = i3;
        }
        if (this.currentX != -1) {
            canvas.drawLine(this.currentX, 0.0f, this.currentX, 34.0f, this.mPaintSelected);
        }
    }

    public void transferXToY() {
        this.currentY = 906 - this.currentX;
    }

    public void transferYToX() {
        this.currentX = 906 - this.currentY;
    }

    public void resetAngel() {
        this.currentX = 453;
        this.currentY = 453;
        this.relAngle = 0;
        invalidate();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction() & motionEvent.getActionMasked()) {
            case 0:
                if (isLandScape()) {
                    this.currentY = (int) motionEvent.getY();
                    if (this.currentY < 113) {
                        this.currentY = 113;
                    }
                    if (this.currentY > (this.sizeLand * 26.0f) + 113.0f) {
                        this.currentY = (int) ((this.sizeLand * 26.0f) + 113.0f);
                    }
                    int i = this.currentY - 113;
                    int i2 = (int) ((this.sizeLand * 26.0f) / 2.0f);
                    if (i < i2) {
                        this.relAngle = 45 - ((i * 45) / i2);
                    } else if (i == i2) {
                        this.relAngle = 0;
                    } else {
                        this.relAngle = 45 - ((i * 90) / (i2 * 2));
                    }
                    transferYToX();
                } else {
                    this.currentX = (int) motionEvent.getX();
                    if (this.currentX < 113) {
                        this.currentX = 113;
                    }
                    if (this.currentX > (this.sizeLand * 26.0f) + 113.0f) {
                        this.currentX = (int) ((this.sizeLand * 26.0f) + 113.0f);
                    }
                    int i3 = this.currentX - 113;
                    int i4 = (int) ((this.sizeLand * 26.0f) / 2.0f);
                    if (i3 < i4) {
                        this.relAngle = -(((i3 * (-45)) / i4) + 45);
                    } else if (this.currentX == i4) {
                        this.relAngle = 0;
                    } else {
                        this.relAngle = ((i3 * 90) / (i4 * 2)) - 45;
                    }
                    transferXToY();
                }
                invalidate();
                this.mListener.setRotate(this.relAngle);
                return true;
            case 1:
                this.lastPoint = 0.0f;
                return true;
            case 2:
                if (this.lastPoint == 0.0f) {
                    this.lastPoint = isLandScape() ? motionEvent.getY() : motionEvent.getX();
                }
                if (isLandScape()) {
                    float y = motionEvent.getY() - this.lastPoint;
                    if (Math.abs(y) > 10.0f) {
                        this.currentY = (int) (this.currentY + y);
                        this.mListener.setRotate(y > 0.0f ? 0.5f : -0.5f);
                        if (this.currentY < 113) {
                            this.currentY = 113;
                        }
                        if (this.currentY > (this.sizeLand * 26.0f) + 113.0f) {
                            this.currentY = (int) ((this.sizeLand * 26.0f) + 113.0f);
                        }
                        this.lastPoint = motionEvent.getY();
                        int i5 = this.currentY - 113;
                        int i6 = (int) ((this.sizeLand * 26.0f) / 2.0f);
                        if (i5 < i6) {
                            this.relAngle = 45 - ((i5 * 45) / i6);
                        } else if (i5 == i6) {
                            this.relAngle = 0;
                        } else {
                            this.relAngle = 45 - ((i5 * 90) / (i6 * 2));
                        }
                    }
                    transferYToX();
                } else {
                    float x = motionEvent.getX() - this.lastPoint;
                    if (Math.abs(x) > 10.0f) {
                        this.currentX = (int) (this.currentX + x);
                        this.mListener.setRotate(x > 0.0f ? 0.1f : -0.1f);
                        if (this.currentX < 113) {
                            this.currentX = 113;
                        }
                        if (this.currentX > (this.sizeLand * 26.0f) + 113.0f) {
                            this.currentX = (int) ((this.sizeLand * 26.0f) + 113.0f);
                        }
                        this.lastPoint = motionEvent.getX();
                        int i7 = this.currentX - 113;
                        int i8 = (int) ((this.sizeLand * 26.0f) / 2.0f);
                        if (i7 < i8) {
                            this.relAngle = -(((i7 * (-45)) / i8) + 45);
                        } else if (this.currentX == i8) {
                            this.relAngle = 0;
                        } else {
                            this.relAngle = ((i7 * 90) / (i8 * 2)) - 45;
                        }
                    }
                    transferXToY();
                }
                invalidate();
                this.mListener.setRotate(this.relAngle);
                return true;
            default:
                return true;
        }
    }

    private void calculateRotate(float f) {
        if (this.mListener != null) {
            this.mListener.setRotate(f);
        }
    }
}