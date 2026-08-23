package io.noties.markwon;

import android.text.SpannableStringBuilder;
import android.text.Spanned;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public class SpannableBuilder implements Appendable, CharSequence {
    private final StringBuilder builder;
    private final Deque<Span> spans;

    public static boolean isPositionValid(int i, int i2, int i3) {
        return i3 > i2 && i2 >= 0 && i3 <= i;
    }

    public static void setSpans(SpannableBuilder spannableBuilder, Object obj, int i, int i2) {
        if (obj == null || !isPositionValid(spannableBuilder.length(), i, i2)) {
            return;
        }
        setSpansInternal(spannableBuilder, obj, i, i2);
    }

    public SpannableBuilder() {
        this(_UrlKt.FRAGMENT_ENCODE_SET);
    }

    public SpannableBuilder(CharSequence charSequence) {
        this.spans = new ArrayDeque(8);
        this.builder = new StringBuilder(charSequence);
        copySpans(0, charSequence);
    }

    public SpannableBuilder append(String str) {
        this.builder.append(str);
        return this;
    }

    @Override // java.lang.Appendable
    public SpannableBuilder append(char c2) {
        this.builder.append(c2);
        return this;
    }

    @Override // java.lang.Appendable
    public SpannableBuilder append(CharSequence charSequence) {
        copySpans(length(), charSequence);
        this.builder.append(charSequence);
        return this;
    }

    @Override // java.lang.Appendable
    public SpannableBuilder append(CharSequence charSequence, int i, int i2) {
        CharSequence charSequenceSubSequence = charSequence.subSequence(i, i2);
        copySpans(length(), charSequenceSubSequence);
        this.builder.append(charSequenceSubSequence);
        return this;
    }

    public SpannableBuilder setSpan(Object obj, int i, int i2, int i3) {
        this.spans.push(new Span(obj, i, i2, i3));
        return this;
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.builder.length();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.builder.charAt(i);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        List<Span> spans = getSpans(i, i2);
        if (spans.isEmpty()) {
            return this.builder.subSequence(i, i2);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.builder.subSequence(i, i2));
        int length = spannableStringBuilder.length();
        for (Span span : spans) {
            int iMax = Math.max(0, span.start - i);
            spannableStringBuilder.setSpan(span.what, iMax, Math.min(length, (span.end - span.start) + iMax), span.flags);
        }
        return spannableStringBuilder;
    }

    public List<Span> getSpans(int i, int i2) {
        int i3;
        int length = length();
        if (!isPositionValid(length, i, i2)) {
            return Collections.EMPTY_LIST;
        }
        if (i == 0 && length == i2) {
            ArrayList arrayList = new ArrayList(this.spans);
            Collections.reverse(arrayList);
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList arrayList2 = new ArrayList(0);
        Iterator<Span> itDescendingIterator = this.spans.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            Span next = itDescendingIterator.next();
            int i4 = next.start;
            if ((i4 >= i && i4 < i2) || (((i3 = next.end) <= i2 && i3 > i) || (i4 < i && i3 > i2))) {
                arrayList2.add(next);
            }
        }
        return Collections.unmodifiableList(arrayList2);
    }

    public char lastChar() {
        return this.builder.charAt(length() - 1);
    }

    public CharSequence removeFromEnd(int i) {
        Span next;
        int i2;
        int length = length();
        SpannableStringBuilderReversed spannableStringBuilderReversed = new SpannableStringBuilderReversed(this.builder.subSequence(i, length));
        Iterator<Span> it = this.spans.iterator();
        while (it.hasNext() && (next = it.next()) != null) {
            int i3 = next.start;
            if (i3 >= i && (i2 = next.end) <= length) {
                spannableStringBuilderReversed.setSpan(next.what, i3 - i, i2 - i, 33);
                it.remove();
            }
        }
        this.builder.replace(i, length, _UrlKt.FRAGMENT_ENCODE_SET);
        return spannableStringBuilderReversed;
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.builder.toString();
    }

    public SpannableStringBuilder spannableStringBuilder() {
        SpannableStringBuilderReversed spannableStringBuilderReversed = new SpannableStringBuilderReversed(this.builder);
        for (Span span : this.spans) {
            spannableStringBuilderReversed.setSpan(span.what, span.start, span.end, span.flags);
        }
        return spannableStringBuilderReversed;
    }

    private void copySpans(int i, CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            boolean z = spanned instanceof SpannableStringBuilderReversed;
            Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
            int length = spans != null ? spans.length : 0;
            if (length > 0) {
                if (!z) {
                    for (int i2 = 0; i2 < length; i2++) {
                        Object obj = spans[i2];
                        setSpan(obj, spanned.getSpanStart(obj) + i, spanned.getSpanEnd(obj) + i, spanned.getSpanFlags(obj));
                    }
                    return;
                }
                for (int i3 = length - 1; i3 >= 0; i3--) {
                    Object obj2 = spans[i3];
                    setSpan(obj2, spanned.getSpanStart(obj2) + i, spanned.getSpanEnd(obj2) + i, spanned.getSpanFlags(obj2));
                }
            }
        }
    }

    public static class Span {
        public int end;
        public final int flags;
        public int start;
        public final Object what;

        public Span(Object obj, int i, int i2, int i3) {
            this.what = obj;
            this.start = i;
            this.end = i2;
            this.flags = i3;
        }
    }

    public static class SpannableStringBuilderReversed extends SpannableStringBuilder {
        public SpannableStringBuilderReversed(CharSequence charSequence) {
            super(charSequence);
        }
    }

    private static void setSpansInternal(SpannableBuilder spannableBuilder, Object obj, int i, int i2) {
        if (obj != null) {
            if (obj.getClass().isArray()) {
                for (Object obj2 : (Object[]) obj) {
                    setSpansInternal(spannableBuilder, obj2, i, i2);
                }
                return;
            }
            spannableBuilder.setSpan(obj, i, i2, 33);
        }
    }
}
