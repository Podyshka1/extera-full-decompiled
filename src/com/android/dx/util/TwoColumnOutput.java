package com.android.dx.util;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class TwoColumnOutput {
    private final StringBuffer leftBuf;
    private final IndentingWriter leftColumn;
    private final int leftWidth;
    private final Writer out;
    private final StringBuffer rightBuf;
    private final IndentingWriter rightColumn;

    public static String toString(String str, int i, String str2, String str3, int i2) {
        StringWriter stringWriter = new StringWriter((str.length() + str3.length()) * 3);
        TwoColumnOutput twoColumnOutput = new TwoColumnOutput(stringWriter, i, i2, str2);
        try {
            twoColumnOutput.getLeft().write(str);
            twoColumnOutput.getRight().write(str3);
            twoColumnOutput.flush();
            return stringWriter.toString();
        } catch (IOException e) {
            Make$Map$$ExternalSyntheticBUOutline0.m973m("shouldn't happen", e);
            return null;
        }
    }

    public TwoColumnOutput(Writer writer, int i, int i2, String str) {
        if (writer == null) {
            f$$ExternalSyntheticBUOutline2.m213m("out == null");
            throw null;
        }
        if (i < 1) {
            f$$ExternalSyntheticBUOutline1.m212m("leftWidth < 1");
            throw null;
        }
        if (i2 < 1) {
            f$$ExternalSyntheticBUOutline1.m212m("rightWidth < 1");
            throw null;
        }
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m213m("spacer == null");
            throw null;
        }
        StringWriter stringWriter = new StringWriter(1000);
        StringWriter stringWriter2 = new StringWriter(1000);
        this.out = writer;
        this.leftWidth = i;
        this.leftBuf = stringWriter.getBuffer();
        this.rightBuf = stringWriter2.getBuffer();
        this.leftColumn = new IndentingWriter(stringWriter, i);
        this.rightColumn = new IndentingWriter(stringWriter2, i2, str);
    }

    public TwoColumnOutput(OutputStream outputStream, int i, int i2, String str) {
        this(new OutputStreamWriter(outputStream), i, i2, str);
    }

    public Writer getLeft() {
        return this.leftColumn;
    }

    public Writer getRight() {
        return this.rightColumn;
    }

    public void flush() {
        try {
            appendNewlineIfNecessary(this.leftBuf, this.leftColumn);
            appendNewlineIfNecessary(this.rightBuf, this.rightColumn);
            outputFullLines();
            flushLeft();
            flushRight();
        } catch (IOException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m899m(e);
        }
    }

    private void outputFullLines() throws IOException {
        int iIndexOf;
        while (true) {
            int iIndexOf2 = this.leftBuf.indexOf("\n");
            if (iIndexOf2 < 0 || (iIndexOf = this.rightBuf.indexOf("\n")) < 0) {
                return;
            }
            if (iIndexOf2 != 0) {
                this.out.write(this.leftBuf.substring(0, iIndexOf2));
            }
            if (iIndexOf != 0) {
                writeSpaces(this.out, this.leftWidth - iIndexOf2);
                this.out.write(this.rightBuf.substring(0, iIndexOf));
            }
            this.out.write(10);
            this.leftBuf.delete(0, iIndexOf2 + 1);
            this.rightBuf.delete(0, iIndexOf + 1);
        }
    }

    private void flushLeft() throws IOException {
        appendNewlineIfNecessary(this.leftBuf, this.leftColumn);
        while (this.leftBuf.length() != 0) {
            this.rightColumn.write(10);
            outputFullLines();
        }
    }

    private void flushRight() throws IOException {
        appendNewlineIfNecessary(this.rightBuf, this.rightColumn);
        while (this.rightBuf.length() != 0) {
            this.leftColumn.write(10);
            outputFullLines();
        }
    }

    private static void appendNewlineIfNecessary(StringBuffer stringBuffer, Writer writer) throws IOException {
        int length = stringBuffer.length();
        if (length == 0 || stringBuffer.charAt(length - 1) == '\n') {
            return;
        }
        writer.write(10);
    }

    private static void writeSpaces(Writer writer, int i) throws IOException {
        while (i > 0) {
            writer.write(32);
            i--;
        }
    }
}
