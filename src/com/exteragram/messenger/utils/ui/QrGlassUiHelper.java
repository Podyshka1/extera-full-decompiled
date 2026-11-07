package com.exteragram.messenger.utils.ui;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.GlassOutlineStyle;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes4.dex */
public abstract class QrGlassUiHelper {
    private static final Paint solidPaint;
    private static final RectF solidRect;

    static {
        Paint paint = new Paint(1);
        solidPaint = paint;
        solidRect = new RectF();
        paint.setStyle(Paint.Style.STROKE);
    }

    public static boolean drawOutline(Canvas canvas, Path path, RectF rectF, float f, float f2) {
        GlassOutlineStyle glassOutlineStyle = ExteraConfig.getGlassOutlineStyle();
        if (glassOutlineStyle == GlassOutlineStyle.GLARE) {
            return false;
        }
        if (glassOutlineStyle == GlassOutlineStyle.SOLID && f2 > 0.004f) {
            Paint paint = solidPaint;
            paint.setColor(Theme.multAlpha(654311423, Math.min(1.0f, f2)));
            if (path == null) {
                paint.setStrokeWidth(1.0f);
                RectF rectF2 = solidRect;
                rectF2.set(rectF);
                rectF2.inset(0.5f, 0.5f);
                float fMax = Math.max(0.0f, Math.min(f, Math.min(rectF.width(), rectF.height()) / 2.0f) - 0.5f);
                canvas.drawRoundRect(rectF2, fMax, fMax, paint);
            } else {
                paint.setStrokeWidth(2.0f);
                canvas.save();
                canvas.clipPath(path);
                canvas.drawPath(path, paint);
                canvas.restore();
            }
        }
        return true;
    }
}
