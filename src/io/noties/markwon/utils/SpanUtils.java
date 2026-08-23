package io.noties.markwon.utils;

import android.graphics.Canvas;
import android.text.Layout;
import android.text.Spanned;
import android.widget.TextView;
import io.noties.markwon.core.spans.TextLayoutSpan;
import io.noties.markwon.core.spans.TextViewSpan;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SpanUtils {
    public static int width(Canvas canvas, CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            Layout layoutLayoutOf = TextLayoutSpan.layoutOf(spanned);
            if (layoutLayoutOf != null) {
                return layoutLayoutOf.getWidth();
            }
            TextView textViewTextViewOf = TextViewSpan.textViewOf(spanned);
            if (textViewTextViewOf != null) {
                return (textViewTextViewOf.getWidth() - textViewTextViewOf.getPaddingLeft()) - textViewTextViewOf.getPaddingRight();
            }
        }
        return canvas.getWidth();
    }
}
