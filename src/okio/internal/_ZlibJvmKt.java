package okio.internal;

import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes5.dex */
public abstract class _ZlibJvmKt {
    private static final int DEFAULT_COMPRESSION = -1;
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];

    public static final int getDEFAULT_COMPRESSION() {
        return DEFAULT_COMPRESSION;
    }

    public static final long datePartsToEpochMillis(int i, int i2, int i3, int i4, int i5, int i6) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(14, 0);
        gregorianCalendar.set(i, i2 - 1, i3, i4, i5, i6);
        return gregorianCalendar.getTime().getTime();
    }

    public static final byte[] getEMPTY_BYTE_ARRAY() {
        return EMPTY_BYTE_ARRAY;
    }
}
