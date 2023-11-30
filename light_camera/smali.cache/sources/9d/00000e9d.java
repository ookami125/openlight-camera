package openlight.co.lib.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class PaddingImageView extends ImageView {
    private final Rect mPadding;

    public PaddingImageView(Context context) {
        super(context);
        this.mPadding = new Rect();
    }

    public PaddingImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPadding = new Rect();
    }

    public PaddingImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPadding = new Rect();
    }

    public PaddingImageView(Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mPadding = new Rect();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable background = getBackground();
        if (background != null) {
            background.getPadding(this.mPadding);
            setPadding(this.mPadding.left, this.mPadding.top, this.mPadding.right, this.mPadding.bottom);
        }
    }
}