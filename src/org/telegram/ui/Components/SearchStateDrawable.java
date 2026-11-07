package org.telegram.ui.Components;

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
    private float cx;
    private float cy;
    private Runnable delaySetProgress;
    private int fromState;
    private float mn;
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
        this.paint.setStrokeWidth(AndroidUtilities.dp(1.333f));
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
        char c2;
        float f3;
        float f4;
        float f5;
        float f6;
        Canvas canvas3;
        float f7;
        SearchStateDrawable searchStateDrawable;
        Rect bounds = getBounds();
        this.mn = Math.min(bounds.width(), bounds.height());
        this.cx = bounds.centerX();
        this.cy = bounds.centerY();
        int i = this.alpha;
        if (i < 255) {
            canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i, 31);
            canvas2 = canvas;
        } else {
            canvas2 = canvas;
        }
        float f8 = this.progress.set(this.waitingForProgressToEnd ? 0.0f : 1.0f);
        int i2 = this.toState;
        int i3 = this.fromState;
        float f9 = i2 == 0 ? i3 == 0 ? 1.0f : f8 : i3 == 0 ? 1.0f - f8 : 0.0f;
        int i4 = this.fromState;
        float f10 = i2 == 1 ? i4 == 1 ? 1.0f : f8 : i4 == 1 ? 1.0f - f8 : 0.0f;
        int i5 = this.fromState;
        float f11 = i2 == 2 ? i5 == 2 ? 1.0f : f8 : i5 == 2 ? 1.0f - f8 : 0.0f;
        if (f9 > 0.0f) {
            f = 1.0f;
            drawCircle(canvas2, AndroidUtilities.lerp(m1078x(0.25f), m1078x(0.444f), f9), AndroidUtilities.lerp(m1079y(0.5f), m1079y(0.444f), f9), AndroidUtilities.lerp(0.0f, m1077w(0.208f), f9));
        } else {
            f = 1.0f;
        }
        if (f9 > 0.0f || f10 > 0.0f) {
            canvas2.save();
            f2 = 45.0f;
            c2 = 1;
            canvas2.rotate(f9 * 45.0f, this.cx, this.cy);
            f3 = 0.2409f;
            f4 = 0.75f;
            float fLerp3 = lerp3(m1078x(0.914f), m1078x(0.7638f), this.fromState == 2 ? m1078x(0.75f) : m1078x(0.2409f), f9, f10, f11);
            float fM1079y = m1079y(0.5f);
            float fLerp32 = lerp3(m1078x(0.658f), m1078x(0.2409f), this.fromState == 2 ? m1078x(0.75f) : m1078x(0.2409f), f9, f10, f11);
            float f12 = f11;
            f5 = f9;
            f6 = f12;
            canvas3 = canvas2;
            f7 = f10;
            drawLine(canvas3, fLerp3, fM1079y, fLerp32, m1079y(0.5f));
            canvas3.restore();
        } else {
            f6 = f11;
            canvas3 = canvas2;
            f2 = 45.0f;
            c2 = 1;
            f3 = 0.2409f;
            f4 = 0.75f;
            f5 = f9;
            f7 = f10;
        }
        if (f7 > 0.0f) {
            float fLerp = this.fromState == 2 ? AndroidUtilities.lerp(m1078x(f4), m1078x(f3), f7) : m1078x(f3);
            canvas3.save();
            canvas3.rotate(f5 * f2, this.cx, this.cy);
            drawLines(canvas3, (m1078x(0.2452f) * f7) + fLerp, AndroidUtilities.lerp(m1079y(0.5f), m1079y(0.25f), f7), fLerp, m1079y(0.5f), (m1078x(0.2452f) * f7) + fLerp, AndroidUtilities.lerp(m1079y(0.5f), m1079y(f4), f7));
            searchStateDrawable = this;
            canvas.restore();
        } else {
            searchStateDrawable = this;
        }
        if (f6 > 0.0f) {
            if (searchStateDrawable.progressStart < 0 && f6 > 0.8f) {
                searchStateDrawable.progressStart = System.currentTimeMillis();
                searchStateDrawable.wereNotWaitingForProgressToEnd = searchStateDrawable.waitingForProgressToEnd;
            }
            if (searchStateDrawable.progressStart > 0) {
                CircularProgressDrawable.getSegments((System.currentTimeMillis() - searchStateDrawable.progressStart) % 5400.0f, searchStateDrawable.progressSegments);
                float[] fArr = searchStateDrawable.progressSegments;
                float fLerp2 = fArr[0];
                float fMin = fArr[c2];
                if (searchStateDrawable.getIconState() != 2 && !searchStateDrawable.waitingForProgressToEnd) {
                    float fMax = Math.max(0.0f, (((float) Math.floor((fLerp2 - 180.0f) / 360.0f)) * 360.0f) + 180.0f);
                    fMin = Math.min(fMin, searchStateDrawable.progressAngleTo + fMax);
                    fLerp2 = AndroidUtilities.lerp(fMin, Math.min(fLerp2, fMax + searchStateDrawable.progressAngleTo), f6);
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
                searchStateDrawable.progressRect.set(searchStateDrawable.m1078x(0.25f), searchStateDrawable.m1079y(0.25f), searchStateDrawable.m1078x(f4), searchStateDrawable.m1079y(f4));
                canvas.drawArc(searchStateDrawable.progressRect, searchStateDrawable.progressAngleFrom + fLerp2, fMin - fLerp2, false, searchStateDrawable.paint);
                searchStateDrawable.invalidateSelf();
            }
        }
        if (searchStateDrawable.alpha < 255) {
            canvas.restore();
        }
        if (f8 < f) {
            searchStateDrawable.invalidateSelf();
        }
    }

    private void drawCircle(Canvas canvas, float f, float f2, float f3) {
        if (f3 < m1077w(0.075f)) {
            return;
        }
        canvas.drawCircle(f, f2, f3, this.paint);
    }

    private void drawLine(Canvas canvas, float f, float f2, float f3, float f4) {
        if (MathUtils.distance(f, f2, f3, f4) <= m1077w(0.075f)) {
            return;
        }
        canvas.drawLine(f, f2, f3, f4, this.paint);
    }

    private void drawLines(Canvas canvas, float f, float f2, float f3, float f4, float f5, float f6) {
        if (Math.max(MathUtils.distance(f, f2, f3, f4), MathUtils.distance(f5, f6, f3, f4)) <= m1077w(0.075f)) {
            return;
        }
        this.path.rewind();
        this.path.moveTo(f, f2);
        this.path.lineTo(f3, f4);
        this.path.lineTo(f5, f6);
        canvas.drawPath(this.path, this.paint);
    }

    /* JADX INFO: renamed from: x */
    private float m1078x(float f) {
        return this.cx - (this.mn * (0.5f - f));
    }

    /* JADX INFO: renamed from: y */
    private float m1079y(float f) {
        return this.cy - (this.mn * (0.5f - f));
    }

    /* JADX INFO: renamed from: w */
    private float m1077w(float f) {
        return this.mn * f;
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
        return AndroidUtilities.dp(24.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return AndroidUtilities.dp(24.0f);
    }
}
