package io.noties.markwon.core.spans;

import android.text.Layout;
import android.text.Spannable;
import android.text.Spanned;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class TextLayoutSpan {
    private final WeakReference<Layout> reference;

    public static Layout layoutOf(Spanned spanned) {
        TextLayoutSpan[] textLayoutSpanArr = (TextLayoutSpan[]) spanned.getSpans(0, spanned.length(), TextLayoutSpan.class);
        if (textLayoutSpanArr == null || textLayoutSpanArr.length <= 0) {
            return null;
        }
        return textLayoutSpanArr[0].layout();
    }

    public static void applyTo(Spannable spannable, Layout layout) {
        TextLayoutSpan[] textLayoutSpanArr = (TextLayoutSpan[]) spannable.getSpans(0, spannable.length(), TextLayoutSpan.class);
        if (textLayoutSpanArr != null) {
            for (TextLayoutSpan textLayoutSpan : textLayoutSpanArr) {
                spannable.removeSpan(textLayoutSpan);
            }
        }
        spannable.setSpan(new TextLayoutSpan(layout), 0, spannable.length(), 18);
    }

    public TextLayoutSpan(Layout layout) {
        this.reference = new WeakReference<>(layout);
    }

    public Layout layout() {
        return this.reference.get();
    }
}
