package openlight.co.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuffXfermode;
import android.graphics.BitmapFactory.Options;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.media.Image;
import android.media.Image.Plane;
import android.os.AsyncTask;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.Arrays;
import openlight.co.lib.R.styleable;
import openlight.co.lib.utils.LogUtil;
import openlight.co.lib.utils.Utils;

public class HistogramView extends View {
    private static final int BUCKETS = 256;
    private static final int CHANNELS = 4;
    private static final int HIGH_CLIP = 3;
    private static final int OFFSET_B = 2;
    private static final int OFFSET_G = 1;
    private static final int OFFSET_R = 0;
    private static final int OFFSET_Y = 3;
    private static final int STATE_COLOR = 1;
    private static final int STATE_COUNT = 3;
    private static final int STATE_GRAY = 0;
    private static final int STATE_ICON = 2;
    private static final String TAG = Utils.safeTag(HistogramView.class);
    private int mBorderColor = 2113929215;
    private final float[] mCounts = new float[1024];
    private HistogramView.HistogramHelper mHistogramHelper;
    private final Path mHistogramPath = new Path();
    private float mMax;
    private final Paint mPaint = new Paint();
    private int mState = 0;
    private boolean mUseIcon;

    public HistogramView(Context var1) {
        super(var1);
        this.init(var1, (AttributeSet)null);
    }

    public HistogramView(Context var1, @Nullable AttributeSet var2) {
        super(var1, var2);
        this.init(var1, var2);
    }

    public HistogramView(Context var1, @Nullable AttributeSet var2, int var3) {
        super(var1, var2, var3);
        this.init(var1, var2);
    }

    public HistogramView(Context var1, @Nullable AttributeSet var2, int var3, int var4) {
        super(var1, var2, var3, var4);
        this.init(var1, var2);
    }

    private void drawHistogram(Canvas var1, float[] var2, int var3, int var4, Mode var5, float var6) {
        float var8 = (float)var1.getWidth();
        float var7 = (float)var1.getHeight();
        var8 /= 256.0F;
        float var9 = var7 / var6;
        this.mPaint.reset();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStrokeWidth(var8);
        this.mPaint.setStyle(Style.STROKE);
        this.mPaint.setColor(var4);
        this.mPaint.setXfermode(new PorterDuffXfermode(var5));
        this.mHistogramPath.reset();

        for(var6 = var8 / 2.0F + 0.0F; var3 < 1024; var3 += 4) {
            float var10 = var2[var3];
            if (var10 > 0.0F) {
                var10 = Math.min(var7, var10 * var9);
                this.mHistogramPath.moveTo(var6, var7);
                this.mHistogramPath.lineTo(var6, var7 - var10);
            }

            var6 += var8;
        }

        this.mHistogramPath.close();
        var1.drawPath(this.mHistogramPath, this.mPaint);
    }

    private void init(Context var1, AttributeSet var2) {
        this.setClickable(true);
        int var3 = 0;
        if (var2 != null) {
            TypedArray var7 = var1.getTheme().obtainStyledAttributes(var2, styleable.HistogramView, 0, 0);

            try {
                this.mUseIcon = var7.getBoolean(styleable.HistogramView_useIcon, true);
                this.mBorderColor = var7.getColor(styleable.HistogramView_borderColor, this.mBorderColor);
            } finally {
                var7.recycle();
            }
        }

        if (this.isInEditMode()) {
            int var4 = this.mCounts.length;

            float[] var8;
            for(var8 = new float[var4]; var3 < var4; ++var3) {
                var8[var3] = (float)var3;
            }

            this.setCounts(var8);
        }

    }

    private void nextState() {
        int var1 = this.mState;

        do {
            var1 = (var1 + 1) % 3;
        } while(var1 == 2 && !this.mUseIcon);

        this.setState(var1);
    }

    private void setMax() {
        if (this.mState == 1) {
            this.mMax = Math.max(Math.max(this.findMax(this.mCounts, 0), this.findMax(this.mCounts, 1)), this.findMax(this.mCounts, 2));
        } else {
            this.mMax = this.findMax(this.mCounts, 3);
        }

    }

    public void cancelUpdate() {
        HistogramView.HistogramHelper var1 = this.mHistogramHelper;
        if (var1 != null) {
            var1.cancel(true);
        }

    }

    float findMax(float[] var1, int var2) {
        var1 = (float[])var1.clone();
        Arrays.sort(var1);
        float var4 = 0.0F;

        float var3;
        for(int var6 = 0; var6 < 1012; var4 = var3) {
            float var5 = var1[var6 + var2];
            var3 = var4;
            if (var5 > var4) {
                var3 = var5;
            }

            var6 += 4;
        }

        return var4 * 6.0F / 5.0F;
    }

