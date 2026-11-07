package com.exteragram.messenger.plugins.ui.components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextPaint;
import android.text.style.ReplacementSpan;
import kotlin.Metadata;
import kotlin.math.MathKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J4\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000b2\b\u0010\u0002\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016JR\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0002\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/BadgeSpan;", "Landroid/text/style/ReplacementSpan;", "text", _UrlKt.FRAGMENT_ENCODE_SET, "color", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "textPaint", "Landroid/text/TextPaint;", "backgroundPaint", "Landroid/graphics/Paint;", "rect", "Landroid/graphics/RectF;", "getSize", "paint", _UrlKt.FRAGMENT_ENCODE_SET, "start", "end", "fm", "Landroid/graphics/Paint$FontMetricsInt;", "draw", _UrlKt.FRAGMENT_ENCODE_SET, "canvas", "Landroid/graphics/Canvas;", "x", _UrlKt.FRAGMENT_ENCODE_SET, "top", "y", "bottom", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
final class BadgeSpan extends ReplacementSpan {
    private final Paint backgroundPaint;
    private final int color;
    private final RectF rect;
    private final String text;
    private final TextPaint textPaint;

    public BadgeSpan(String str, int i) {
        this.text = str;
        this.color = i;
        TextPaint textPaint = new TextPaint(1);
        textPaint.setTypeface(AndroidUtilities.bold());
        textPaint.setTextSize(AndroidUtilities.dp(12.0f));
        this.textPaint = textPaint;
        this.backgroundPaint = new Paint(1);
        this.rect = new RectF();
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence text, int start, int end, Paint.FontMetricsInt fm) {
        return AndroidUtilities.dp(6.0f) + MathKt.roundToInt(this.textPaint.measureText(this.text) + AndroidUtilities.dp(12.0f));
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence text, int start, int end, float x, int top, int y, int bottom, Paint paint) {
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        float f = y + ((fontMetrics.ascent + fontMetrics.descent) / 2.0f);
        float fDp = x + AndroidUtilities.dp(6.0f);
        float fDp2 = AndroidUtilities.dp(20.0f) / 2.0f;
        this.rect.set(fDp, f - fDp2, this.textPaint.measureText(this.text) + fDp + AndroidUtilities.dp(12.0f), f + fDp2);
        this.backgroundPaint.setColor(Theme.multAlpha(this.color, 0.15f));
        float fMin = Math.min(PluginAnalysisCellsKt.analysisInnerRadius(), fDp2);
        canvas.drawRoundRect(this.rect, fMin, fMin, this.backgroundPaint);
        this.textPaint.setColor(this.color);
        Paint.FontMetrics fontMetrics2 = this.textPaint.getFontMetrics();
        canvas.drawText(this.text, fDp + AndroidUtilities.dp(6.0f), f - ((fontMetrics2.ascent + fontMetrics2.descent) / 2.0f), this.textPaint);
    }
}
