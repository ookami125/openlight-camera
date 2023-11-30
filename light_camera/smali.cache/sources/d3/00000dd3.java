package openlight.co.camera.view.grid;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import openlight.co.camera.enums.GridMode;
import openlight.co.camera.utils.CamPrefsUtils;
import openlight.co.lib.utils.LogUtil;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class GridView extends View {
    private static final float GOLDEN_RATIO = (float) ((Math.sqrt(5.0d) + 1.0d) / 2.0d);
    private static final int GRID_ALPHA = 153;
    private static final float GRID_OPACITY = 0.6f;
    private static final String TAG = "GridView";
    Runnable captureScreenParam;
    private String mGridType;
    private final GridViewModel mGridViewModel;
    private int mPaddingFront;
    private Paint mPaintGrid;
    private int mPrevViewHeight;
    private int mPrevViewWidth;
    private int mViewHeight;
    private int mViewWidth;

    public GridView(Context context, String str, ViewGroup viewGroup) {
        super(context);
        this.mGridViewModel = GridViewModel.getInstance();
        this.mViewWidth = 0;
        this.mViewHeight = 0;
        this.mPrevViewWidth = 0;
        this.mPrevViewHeight = 0;
        this.mPaddingFront = 0;
        this.captureScreenParam = new Runnable() { // from class: openlight.co.camera.view.grid.GridView.1
            @Override // java.lang.Runnable
            public void run() {
                int previewWidth = GridView.this.mGridViewModel.getPreviewWidth();
                int previewHeight = GridView.this.mGridViewModel.getPreviewHeight();
                if (previewHeight * 4 == previewWidth * 3) {
                    GridView.this.mPaddingFront = 240;
                    GridView.this.mViewWidth = previewWidth;
                    GridView.this.mViewHeight = previewHeight;
                } else if (previewHeight * 16 == previewWidth * 9) {
                    GridView.this.mPaddingFront = 0;
                } else if (previewWidth == previewHeight) {
                    GridView.this.mPaddingFront = 420;
                }
                if (GridView.this.mPrevViewWidth != previewWidth && GridView.this.mPrevViewHeight != previewHeight) {
                    GridView.this.invalidate();
                }
                GridView.this.mPrevViewWidth = previewWidth;
                GridView.this.mPrevViewHeight = previewHeight;
            }
        };
        this.mGridType = str;
        init();
        viewGroup.addView(this);
    }

    public GridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mGridViewModel = GridViewModel.getInstance();
        this.mViewWidth = 0;
        this.mViewHeight = 0;
        this.mPrevViewWidth = 0;
        this.mPrevViewHeight = 0;
        this.mPaddingFront = 0;
        this.captureScreenParam = new Runnable() { // from class: openlight.co.camera.view.grid.GridView.1
            @Override // java.lang.Runnable
            public void run() {
                int previewWidth = GridView.this.mGridViewModel.getPreviewWidth();
                int previewHeight = GridView.this.mGridViewModel.getPreviewHeight();
                if (previewHeight * 4 == previewWidth * 3) {
                    GridView.this.mPaddingFront = 240;
                    GridView.this.mViewWidth = previewWidth;
                    GridView.this.mViewHeight = previewHeight;
                } else if (previewHeight * 16 == previewWidth * 9) {
                    GridView.this.mPaddingFront = 0;
                } else if (previewWidth == previewHeight) {
                    GridView.this.mPaddingFront = 420;
                }
                if (GridView.this.mPrevViewWidth != previewWidth && GridView.this.mPrevViewHeight != previewHeight) {
                    GridView.this.invalidate();
                }
                GridView.this.mPrevViewWidth = previewWidth;
                GridView.this.mPrevViewHeight = previewHeight;
            }
        };
        init();
    }

    public void updateGridType(String str) {
        this.mGridType = str;
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mViewWidth = i;
        this.mViewHeight = i2;
        String str = TAG;
        LogUtil.d(str, "preview Size Changed: " + i + " : " + i2);
    }

    private void init() {
        this.mPaintGrid = new Paint(1);
        this.mPaintGrid.setStrokeWidth(1.0f);
        this.mPaintGrid.setStyle(Paint.Style.STROKE);
        this.mPaintGrid.setColor(-1);
        this.mPaintGrid.setAlpha(GRID_ALPHA);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        char c;
        super.onDraw(canvas);
        updateScreenParams();
        String str = this.mGridType;
        int hashCode = str.hashCode();
        if (hashCode == 52782) {
            if (str.equals(GridMode.GRID_3_3)) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode == 11468117) {
            if (str.equals(GridMode.GRID_GOLDEN_RATIO)) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != 94935104) {
            if (hashCode == 95470367 && str.equals(GridMode.GRID_DENSE)) {
                c = 3;
            }
            c = 65535;
        } else {
            if (str.equals(GridMode.GRID_CROSS)) {
                c = 1;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                drawGrid(canvas, 3);
                return;
            case 1:
                drawGrid(canvas, 2);
                return;
            case 2:
                drawPhiGoldenRatioGrid(canvas);
                return;
            case 3:
                drawGridDense(canvas);
                return;
            default:
                return;
        }
    }

    public void updateScreenParams() {
        this.captureScreenParam.run();
    }

    private void drawGrid(Canvas canvas, int i) {
        if (this.mViewWidth == 0 || this.mViewHeight == 0 || i == 0) {
            return;
        }
        int i2 = this.mViewWidth / i;
        int i3 = this.mViewHeight / i;
        for (int i4 = 1; i4 < i; i4++) {
            float f = i3 * i4;
            canvas.drawLine(this.mPaddingFront, f, this.mViewWidth + this.mPaddingFront, f, this.mPaintGrid);
            int i5 = i2 * i4;
            canvas.drawLine(this.mPaddingFront + i5, 0.0f, this.mPaddingFront + i5, this.mViewHeight, this.mPaintGrid);
        }
    }

    private void drawPhiGoldenRatioGrid(Canvas canvas) {
        if (this.mViewWidth == 0 || this.mViewHeight == 0) {
            return;
        }
        float f = (GOLDEN_RATIO * 2.0f) + 1.0f;
        float f2 = this.mViewWidth / f;
        float f3 = this.mViewHeight / f;
        canvas.drawLine(this.mPaddingFront, f3 * GOLDEN_RATIO, this.mViewWidth + this.mPaddingFront, f3 * GOLDEN_RATIO, this.mPaintGrid);
        canvas.drawLine(this.mPaddingFront, (GOLDEN_RATIO * f3) + f3, this.mViewWidth + this.mPaddingFront, (GOLDEN_RATIO * f3) + f3, this.mPaintGrid);
        canvas.drawLine(this.mPaddingFront + (GOLDEN_RATIO * f2), 0.0f, this.mPaddingFront + (GOLDEN_RATIO * f2), this.mViewHeight, this.mPaintGrid);
        canvas.drawLine(this.mPaddingFront + (GOLDEN_RATIO * f2) + f2, 0.0f, this.mPaddingFront + (GOLDEN_RATIO * f2) + f2, this.mViewHeight, this.mPaintGrid);
    }

    private void drawGridDense(Canvas canvas) {
        if (this.mViewHeight == 0 || this.mViewWidth == 0) {
            return;
        }
        for (int i = 0; i < this.mViewWidth; i += CamPrefsUtils.GRID_DENSE_PIXEL) {
            if (i > 0) {
                canvas.drawLine(this.mPaddingFront + i, 0, this.mPaddingFront + i, this.mViewHeight, this.mPaintGrid);
            }
        }
        for (int i2 = 0; i2 < this.mViewHeight; i2 += CamPrefsUtils.GRID_DENSE_PIXEL) {
            if (i2 != 0) {
                float f = i2;
                canvas.drawLine(this.mPaddingFront + 0, f, this.mPaddingFront + this.mViewWidth, f, this.mPaintGrid);
            }
        }
    }
}