package com.exteragram.messenger.utils.p017ui;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.ReplacementSpan;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import org.telegram.messenger.AndroidUtilities;

/* JADX INFO: loaded from: classes4.dex */
public final class ColorRectSpan extends ReplacementSpan {
    public static final Companion Companion = new Companion(null);
    private static final Paint colorPaint = new Paint(1);
    private static final int offset = AndroidUtilities.m1124dp(2.0f);
    private final int color;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ColorRectSpan(int i) {
        this.color = i;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        return MathKt.roundToInt(paint.measureText(charSequence, i, i2) + offset + ((int) paint.getTextSize()));
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        TextPaint textPaint = (TextPaint) paint;
        if (charSequence instanceof Spanned) {
            CharacterStyle[] characterStyleArr = (CharacterStyle[]) ((Spanned) charSequence).getSpans(i, i2, CharacterStyle.class);
            Intrinsics.checkNotNull(characterStyleArr);
            for (CharacterStyle characterStyle : characterStyleArr) {
                if (characterStyle != this) {
                    characterStyle.updateDrawState(textPaint);
                }
            }
        }
        Intrinsics.checkNotNull(charSequence);
        canvas.drawText(charSequence, i, i2, f, i4, textPaint);
        float textSize = textPaint.getTextSize() * 0.9f;
        float fMeasureText = textPaint.measureText(charSequence, i, i2);
        float f2 = (i5 + i3) / 2.0f;
        float f3 = textSize / 2.0f;
        float f4 = f + fMeasureText + offset;
        float f5 = f2 - f3;
        float f6 = f4 + textSize;
        float f7 = f2 + f3;
        float f8 = textSize * 0.285f;
        Paint paint2 = colorPaint;
        paint2.setColor(this.color);
        canvas.drawRoundRect(f4, f5, f6, f7, f8, f8, paint2);
    }
}
