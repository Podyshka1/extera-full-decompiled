package org.telegram.p029ui.Components;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

/* JADX INFO: loaded from: classes7.dex */
public class AnchorSpan extends MetricAffectingSpan {
    private String name;

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
    }

    public AnchorSpan(String str) {
        this.name = str.toLowerCase();
    }

    public String getName() {
        return this.name;
    }
}
