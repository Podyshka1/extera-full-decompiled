package com.google.common.base;

import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class Joiner {
    private final String separator;

    /* JADX INFO: renamed from: on */
    public static Joiner m478on(char c) {
        return new Joiner(String.valueOf(c));
    }

    private Joiner(String str) {
        this.separator = (String) Preconditions.checkNotNull(str);
    }

    public Appendable appendTo(Appendable appendable, Iterator it) throws IOException {
        Preconditions.checkNotNull(appendable);
        if (it.hasNext()) {
            appendable.append(toString(it.next()));
            while (it.hasNext()) {
                appendable.append(this.separator);
                appendable.append(toString(it.next()));
            }
        }
        return appendable;
    }

    public final StringBuilder appendTo(StringBuilder sb, Iterable iterable) {
        return appendTo(sb, iterable.iterator());
    }

    public final StringBuilder appendTo(StringBuilder sb, Iterator it) {
        try {
            appendTo((Appendable) sb, it);
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    CharSequence toString(Object obj) {
        p022j$.util.Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }
}