    public float[] getCounts() {
        return this.mCounts;
    }

    void helperFinished(HistogramView.HistogramHelper var1) {
        if (this.mHistogramHelper == var1) {
            this.mHistogramHelper = null;
        }

    }

    protected void onDraw(Canvas var1) {
        switch(this.mState) {
        case 0:
        case 2:
            this.drawHistogram(var1, this.mCounts, 3, -1, Mode.SCREEN, this.mMax);
            break;
        case 1:
            this.drawHistogram(var1, this.mCounts, 0, -65536, Mode.SCREEN, this.mMax);
            this.drawHistogram(var1, this.mCounts, 1, -16711936, Mode.SCREEN, this.mMax);
            this.drawHistogram(var1, this.mCounts, 2, -16776961, Mode.SCREEN, this.mMax);
        }

        float var2 = (float)this.getWidth();
        int var5 = this.getHeight();
        this.mPaint.reset();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStrokeWidth(var2 / 256.0F);
        this.mPaint.setStyle(Style.STROKE);
        this.mPaint.setColor(this.mBorderColor);
        float var3 = (float)var5;
        var1.drawRect(0.0F, 0.0F, var2, var3, this.mPaint);

        for(var5 = 25; var5 <= 75; var5 += 25) {
            float var4 = (float)var5 * var2 / 100.0F;
            var1.drawLine(var4, 0.0F, var4, var3, this.mPaint);
        }

    }

    protected void onMeasure(int var1, int var2) {
        super.onMeasure(var1, var2);
        if (this.mState == 2) {
            this.setMeasuredDimension(this.getMinimumWidth(), this.getMinimumHeight());
        }

    }

    public boolean performClick() {
        this.nextState();
        return super.performClick();
    }

    public void setBitmap(Bitmap var1, HistogramView.OnDrawListener var2, boolean var3) {
        this.setBitmap(var1, var2, var3, -1, -1, -1, -1);
    }

    public void setBitmap(Bitmap var1, HistogramView.OnDrawListener var2, boolean var3, int var4, int var5, int var6, int var7) {
        if (this.mHistogramHelper != null) {
            this.mHistogramHelper.cancel(true);
        }

        this.mHistogramHelper = new HistogramView.HistogramHelper(var1, this, var3, var2, var4, var5, var6, var7);
        this.mHistogramHelper.execute(new float[0]);
    }

    public void setCounts(float[] var1) {
        if (var1 == null) {
            Arrays.fill(this.mCounts, 0.0F);
        } else {
            int var2 = this.mCounts.length;
            if (var1.length == var2) {
                System.arraycopy(var1, 0, this.mCounts, 0, var2);
            }
        }

        this.setMax();
        this.invalidate();
    }

    public void setImage(Image var1, HistogramView.OnDrawListener var2) {
        if (this.mHistogramHelper != null) {
            this.mHistogramHelper.cancel(true);
        }

        this.mHistogramHelper = new HistogramView.HistogramHelper(var1, this, true, var2);
        this.mHistogramHelper.execute(new float[0]);
    }

    public void setImagePath(String var1, HistogramView.OnDrawListener var2) {
        if (this.mHistogramHelper != null) {
            this.mHistogramHelper.cancel(true);
        }

        this.mHistogramHelper = new HistogramView.HistogramHelper(var1, this, var2);
        this.mHistogramHelper.execute(new float[0]);
    }

    public void setState(int var1) {
        if (var1 != this.mState) {
            int var2 = this.mState;
            boolean var3 = false;
            boolean var4;
            if (var2 == 2) {
                var4 = true;
            } else {
                var4 = false;
            }

            if (var1 == 2) {
                var3 = true;
            }

            if (var4 != var3) {
                this.requestLayout();
            }

            this.mState = var1;
            this.setMax();
            this.invalidate();
        }

    }

    public static class HistogramHelper extends AsyncTask {
        private static final int MAX_BITMAP_SIZE = 800;
        private Bitmap mBitmap;
        private float[] mCounts;
        private int mCropBottom = -1;
        private int mCropLeft = -1;
        private int mCropRight = -1;
        private int mCropTop = -1;
        private final WeakReference mHistogram;
        private Image mImage;
        private String mImagePath;
        private final HistogramView.OnDrawListener mListener;
        private final boolean mRecycleBitmap;

        HistogramHelper(Bitmap var1, HistogramView var2, boolean var3, HistogramView.OnDrawListener var4, int var5, int var6, int var7, int var8) {
            this.mBitmap = var1;
            this.mHistogram = new WeakReference(var2);
            this.mRecycleBitmap = var3;
            this.mListener = var4;
            this.mCropLeft = var5;
            this.mCropTop = var6;
            this.mCropRight = var7;
            this.mCropBottom = var8;
        }

