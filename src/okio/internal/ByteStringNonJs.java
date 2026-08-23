package okio.internal;

/* JADX INFO: renamed from: okio.internal.-ByteStringNonJs, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public abstract class ByteStringNonJs {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int decodeHexDigit(char c) {
        if ('0' <= c && c < ':') {
            return c - '0';
        }
        if ('a' <= c && c < 'g') {
            return c - 'W';
        }
        if ('A' <= c && c < 'G') {
            return c - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c);
    }
}
