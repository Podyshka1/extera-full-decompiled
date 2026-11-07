package com.google.common.base;

import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;
import okio.Buffer$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public class Joiner {
    private final String separator;

    public static Joiner on(String str) {
        return new Joiner(str);
    }

    public static Joiner on(char c2) {
        return new Joiner(String.valueOf(c2));
    }

    private Joiner(String str) {
        this.separator = (String) Preconditions.checkNotNull(str);
    }

    public <A extends Appendable> A appendTo(A a2, Iterator<?> it) throws IOException {
        Preconditions.checkNotNull(a2);
        if (it.hasNext()) {
            a2.append(toString(it.next()));
            while (it.hasNext()) {
                a2.append(this.separator);
                a2.append(toString(it.next()));
            }
        }
        return a2;
    }

    public final StringBuilder appendTo(StringBuilder sb, Iterable<?> iterable) {
        return appendTo(sb, iterable.iterator());
    }

    public final StringBuilder appendTo(StringBuilder sb, Iterator<?> it) {
        try {
            appendTo(sb, it);
            return sb;
        } catch (IOException e) {
            Buffer$$ExternalSyntheticBUOutline2.m917m(e);
            return null;
        }
    }

    public String join(Iterable<?> iterable) {
        return join(iterable.iterator());
    }

    public final String join(Iterator<?> it) {
        return appendTo(new StringBuilder(), it).toString();
    }

    public CharSequence toString(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }
}