        HistogramHelper(Image var1, HistogramView var2, boolean var3, HistogramView.OnDrawListener var4) {
            this.mImage = var1;
            this.mHistogram = new WeakReference(var2);
            this.mRecycleBitmap = var3;
            this.mListener = var4;
        }

        HistogramHelper(String var1, HistogramView var2, HistogramView.OnDrawListener var3) {
            this.mImagePath = var1;
            this.mHistogram = new WeakReference(var2);
            this.mRecycleBitmap = true;
            this.mListener = var3;
        }

        HistogramHelper(float[] var1, HistogramView var2, boolean var3, HistogramView.OnDrawListener var4) {
            this.mCounts = var1;
            this.mHistogram = new WeakReference(var2);
            this.mRecycleBitmap = var3;
            this.mListener = var4;
        }

        private float[] getCountsFromBitmap(Bitmap var1, boolean var2) {
            int var9 = var1.getWidth();
            int var10 = var1.getHeight();
            boolean var4;
            if (this.mCropLeft < 0 || this.mCropLeft == 0 && this.mCropTop == 0 && this.mCropRight == var9 && this.mCropBottom == var10) {
                var4 = false;
            } else {
                var4 = true;
            }

            int var5;
            int var6;
            int var7;
            int var16;
            if (var4) {
                var5 = this.mCropLeft;
                var6 = this.mCropTop;
                var16 = this.mCropRight - var5;
                var7 = this.mCropBottom - var6;
            } else {
                var16 = var9;
                var7 = var10;
                var5 = 0;
                var6 = 0;
            }

            boolean var8;
            if (var16 <= 800 && var7 <= 800) {
                var8 = false;
            } else {
                var8 = true;
            }

            Bitmap var11;
            if (var8) {
                float var3 = 800.0F / (float)Math.max(var16, var7);
                var11 = Bitmap.createScaledBitmap(var1, Math.round((float)var9 * var3), Math.round((float)var10 * var3), false);
                var5 = Math.round((float)var5 * var3);
                var6 = Math.round((float)var6 * var3);
                var16 = Math.round((float)var16 * var3);
                var7 = Math.round(var3 * (float)var7);
                if (var2) {
                    this.recycleBitmap(var1, true);
                }
            } else {
                var11 = var1;
            }

            int[] var12 = new int[var16 * var7];

            try {
                var11.getPixels(var12, 0, var16, var5, var6, var16, var7);
            } catch (Exception var14) {
                LogUtil.w(HistogramView.TAG, "Couldn't read pixels from bitmap", var14);
            }

            if (var2 || var8) {
                if (var11 == var1) {
                    var2 = true;
                } else {
                    var2 = false;
                }

                this.recycleBitmap(var11, var2);
            }

            float[] var15 = new float[1024];
            var16 = var12.length;

            while(true) {
                --var16;
                if (var16 < 0) {
                    return var15;
                }

                var5 = var12[var16];
                int var17 = Color.red(var5);
                var7 = Color.green(var5);
                var6 = Color.blue(var5);
                var5 = Math.round((float)var17 * 0.3F + (float)var7 * 0.59F + (float)var6 * 0.11F);
                var17 = var17 * 4 + 0;
                int var10002 = (int)(var15[var17]++);
                var7 = var7 * 4 + 1;
                var10002 = (int)(var15[var7]++);
                var6 = var6 * 4 + 2;
                var10002 = (int)(var15[var6]++);
                var5 = var5 * 4 + 3;
                var10002 = (int)(var15[var5]++);
            }
        }

