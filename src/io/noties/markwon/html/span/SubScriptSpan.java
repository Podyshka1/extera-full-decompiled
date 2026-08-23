package io.noties.markwon.html.span;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

/* JADX INFO: loaded from: classes5.dex */
public class SubScriptSpan extends MetricAffectingSpan {
    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        apply(textPaint);
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        apply(textPaint);
    }

    private void apply(TextPaint textPaint) {
        textPaint.setTextSize(textPaint.getTextSize() * 0.75f);
        textPaint.baselineShift -= (int) (textPaint.ascent() / 2.0f);
    }
}
