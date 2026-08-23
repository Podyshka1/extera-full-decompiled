package org.lsposed.lsparanoid;

import okhttp3.internal.p025ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes.dex */
public abstract class DeobfuscatorHelper {
    public static String getString(long j, String[] strArr) {
        long next = RandomHelper.next(RandomHelper.seed(4294967295L & j));
        long j2 = (next >>> 32) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        long next2 = RandomHelper.next(next);
        int i = (int) (((j >>> 32) ^ j2) ^ ((next2 >>> 16) & (-65536)));
        long charAt = getCharAt(i, strArr, next2);
        int i2 = (int) ((charAt >>> 32) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        char[] cArr = new char[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            charAt = getCharAt(i + i3 + 1, strArr, charAt);
            cArr[i3] = (char) ((charAt >>> 32) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        }
        return new String(cArr);
    }

    private static long getCharAt(int i, String[] strArr, long j) {
        return (((long) strArr[i / 8191].charAt(i % 8191)) << 32) ^ RandomHelper.next(j);
    }
}
