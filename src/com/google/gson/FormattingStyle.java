package com.google.gson;

import okhttp3.internal.url._UrlKt;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class FormattingStyle {
    public static final FormattingStyle COMPACT = new FormattingStyle(_UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, false);
    public static final FormattingStyle PRETTY = new FormattingStyle("\n", "  ", true);
    private final String indent;
    private final String newline;
    private final boolean spaceAfterSeparators;

    private FormattingStyle(String str, String str2, boolean z) {
        Objects.requireNonNull(str, "newline == null");
        Objects.requireNonNull(str2, "indent == null");
        if (!str.matches("[\r\n]*")) {
            throw new IllegalArgumentException("Only combinations of \\n and \\r are allowed in newline.");
        }
        if (!str2.matches("[ \t]*")) {
            throw new IllegalArgumentException("Only combinations of spaces and tabs are allowed in indent.");
        }
        this.newline = str;
        this.indent = str2;
        this.spaceAfterSeparators = z;
    }

    public String getNewline() {
        return this.newline;
    }

    public String getIndent() {
        return this.indent;
    }

    public boolean usesSpaceAfterSeparators() {
        return this.spaceAfterSeparators;
    }
}
