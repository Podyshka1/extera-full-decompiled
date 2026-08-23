package io.noties.markwon.core.spans;

import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class TextViewSpan {
    private final WeakReference<TextView> reference;

    public static TextView textViewOf(Spanned spanned) {
        TextViewSpan[] textViewSpanArr = (TextViewSpan[]) spanned.getSpans(0, spanned.length(), TextViewSpan.class);
        if (textViewSpanArr == null || textViewSpanArr.length <= 0) {
            return null;
        }
        return textViewSpanArr[0].textView();
    }

    public static void applyTo(Spannable spannable, TextView textView) {
        TextViewSpan[] textViewSpanArr = (TextViewSpan[]) spannable.getSpans(0, spannable.length(), TextViewSpan.class);
        if (textViewSpanArr != null) {
            for (TextViewSpan textViewSpan : textViewSpanArr) {
                spannable.removeSpan(textViewSpan);
            }
        }
        spannable.setSpan(new TextViewSpan(textView), 0, spannable.length(), 18);
    }

    public TextViewSpan(TextView textView) {
        this.reference = new WeakReference<>(textView);
    }

    public TextView textView() {
        return this.reference.get();
    }
}
