package net.hockeyapp.android.views;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.net.Uri;
import android.os.AsyncTask;
import android.view.MotionEvent;
import android.widget.ImageView;
import java.io.IOException;
import java.util.Iterator;
import java.util.Stack;
import net.hockeyapp.android.utils.HockeyLog;

@SuppressLint({"ViewConstructor"})
/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class PaintView extends ImageView {
    private static final float TOUCH_TOLERANCE = 4.0f;
    private float mX;
    private float mY;
    private Paint paint;
    private Path path;
    private Stack<Path> paths;

    public static int determineOrientation(ContentResolver contentResolver, Uri uri) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeStream(contentResolver.openInputStream(uri), null, options);
            return ((float) options.outWidth) / ((float) options.outHeight) > 1.0f ? 0 : 1;
        } catch (IOException e) {
            HockeyLog.error("Unable to determine necessary screen orientation.", e);
            return 1;
        }
    }

    private static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        if (i3 > i2 || i4 > i) {
            int i6 = i3 / 2;
            int i7 = i4 / 2;
            while (i6 / i5 > i2 && i7 / i5 > i) {
                i5 *= 2;
            }
        }
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap decodeSampledBitmapFromResource(ContentResolver contentResolver, Uri uri, int i, int i2) throws IOException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(contentResolver.openInputStream(uri), null, options);
        options.inSampleSize = calculateInSampleSize(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeStream(contentResolver.openInputStream(uri), null, options);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [net.hockeyapp.android.views.PaintView$1] */
    public PaintView(Context context, Uri uri, int i, int i2) {
        super(context);
        this.path = new Path();
        this.paths = new Stack<>();
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setDither(true);
        this.paint.setColor(-65536);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeWidth(12.0f);
        new AsyncTask<Object, Void, Bitmap>() { // from class: net.hockeyapp.android.views.PaintView.1
            @Override // android.os.AsyncTask
            protected void onPreExecute() {
                PaintView.this.setAdjustViewBounds(true);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.AsyncTask
            public Bitmap doInBackground(Object... objArr) {
                Context context2 = (Context) objArr[0];
                try {
                    return PaintView.decodeSampledBitmapFromResource(context2.getContentResolver(), (Uri) objArr[1], ((Integer) objArr[2]).intValue(), ((Integer) objArr[3]).intValue());
                } catch (IOException e) {
                    HockeyLog.error("Could not load image into ImageView.", e);
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Bitmap bitmap) {
                if (bitmap == null) {
                    return;
                }
                PaintView.this.setImageBitmap(bitmap);
            }
        }.execute(context, uri, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public void clearImage() {
        this.paths.clear();
        invalidate();
    }

    public void undo() {
        if (this.paths.empty()) {
            return;
        }
        this.paths.pop();
        invalidate();
    }

    public boolean isClear() {
        return this.paths.empty();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Iterator<Path> it = this.paths.iterator();
        while (it.hasNext()) {
            canvas.drawPath(it.next(), this.paint);
        }
        canvas.drawPath(this.path, this.paint);
    }

    private void touchStart(float f, float f2) {
        this.path.reset();
        this.path.moveTo(f, f2);
        this.mX = f;
        this.mY = f2;
    }

    private void touchMove(float f, float f2) {
        float abs = Math.abs(f - this.mX);
        float abs2 = Math.abs(f2 - this.mY);
        if (abs >= TOUCH_TOLERANCE || abs2 >= TOUCH_TOLERANCE) {
            this.path.quadTo(this.mX, this.mY, (this.mX + f) / 2.0f, (this.mY + f2) / 2.0f);
            this.mX = f;
            this.mY = f2;
        }
    }

    private void touchUp() {
        this.path.lineTo(this.mX, this.mY);
        this.paths.push(this.path);
        this.path = new Path();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                touchStart(x, y);
                invalidate();
                return true;
            case 1:
                touchUp();
                invalidate();
                return true;
            case 2:
                touchMove(x, y);
                invalidate();
                return true;
            default:
                return true;
        }
    }
}