package io.noties.markwon.core.spans;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import io.noties.markwon.core.MarkwonTheme;

/* JADX INFO: loaded from: classes5.dex */
public class CodeSpan extends MetricAffectingSpan {
    private final MarkwonTheme theme;

    public CodeSpan(MarkwonTheme markwonTheme) {
        this.theme = markwonTheme;
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        apply(textPaint);
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        apply(textPaint);
        textPaint.bgColor = this.theme.getCodeBackgroundColor(textPaint);
    }

    private void apply(TextPaint textPaint) {
        this.theme.applyCodeTextStyle(textPaint);
    }
}
