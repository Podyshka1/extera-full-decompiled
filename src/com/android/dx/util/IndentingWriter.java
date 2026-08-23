package com.android.dx.util;

import java.io.FilterWriter;
import java.io.Writer;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class IndentingWriter extends FilterWriter {
    private boolean collectingIndent;
    private int column;
    private int indent;
    private final int maxIndent;
    private final String prefix;
    private final int width;

    public IndentingWriter(Writer writer, int i, String str) {
        super(writer);
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("width < 0");
        }
        if (str == null) {
            throw new NullPointerException("prefix == null");
        }
        this.width = i != 0 ? i : Integer.MAX_VALUE;
        this.maxIndent = i >> 1;
        this.prefix = str.length() == 0 ? null : str;
        bol();
    }

    public IndentingWriter(Writer writer, int i) {
        this(writer, i, _UrlKt.FRAGMENT_ENCODE_SET);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(int i) {
        int i2;
        synchronized (((FilterWriter) this).lock) {
            try {
                int i3 = 0;
                if (this.collectingIndent) {
                    if (i == 32) {
                        int i4 = this.indent + 1;
                        this.indent = i4;
                        int i5 = this.maxIndent;
                        if (i4 >= i5) {
                            this.indent = i5;
                            this.collectingIndent = false;
                        }
                    } else {
                        this.collectingIndent = false;
                    }
                }
                if (this.column == this.width && i != 10) {
                    ((FilterWriter) this).out.write(10);
                    this.column = 0;
                }
                if (this.column == 0) {
                    String str = this.prefix;
                    if (str != null) {
                        ((FilterWriter) this).out.write(str);
                    }
                    if (!this.collectingIndent) {
                        while (true) {
                            i2 = this.indent;
                            if (i3 >= i2) {
                                break;
                            }
                            ((FilterWriter) this).out.write(32);
                            i3++;
                        }
                        this.column = i2;
                    }
                }
                ((FilterWriter) this).out.write(i);
                if (i == 10) {
                    bol();
                } else {
                    this.column++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        synchronized (((FilterWriter) this).lock) {
            while (i2 > 0) {
                try {
                    write(cArr[i]);
                    i++;
                    i2--;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(String str, int i, int i2) {
        synchronized (((FilterWriter) this).lock) {
            while (i2 > 0) {
                try {
                    write(str.charAt(i));
                    i++;
                    i2--;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void bol() {
        this.column = 0;
        this.collectingIndent = this.maxIndent != 0;
        this.indent = 0;
    }
}
