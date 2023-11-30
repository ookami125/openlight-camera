package openlight.co.lib.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.TextView;
import openlight.co.lib.R;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class PressSensitiveTextView extends TextView {
    private float mOriginalTextSize;
    private float mTextSizeRatio;

    public PressSensitiveTextView(Context context) {
        super(context);
        this.mTextSizeRatio = 1.0f;
    }

    public PressSensitiveTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTextSizeRatio = 1.0f;
        init(attributeSet);
    }

    public PressSensitiveTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTextSizeRatio = 1.0f;
        init(attributeSet);
    }

    public PressSensitiveTextView(Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mTextSizeRatio = 1.0f;
        init(attributeSet);
    }

    public float getTextSizeRatio() {
        return this.mTextSizeRatio;
    }

    public void setTextSizeRatio(float f) {
        this.mTextSizeRatio = f;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        boolean isPressed = isPressed();
        super.setPressed(z);
        if (z == isPressed || this.mTextSizeRatio == 1.0f) {
            return;
        }
        if (z) {
            this.mOriginalTextSize = getTextSize();
            setTextSize(0, (int) (this.mOriginalTextSize * this.mTextSizeRatio));
            return;
        }
        setTextSize(0, (int) this.mOriginalTextSize);
    }

    private void init(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.PressSensitiveTextView, 0, 0);
        setTextSizeRatio(obtainStyledAttributes.getFloat(R.styleable.PressSensitiveTextView_scaleFactor, 1.0f));
        obtainStyledAttributes.recycle();
    }
}