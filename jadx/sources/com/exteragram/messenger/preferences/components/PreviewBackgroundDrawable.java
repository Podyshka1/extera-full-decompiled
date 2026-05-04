package com.exteragram.messenger.preferences.components;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.ColorUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes.dex */
public final class PreviewBackgroundDrawable extends Drawable {
    private final Paint backgroundPaint;
    private final float radius;
    private final RectF rectF;
    private float selectionProgress;
    private final Paint strokePaint;

    public PreviewBackgroundDrawable() {
        this(0.0f, 1, null);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public PreviewBackgroundDrawable(float f) {
        this.backgroundPaint = new Paint(1);
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.STROKE);
        this.strokePaint = paint;
        this.rectF = new RectF();
        this.radius = AndroidUtilities.m1124dp(f);
    }

    public /* synthetic */ PreviewBackgroundDrawable(float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 12.0f : f);
    }

    public final void setSelectionProgress(float f) {
        if (this.selectionProgress == f) {
            return;
        }
        this.selectionProgress = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.backgroundPaint.setColor(PreviewColors.getBackgroundColor());
        this.strokePaint.setColor(ColorUtils.blendARGB(PreviewColors.getOutlineColor(), Theme.getColor(Theme.key_windowBackgroundWhiteValueText), this.selectionProgress));
        this.strokePaint.setStrokeWidth(AndroidUtilities.m1124dp(AndroidUtilities.lerp(0.5f, 2.0f, this.selectionProgress)));
        float strokeWidth = this.strokePaint.getStrokeWidth() / 2.0f;
        this.rectF.set(getBounds().left + strokeWidth, getBounds().top + strokeWidth, getBounds().right - strokeWidth, getBounds().bottom - strokeWidth);
        RectF rectF = this.rectF;
        float f = this.radius;
        canvas.drawRoundRect(rectF, f, f, this.backgroundPaint);
        RectF rectF2 = this.rectF;
        float f2 = this.radius;
        canvas.drawRoundRect(rectF2, f2, f2, this.strokePaint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.backgroundPaint.setAlpha(i);
        this.strokePaint.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.backgroundPaint.setColorFilter(colorFilter);
        this.strokePaint.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
