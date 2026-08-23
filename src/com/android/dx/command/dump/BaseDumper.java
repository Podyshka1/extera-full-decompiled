package com.android.dx.command.dump;

import com.android.dx.cf.code.ConcreteMethod;
import com.android.dx.cf.iface.Member;
import com.android.dx.cf.iface.ParseObserver;
import com.android.dx.dex.DexOptions;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import com.android.dx.util.IndentingWriter;
import com.android.dx.util.TwoColumnOutput;
import java.io.IOException;
import java.io.PrintStream;
import java.io.StringWriter;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseDumper implements ParseObserver {
    protected Args args;
    private final byte[] bytes;
    protected final DexOptions dexOptions;
    private final String filePath;
    private final int hexCols;
    private int indent;
    private final PrintStream out;
    private final boolean rawBytes;
    private int readBytes;
    private String separator;
    private final boolean strictParse;
    private final int width;

    @Override // com.android.dx.cf.iface.ParseObserver
    public void endParsingMember(ByteArray byteArray, int i, String str, String str2, Member member) {
    }

    @Override // com.android.dx.cf.iface.ParseObserver
    public void startParsingMember(ByteArray byteArray, int i, String str, String str2) {
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003b A[PHI: r2
  0x003b: PHI (r2v8 int) = (r2v6 int), (r2v7 int) binds: [B:10:0x0039, B:13:0x003f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public BaseDumper(byte[] bArr, PrintStream printStream, String str, Args args) {
        this.bytes = bArr;
        boolean z = args.rawBytes;
        this.rawBytes = z;
        this.out = printStream;
        int i = args.width;
        i = i <= 0 ? 79 : i;
        this.width = i;
        this.filePath = str;
        this.strictParse = args.strictParse;
        this.indent = 0;
        this.separator = z ? "|" : _UrlKt.FRAGMENT_ENCODE_SET;
        this.readBytes = 0;
        this.args = args;
        this.dexOptions = new DexOptions();
        int i2 = (((i - 5) / 15) + 1) & (-2);
        int i3 = 6;
        if (i2 < 6) {
            i2 = i3;
        } else {
            i3 = 10;
            if (i2 > 10) {
            }
        }
        this.hexCols = i2;
    }

    public static int computeParamWidth(ConcreteMethod concreteMethod, boolean z) {
        return concreteMethod.getEffectiveDescriptor().getParameterTypes().getWordCount();
    }

    @Override // com.android.dx.cf.iface.ParseObserver
    public void changeIndent(int i) {
        this.indent += i;
        this.separator = this.rawBytes ? "|" : _UrlKt.FRAGMENT_ENCODE_SET;
        for (int i2 = 0; i2 < this.indent; i2++) {
            this.separator += "  ";
        }
    }

    @Override // com.android.dx.cf.iface.ParseObserver
    public void parsed(ByteArray byteArray, int i, int i2, String str) {
        print(twoColumns(getRawBytes() ? hexDump(byteArray.underlyingOffset(i), i2) : _UrlKt.FRAGMENT_ENCODE_SET, str));
        this.readBytes += i2;
    }

    public final int getReadBytes() {
        return this.readBytes;
    }

    public final byte[] getBytes() {
        return this.bytes;
    }

    public final String getFilePath() {
        return this.filePath;
    }

    public final boolean getStrictParse() {
        return this.strictParse;
    }

    public final void print(String str) {
        this.out.print(str);
    }

    public final void println(String str) {
        this.out.println(str);
    }

    public final boolean getRawBytes() {
        return this.rawBytes;
    }

    public final int getWidth1() {
        if (!this.rawBytes) {
            return 0;
        }
        int i = this.hexCols;
        return (i * 2) + 5 + (i / 2);
    }

    public final int getWidth2() {
        return (this.width - (this.rawBytes ? getWidth1() + 1 : 0)) - (this.indent * 2);
    }

    public final String hexDump(int i, int i2) {
        return Hex.dump(this.bytes, i, i2, i, this.hexCols, 4);
    }

    public final String twoColumns(String str, String str2) {
        int width1 = getWidth1();
        int width2 = getWidth2();
        try {
            if (width1 == 0) {
                int length = str2.length();
                StringWriter stringWriter = new StringWriter(length * 2);
                IndentingWriter indentingWriter = new IndentingWriter(stringWriter, width2, this.separator);
                indentingWriter.write(str2);
                if (length == 0 || str2.charAt(length - 1) != '\n') {
                    indentingWriter.write(10);
                }
                indentingWriter.flush();
                return stringWriter.toString();
            }
            return TwoColumnOutput.toString(str, width1, this.separator, str2, width2);
        } catch (IOException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m817m(e);
            return null;
        }
    }
}
