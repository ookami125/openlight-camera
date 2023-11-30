package openlight.co.camera;

import android.content.Context;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class AutoFitTextureView extends TextureView {
    private int mRatioHeight;
    private int mRatioWidth;

    public AutoFitTextureView(Context context) {
        this(context, null);
    }

    public AutoFitTextureView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AutoFitTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mRatioWidth = 0;
        this.mRatioHeight = 0;
    }

    public void setAspectRatio(int i, int i2) {
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Size cannot be negative.");
        }
        this.mRatioWidth = i;
        this.mRatioHeight = i2;
        requestLayout();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.mRatioWidth == 0 || this.mRatioHeight == 0) {
            setMeasuredDimension(size, size2);
        } else if (this.mRatioHeight * size < this.mRatioWidth * size2) {
            setMeasuredDimension(size, (this.mRatioHeight * size) / this.mRatioWidth);
        } else {
            setMeasuredDimension((this.mRatioWidth * size2) / this.mRatioHeight, size2);
        }
    }
}