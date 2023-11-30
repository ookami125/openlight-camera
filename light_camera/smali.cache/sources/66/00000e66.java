package openlight.co.lib.customviews;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import openlight.co.lib.R;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class FtuScreen extends FrameLayout implements View.OnClickListener {
    private TextView mBody;
    private String mBodyText;
    private TextView mButton1;
    private String mButton1Text;
    private TextView mButton2;
    private String mButton2Text;
    private ImageView mImage;
    private Drawable mImageDrawable;
    private OnButtonClickListener mListener;
    private TextView mSubTitle;
    private String mSubTitleText;
    private TextView mTitle;
    private String mTitleText;

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface OnButtonClickListener {
        void onButtonClicked(int i);
    }

    public FtuScreen(Context context) {
        super(context);
        init(context, null);
    }

    public FtuScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public FtuScreen(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    public void setImage(Drawable drawable) {
        this.mImage.setImageDrawable(drawable);
    }

    public void setTitle(String str) {
        setText(this.mTitle, str);
    }

    public void setSubTitle(String str) {
        setText(this.mSubTitle, str);
    }

    public void setBody(String str) {
        setText(this.mBody, str);
    }

    public void setButton1(String str) {
        setText(this.mButton1, str);
    }

    public void setButton2(String str) {
        setText(this.mButton2, str);
    }

    public void setOnButtonClickListener(@Nullable OnButtonClickListener onButtonClickListener) {
        this.mListener = onButtonClickListener;
    }

    public void setButtonVisibility(int i, boolean z) {
        TextView textView;
        if (i == 0) {
            textView = this.mButton1;
        } else {
            textView = i == 1 ? this.mButton2 : null;
        }
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mListener != null) {
            if (view == this.mButton1) {
                this.mListener.onButtonClicked(0);
            } else if (view == this.mButton2) {
                this.mListener.onButtonClicked(1);
            }
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        inflate(getContext(), R.layout.ftu_screen, this);
        this.mImage = (ImageView) findViewById(R.id.image);
        this.mTitle = (TextView) findViewById(R.id.title);
        this.mSubTitle = (TextView) findViewById(R.id.subTitle);
        this.mBody = (TextView) findViewById(R.id.body);
        this.mButton1 = (TextView) findViewById(R.id.button1);
        this.mButton2 = (TextView) findViewById(R.id.button2);
        this.mButton1.setOnClickListener(this);
        this.mButton2.setOnClickListener(this);
        setImage(this.mImageDrawable);
        setTitle(this.mTitleText);
        setSubTitle(this.mSubTitleText);
        setBody(this.mBodyText);
        setButton1(this.mButton1Text);
        setButton2(this.mButton2Text);
    }

    private void setText(TextView textView, String str) {
        if (TextUtils.isEmpty(str)) {
            textView.setVisibility(8);
            return;
        }
        textView.setVisibility(0);
        textView.setText(str);
    }

    private void init(Context context, @Nullable AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.FtuScreen, 0, 0);
            try {
                this.mImageDrawable = obtainStyledAttributes.getDrawable(R.styleable.FtuScreen_ftuImage);
                this.mTitleText = obtainStyledAttributes.getString(R.styleable.FtuScreen_ftuTitle);
                this.mSubTitleText = obtainStyledAttributes.getString(R.styleable.FtuScreen_ftuSubTitle);
                this.mBodyText = obtainStyledAttributes.getString(R.styleable.FtuScreen_ftuBody);
                this.mButton1Text = obtainStyledAttributes.getString(R.styleable.FtuScreen_ftuButton1);
                this.mButton2Text = obtainStyledAttributes.getString(R.styleable.FtuScreen_ftuButton2);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        setOnClickListener(this);
    }
}