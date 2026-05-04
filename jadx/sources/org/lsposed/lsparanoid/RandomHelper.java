package org.lsposed.lsparanoid;

import okhttp3.internal.p025ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes.dex */
public abstract class RandomHelper {
    private static short rotl(short s, int i) {
        return (short) ((s >>> (32 - i)) | (s << i));
    }

    public static long seed(long j) {
        long j2 = (j ^ (j >>> 33)) * 7109453100751455733L;
        return ((j2 ^ (j2 >>> 28)) * (-3808689974395783757L)) >>> 32;
    }

    public static long next(long j) {
        short s = (short) (j & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        short s2 = (short) ((j >>> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
        short sRotl = (short) (rotl((short) (s + s2), 9) + s);
        short s3 = (short) (s2 ^ s);
        return ((((long) rotl(s3, 10)) | (((long) sRotl) << 16)) << 16) | ((long) ((short) (((short) (rotl(s, 13) ^ s3)) ^ (s3 << 5))));
    }
}
