package org.telegram.p029ui.Components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.google.zxing.common.detector.MathUtils;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes7.dex */
public class SearchStateDrawable extends Drawable {

    /* JADX INFO: renamed from: cx */
    private float f2069cx;

    /* JADX INFO: renamed from: cy */
    private float f2070cy;
    private Runnable delaySetProgress;
    private int fromState;

    /* JADX INFO: renamed from: mn */
    private float f2071mn;
    private Paint paint;
    private boolean progressStartedWithOverTo;
    private boolean wereNotWaitingForProgressToEnd;
    private int alpha = 255;
    private Path path = new Path();
    private RectF progressRect = new RectF();
    private final float progressRadius = 0.25f;
    private long progressStart = -1;
    private float progressAngleFrom = 0.0f;
    private float progressAngleTo = 0.0f;
    private float[] progressSegments = new float[2];
    private int toState = 0;
    private boolean waitingForProgressToEnd = false;
    private AnimatedFloat progress = new AnimatedFloat(1.0f, new Runnable() { // from class: org.telegram.ui.Components.SearchStateDrawable$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.invalidateSelf();
        }
    }, 0, 350, CubicBezierInterpolator.EASE_OUT_QUINT);

    private boolean containsAngle(float f, float f2, float f3) {
        float f4 = f2 % 360.0f;
        if (f4 < 0.0f) {
            f4 += 360.0f;
        }
        float f5 = f3 % 360.0f;
        if (f5 < 0.0f) {
            f5 += 360.0f;
        }
        return f4 > f5 ? f >= f4 || f <= f5 : f >= f4 && f <= f5;
    }

    private float lerp3(float f, float f2, float f3, float f4, float f5, float f6) {
        return (f * f4) + (f2 * f5) + (f3 * f6);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public SearchStateDrawable() {
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setColor(-1);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeJoin(Paint.Join.ROUND);
        this.paint.setStrokeCap(Paint.Cap.ROUND);
        this.paint.setStrokeWidth(AndroidUtilities.m1124dp(1.333f));
    }

    public int getIconState() {
        return this.toState;
    }

    public void setIconState(int i) {
        setIconState(i, true);
    }

    public void setIconState(int i, boolean z) {
        setIconState(i, z, false);
    }

    private void setIconState(final int i, final boolean z, boolean z2) {
        if (getIconState() == i) {
            if (i != 2) {
                AndroidUtilities.cancelRunOnUIThread(this.delaySetProgress);
                this.delaySetProgress = null;
                return;
            }
            return;
        }
        if (!z2 && i == 2) {
            if (this.delaySetProgress == null) {
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.SearchStateDrawable$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setIconState$0(i, z);
                    }
                };
                this.delaySetProgress = runnable;
                AndroidUtilities.runOnUIThread(runnable, 65L);
                return;
            }
            return;
        }
        Runnable runnable2 = this.delaySetProgress;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
        }
        boolean z3 = false;
        if (this.progress.get() < 1.0f && z) {
            setIconState(this.toState, false);
        }
        if (i == 2) {
            this.progressAngleFrom = 180.0f;
            this.progressStart = -1L;
        } else if (this.toState == 2) {
            if (i == 0) {
                this.progressAngleTo = -45.0f;
            } else {
                this.progressAngleTo = 0.0f;
            }
        }
        if (z) {
            int i2 = this.toState;
            this.fromState = i2;
            this.toState = i;
            if (i2 == 2 && i != 2) {
                z3 = true;
            }
            this.waitingForProgressToEnd = z3;
            this.progress.set(0.0f, true);
        } else {
            this.toState = i;
            this.fromState = i;
            this.waitingForProgressToEnd = false;
            this.progress.set(1.0f, true);
        }
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setIconState$0(int i, boolean z) {
        this.delaySetProgress = null;
        setIconState(i, z, true);
    }

    public void setColor(int i) {
        this.paint.setColor(i);
        this.alpha = this.paint.getAlpha();
        this.paint.setAlpha(255);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Canvas canvas2;
        float f;
        float f2;
        float f3;
        char c;
        float f4;
        float f5;
        float f6;
        float f7;
        Canvas canvas3;
        float f8;
        SearchStateDrawable searchStateDrawable;
        Rect bounds = getBounds();
        this.f2071mn = Math.min(bounds.width(), bounds.height());
        this.f2069cx = bounds.centerX();
        this.f2070cy = bounds.centerY();
        int i = this.alpha;
        if (i < 255) {
            canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i, 31);
            canvas2 = canvas;
        } else {
            canvas2 = canvas;
        }
        float f9 = this.progress.set(this.waitingForProgressToEnd ? 0.0f : 1.0f);
        int i2 = this.toState;
        int i3 = this.fromState;
        float f10 = i2 == 0 ? i3 == 0 ? 1.0f : f9 : i3 == 0 ? 1.0f - f9 : 0.0f;
        int i4 = this.fromState;
        float f11 = i2 == 1 ? i4 == 1 ? 1.0f : f9 : i4 == 1 ? 1.0f - f9 : 0.0f;
        if (i2 == 2) {
            f = this.fromState == 2 ? 1.0f : f9;
        } else {
            f = this.fromState == 2 ? 1.0f - f9 : 0.0f;
        }
        if (f10 > 0.0f) {
            f2 = 1.0f;
            drawCircle(canvas2, AndroidUtilities.lerp(m1272x(0.25f), m1272x(0.444f), f10), AndroidUtilities.lerp(m1273y(0.5f), m1273y(0.444f), f10), AndroidUtilities.lerp(0.0f, m1271w(0.208f), f10));
        } else {
            f2 = 1.0f;
        }
        if (f10 > 0.0f || f11 > 0.0f) {
            canvas2.save();
            f3 = 45.0f;
            c = 1;
            canvas2.rotate(f10 * 45.0f, this.f2069cx, this.f2070cy);
            f4 = 0.2409f;
            f5 = 0.75f;
            float fLerp3 = lerp3(m1272x(0.914f), m1272x(0.7638f), this.fromState == 2 ? m1272x(0.75f) : m1272x(0.2409f), f10, f11, f);
            float fM1273y = m1273y(0.5f);
            float fLerp32 = lerp3(m1272x(0.658f), m1272x(0.2409f), this.fromState == 2 ? m1272x(0.75f) : m1272x(0.2409f), f10, f11, f);
            float f12 = f;
            f6 = f10;
            f7 = f12;
            canvas3 = canvas2;
            f8 = f11;
            drawLine(canvas3, fLerp3, fM1273y, fLerp32, m1273y(0.5f));
            canvas3.restore();
        } else {
            f7 = f;
            canvas3 = canvas2;
            f3 = 45.0f;
            c = 1;
            f4 = 0.2409f;
            f5 = 0.75f;
            f6 = f10;
            f8 = f11;
        }
        if (f8 > 0.0f) {
            float fLerp = this.fromState == 2 ? AndroidUtilities.lerp(m1272x(f5), m1272x(f4), f8) : m1272x(f4);
            canvas3.save();
            canvas3.rotate(f6 * f3, this.f2069cx, this.f2070cy);
            drawLines(canvas3, (m1272x(0.2452f) * f8) + fLerp, AndroidUtilities.lerp(m1273y(0.5f), m1273y(0.25f), f8), fLerp, m1273y(0.5f), (m1272x(0.2452f) * f8) + fLerp, AndroidUtilities.lerp(m1273y(0.5f), m1273y(f5), f8));
            searchStateDrawable = this;
            canvas.restore();
        } else {
            searchStateDrawable = this;
        }
        if (f7 > 0.0f) {
            if (searchStateDrawable.progressStart < 0 && f7 > 0.8f) {
                searchStateDrawable.progressStart = System.currentTimeMillis();
                searchStateDrawable.wereNotWaitingForProgressToEnd = searchStateDrawable.waitingForProgressToEnd;
            }
            if (searchStateDrawable.progressStart > 0) {
                CircularProgressDrawable.getSegments((System.currentTimeMillis() - searchStateDrawable.progressStart) % 5400.0f, searchStateDrawable.progressSegments);
                float[] fArr = searchStateDrawable.progressSegments;
                float fLerp2 = fArr[0];
                float fMin = fArr[c];
                if (searchStateDrawable.getIconState() != 2 && !searchStateDrawable.waitingForProgressToEnd) {
                    float fMax = Math.max(0.0f, (((float) Math.floor((fLerp2 - 180.0f) / 360.0f)) * 360.0f) + 180.0f);
                    fMin = Math.min(fMin, searchStateDrawable.progressAngleTo + fMax);
                    fLerp2 = AndroidUtilities.lerp(fMin, Math.min(fLerp2, fMax + searchStateDrawable.progressAngleTo), f7);
                }
                float f13 = searchStateDrawable.progressAngleTo;
                float f14 = searchStateDrawable.progressAngleFrom;
                boolean zContainsAngle = searchStateDrawable.containsAngle(f13, f14 + fLerp2, f14 + fMin);
                boolean z = searchStateDrawable.waitingForProgressToEnd;
                if (z && !searchStateDrawable.wereNotWaitingForProgressToEnd) {
                    searchStateDrawable.wereNotWaitingForProgressToEnd = z;
                    searchStateDrawable.progressStartedWithOverTo = zContainsAngle;
                }
                if (searchStateDrawable.progressStartedWithOverTo && !zContainsAngle) {
                    searchStateDrawable.progressStartedWithOverTo = false;
                }
                if (z && zContainsAngle && !searchStateDrawable.progressStartedWithOverTo) {
                    searchStateDrawable.waitingForProgressToEnd = false;
                }
                searchStateDrawable.progressRect.set(searchStateDrawable.m1272x(0.25f), searchStateDrawable.m1273y(0.25f), searchStateDrawable.m1272x(f5), searchStateDrawable.m1273y(f5));
                canvas.drawArc(searchStateDrawable.progressRect, searchStateDrawable.progressAngleFrom + fLerp2, fMin - fLerp2, false, searchStateDrawable.paint);
                searchStateDrawable.invalidateSelf();
            }
        }
        if (searchStateDrawable.alpha < 255) {
            canvas.restore();
        }
        if (f9 < f2) {
            searchStateDrawable.invalidateSelf();
        }
    }

    private void drawCircle(Canvas canvas, float f, float f2, float f3) {
        if (f3 < m1271w(0.075f)) {
            return;
        }
        canvas.drawCircle(f, f2, f3, this.paint);
    }

    private void drawLine(Canvas canvas, float f, float f2, float f3, float f4) {
        if (MathUtils.distance(f, f2, f3, f4) <= m1271w(0.075f)) {
            return;
        }
        canvas.drawLine(f, f2, f3, f4, this.paint);
    }

    private void drawLines(Canvas canvas, float f, float f2, float f3, float f4, float f5, float f6) {
        if (Math.max(MathUtils.distance(f, f2, f3, f4), MathUtils.distance(f5, f6, f3, f4)) <= m1271w(0.075f)) {
            return;
        }
        this.path.rewind();
        this.path.moveTo(f, f2);
        this.path.lineTo(f3, f4);
        this.path.lineTo(f5, f6);
        canvas.drawPath(this.path, this.paint);
    }

    /* JADX INFO: renamed from: x */
    private float m1272x(float f) {
        return this.f2069cx - (this.f2071mn * (0.5f - f));
    }

    /* JADX INFO: renamed from: y */
    private float m1273y(float f) {
        return this.f2070cy - (this.f2071mn * (0.5f - f));
    }

    /* JADX INFO: renamed from: w */
    private float m1271w(float f) {
        return this.f2071mn * f;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return AndroidUtilities.m1124dp(24.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.m1124dp(24.0f);
    }
}