        private float[] getCountsFromImage(Image var1) {
            Plane[] var19 = var1.getPlanes();
            byte var7 = 0;
            if (var19 == null) {
                this.mImage.close();
                if (this.mListener != null) {
                    this.mListener.onDone(false);
                }

                return null;
            } else {
                Plane var17 = var19[0];
                if (var17.getBuffer() == null) {
                    this.mImage.close();
                    if (this.mListener != null) {
                        this.mListener.onDone(false);
                    }

                    return null;
                } else {
                    Plane var18 = var19[1];
                    Plane var31 = var19[2];
                    int var11 = var1.getWidth();
                    int var16 = var1.getHeight();
                    float[] var20 = new float[1024];
                    int var6 = var17.getRowStride();
                    int var15 = var18.getPixelStride();
                    int var5 = var18.getRowStride();
                    ByteBuffer var29 = var17.getBuffer();
                    ByteBuffer var30 = var18.getBuffer();
                    ByteBuffer var32 = var31.getBuffer();
                    byte[] var21 = new byte[var6];
                    byte[] var22 = new byte[var5];
                    byte[] var23 = new byte[var5];

                    for(int var10 = 0; var10 < var16; ++var10) {
                        var29.get(var21, var7, Math.min(var21.length, var29.remaining()));
                        if ((var10 & 1) == 0) {
                            var30.get(var22, var7, Math.min(var22.length, var30.remaining()));
                            var32.get(var23, var7, Math.min(var23.length, var32.remaining()));
                        }

                        var6 = var7;
                        var5 = var7;

                        int var8;
                        for(int var12 = var7; var12 < var11; var5 = var8) {
                            byte var26 = var21[var12];
                            int var13 = var26;
                            if (var26 < 0) {
                                var13 = var26 + 256;
                            }

                            int var27;
                            if ((var12 & 1) == 0) {
                                var6 = var12 / 2 * var15;
                                byte var24 = var22[var6];
                                if (var24 >= 0) {
                                    var5 = var24 - 128;
                                } else {
                                    var5 = var24 + 128;
                                }

                                byte var25 = var23[var6];
                                if (var25 >= 0) {
                                    var6 = var25 - 128;
                                } else {
                                    var6 = var25 + 128;
                                }
                            } else {
                                var27 = var6;
                                var6 = var5;
                                var5 = var27;
                            }

                            float var4 = (float)var13;
                            float var2 = (float)var6;
                            var8 = (int)(var4 + 1.370705F * var2);
                            if (var8 < 0) {
                                var27 = 0;
                            } else {
                                var27 = var8;
                                if (var8 > 255) {
                                    var27 = 255;
                                }
                            }

                            float var3 = (float)var5;
                            int var9 = (int)(var4 - var2 * 0.698001F - 0.337633F * var3);
                            if (var9 < 0) {
                                var8 = 0;
                            } else {
                                var8 = var9;
                                if (var9 > 255) {
                                    var8 = 255;
                                }
                            }

                            int var14 = (int)(var4 + var3 * 1.732446F);
                            if (var14 < 0) {
                                var9 = 0;
                            } else {
                                var9 = var14;
                                if (var14 > 255) {
                                    var9 = 255;
                                }
                            }

                            byte var28 = 0;
                            var27 = var27 * 4 + 0;
                            int var10002 = (int)(var20[var27]++);
                            var27 = var8 * 4 + 1;
                            var10002 = (int)(var20[var27]++);
                            var27 = var9 * 4 + 2;
                            var10002 = (int)(var20[var27]++);
                            var27 = var13 * 4 + 3;
                            var10002 = (int)(var20[var27]++);
                            ++var12;
                            var8 = var6;
                            var7 = var28;
                            var6 = var5;
                        }
                    }

                    var1.close();
                    if (this.mListener != null) {
                        this.mListener.onDone(true);
                    }

                    return var20;
                }
            }
        }

        private float[] getCountsFromLibCpCounts(float[] var1) {
            return var1;
        }

        private float[] getCountsFromPath(String var1) {
            Options var3 = new Options();
            var3.inJustDecodeBounds = true;
            this.mBitmap = BitmapFactory.decodeFile(var1, var3);
            int var2 = Math.max(1, (int)Math.ceil((double)((float)Math.max(var3.outWidth, var3.outHeight) / 800.0F)));
            var3.inJustDecodeBounds = false;
            var3.inSampleSize = var2;
            Bitmap var4 = BitmapFactory.decodeFile(var1, var3);
            float[] var5;
            if (var4 != null) {
                var5 = this.getCountsFromBitmap(var4, true);
            } else {
                var5 = null;
            }

            return var5;
        }

        private void recycleBitmap(Bitmap var1, boolean var2) {
            var1.recycle();
            if (var2 && this.mListener != null) {
                this.mListener.onDone(true);
            }

        }

        // $FF: synthetic method
        // $FF: bridge method
        protected Object doInBackground(Object[] var1) {
            return this.doInBackground((Void[])var1);
        }

        protected float[] doInBackground(Void... var1) {
            if (this.mImage != null) {
                return this.getCountsFromImage(this.mImage);
            } else if (this.mCounts != null) {
                return this.getCountsFromLibCpCounts(this.mCounts);
            } else if (this.mBitmap != null) {
                return this.getCountsFromBitmap(this.mBitmap, this.mRecycleBitmap);
            } else {
                return this.mImagePath != null ? this.getCountsFromPath(this.mImagePath) : null;
            }
        }

        // $FF: synthetic method
        // $FF: bridge method
        protected void onPostExecute(Object var1) {
            this.onPostExecute((float[])var1);
        }

        protected void onPostExecute(float[] var1) {
            HistogramView var2 = (HistogramView)this.mHistogram.get();
            if (var2 != null) {
                var2.helperFinished(this);
                if (var1 != null) {
                    var2.setCounts(var1);
                }
            }

        }
    }

    public interface OnDrawListener {
        void onDone(boolean var1);
    }
}
