package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes7.dex */
public final class RoundVideoProgressView extends FrameLayout {
    private final RectF arcBounds;
    private final Paint backgroundPaint;
    private float progress;
    private final Paint progressPaint;
    private final float ringInset;
    private final float strokeWidth;

    public RoundVideoProgressView(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.backgroundPaint = paint;
        Paint paint2 = new Paint(1) { // from class: org.telegram.ui.Components.RoundVideoProgressView.1
            @Override // android.graphics.Paint
            public void setAlpha(int i) {
                super.setAlpha(i);
                RoundVideoProgressView.this.backgroundPaint.setAlpha(Math.round(i * 0.2f));
                RoundVideoProgressView.this.invalidate();
            }
        };
        this.progressPaint = paint2;
        this.arcBounds = new RectF();
        float fDp = AndroidUtilities.dp(3.0f);
        this.strokeWidth = fDp;
        this.ringInset = AndroidUtilities.dp(5.0f) + (fDp * 0.5f);
        configureStroke(paint, 0.2f);
        configureStroke(paint2, 1.0f);
        setWillNotDraw(false);
    }

    public Paint getPaint() {
        return this.progressPaint;
    }

    public void setProgress(float f) {
        float fClamp = clamp(f, 0.0f, 1.0f);
        if (this.progress == fClamp) {
            return;
        }
        this.progress = fClamp;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        RectF rectF = this.arcBounds;
        float f = this.ringInset;
        rectF.set(f, f, getWidth() - this.ringInset, getHeight() - this.ringInset);
        canvas.drawOval(this.arcBounds, this.backgroundPaint);
        canvas.drawArc(this.arcBounds, -90.0f, this.progress * 360.0f, false, this.progressPaint);
    }

    private static void configureStroke(Paint paint, float f) {
        paint.setColor(-1);
        paint.setAlpha(Math.round(f * 255.0f));
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(AndroidUtilities.dp(3.0f));
        paint.setStrokeCap(Paint.Cap.ROUND);
    }

    private static float clamp(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }
}
