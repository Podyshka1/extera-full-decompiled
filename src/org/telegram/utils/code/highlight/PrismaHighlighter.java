package org.telegram.utils.code.highlight;

import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes8.dex */
public final class PrismaHighlighter implements AutoCloseable {
    private long nativeHandle;
    private final PrismaTokenStyles styles;
    private final String[] tokenNames;

    private static native long nativeCreate(byte[] bArr);

    private static native void nativeDestroy(long j);

    private static native String[] nativeGetLanguages(long j);

    private static native String[] nativeGetTokenNames(long j);

    private static native int[] nativeHighlight(long j, String str, String str2);

    public PrismaHighlighter(byte[] bArr) throws Throwable {
        if (bArr == null) {
            f$$ExternalSyntheticBUOutline2.m216m("grammars");
            throw null;
        }
        long jNativeCreate = nativeCreate(bArr);
        this.nativeHandle = jNativeCreate;
        if (jNativeCreate == 0) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Native highlighter was not created");
            throw null;
        }
        try {
            String[] strArrNativeGetTokenNames = nativeGetTokenNames(jNativeCreate);
            this.tokenNames = strArrNativeGetTokenNames;
            if (strArrNativeGetTokenNames == null || strArrNativeGetTokenNames.length == 0 || !_UrlKt.FRAGMENT_ENCODE_SET.equals(strArrNativeGetTokenNames[0])) {
                throw new IllegalStateException("Invalid native token name table");
            }
            this.styles = new PrismaTokenStyles(strArrNativeGetTokenNames);
        } catch (Error e) {
            e = e;
            close();
            throw e;
        } catch (RuntimeException e2) {
            e = e2;
            close();
            throw e;
        }
    }

    public synchronized Tokenization tokenize(String str, String str2) {
        int[] iArrNativeHighlight;
        checkOpen();
        if (str == null) {
            throw new NullPointerException("text");
        }
        if (str2 == null) {
            throw new NullPointerException("language");
        }
        iArrNativeHighlight = nativeHighlight(this.nativeHandle, str, str2);
        validateRecords(iArrNativeHighlight, str, this.tokenNames.length);
        return new Tokenization(iArrNativeHighlight, this.tokenNames, this.styles);
    }

    private static void validateRecords(int[] iArr, String str, int i) {
        if (iArr == null || iArr.length % 5 != 0) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Invalid native token array");
            return;
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < iArr.length) {
            int i4 = iArr[i2];
            int i5 = iArr[i2 + 1];
            int i6 = iArr[i2 + 2];
            int i7 = iArr[i2 + 3];
            int i8 = iArr[i2 + 4];
            if (i4 < i3 || i5 <= i4 || i5 > str.length() || i6 < 0 || i6 >= i || i7 < 0 || i7 >= i || i8 < -1 || i8 >= i2 / 5 || splitsSurrogate(str, i4) || splitsSurrogate(str, i5)) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Invalid native token range");
                return;
            }
            if (i8 >= 0) {
                int i9 = i8 * 5;
                if (i4 < iArr[i9] || i5 > iArr[i9 + 1]) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("Native token is outside its parent");
                    return;
                }
            }
            i2 += 5;
            i3 = i4;
        }
    }

    private static boolean splitsSurrogate(String str, int i) {
        return i > 0 && i < str.length() && Character.isHighSurrogate(str.charAt(i + (-1))) && Character.isLowSurrogate(str.charAt(i));
    }

    public static final class Tokenization {
        private final String[] names;
        private final int[] records;
        private volatile int[] styledRanges;
        private final PrismaTokenStyles styles;

        public Tokenization(int[] iArr, String[] strArr, PrismaTokenStyles prismaTokenStyles) {
            this.records = iArr;
            this.names = strArr;
            this.styles = prismaTokenStyles;
        }

        public int size() {
            return this.records.length / 5;
        }

        public int start(int i) {
            return this.records[i * 5];
        }

        public int end(int i) {
            return this.records[(i * 5) + 1];
        }

        public int parent(int i) {
            return this.records[(i * 5) + 4];
        }

        public int typeId(int i) {
            return this.records[(i * 5) + 2];
        }

        public int aliasId(int i) {
            return this.records[(i * 5) + 3];
        }

        public synchronized int[] styledRanges() {
            try {
                if (this.styledRanges == null) {
                    this.styledRanges = this.styles.resolve(this);
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.styledRanges;
        }

        public long estimatedBytes() {
            return (((long) this.records.length) * 4) + 64 + (this.styledRanges == null ? 0L : 4 * ((long) this.styledRanges.length));
        }
    }

    public synchronized String[] getLanguages() {
        checkOpen();
        return nativeGetLanguages(this.nativeHandle);
    }

    @Override // java.lang.AutoCloseable
    public synchronized void close() {
        long j = this.nativeHandle;
        if (j != 0) {
            nativeDestroy(j);
            this.nativeHandle = 0L;
        }
    }

    private void checkOpen() {
        if (this.nativeHandle != 0) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Highlighter is closed");
    }
}
