package openlight.co.camera.view.primarycontrol;

import android.content.Context;
import android.support.annotation.LayoutRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import openlight.co.lib.utils.LogUtil;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public abstract class BaseControl implements View.OnClickListener {
    private static final String TAG = "BaseControl";
    protected final View mBaseControlView;
    protected final Context mContext;
    protected View.OnClickListener mOnClickListener;

    public BaseControl(Context context, @LayoutRes int i, ViewGroup viewGroup) {
        this.mContext = context;
        this.mBaseControlView = LayoutInflater.from(this.mContext).inflate(i, viewGroup, false);
        this.mBaseControlView.setOnClickListener(this);
        LogUtil.d(TAG, "layout inflated");
    }

    public void setVisibility(boolean z) {
        this.mBaseControlView.setVisibility(z ? 0 : 8);
    }

    public boolean isVisible() {
        return this.mBaseControlView.getVisibility() == 0;
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.mOnClickListener = onClickListener;
    }

    public View getView() {
        return this.mBaseControlView;
    }
}