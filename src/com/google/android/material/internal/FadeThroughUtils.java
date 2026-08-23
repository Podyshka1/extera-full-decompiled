package com.google.android.material.internal;

/* JADX INFO: loaded from: classes5.dex */
final class FadeThroughUtils {
    static final float THRESHOLD_ALPHA = 0.5f;

    public static void calculateFadeOutAndInAlphas(float f, float[] fArr) {
        if (f <= THRESHOLD_ALPHA) {
            fArr[0] = 1.0f - (f * 2.0f);
            fArr[1] = 0.0f;
        } else {
            fArr[0] = 0.0f;
            fArr[1] = (f * 2.0f) - 1.0f;
        }
    }

    private FadeThroughUtils() {
    }
}
