package openlight.co.camera.view.level;

import java.util.ArrayDeque;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class AngleLowPassFilter {
    private static final int LENGTH = 10;
    private final ArrayDeque<Float> mQueue = new ArrayDeque<>();
    private float mSumCosine;
    private float mSumSin;

    public void add(float f) {
        double d = f;
        this.mSumSin += (float) Math.sin(d);
        this.mSumCosine += (float) Math.cos(d);
        this.mQueue.add(Float.valueOf(f));
        if (this.mQueue.size() > 10) {
            double floatValue = this.mQueue.poll().floatValue();
            this.mSumSin = (float) (this.mSumSin - Math.sin(floatValue));
            this.mSumCosine = (float) (this.mSumCosine - Math.cos(floatValue));
        }
    }

    public int degrees() {
        float size = this.mQueue.size();
        return (int) Math.toDegrees(Math.atan2(this.mSumSin / size, this.mSumCosine / size));
    }
}