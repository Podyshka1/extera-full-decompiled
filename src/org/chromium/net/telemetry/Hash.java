package org.chromium.net.telemetry;

import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Hash {
    private static final String TAG = CronetLoggerImpl.class.getSimpleName();
    private static final MessageDigest MD5_MESSAGE_DIGEST = getMd5MessageDigest();

    private static MessageDigest getMd5MessageDigest() {
        try {
            return MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            String str = TAG;
            if (!Log.isLoggable(str, 3)) {
                return null;
            }
            Log.d(str, "Error while instantiating messageDigest", e);
            return null;
        }
    }

    public static long hash(byte[] bArr) {
        MessageDigest messageDigest = MD5_MESSAGE_DIGEST;
        if (messageDigest == null || bArr == null || bArr.length == 0) {
            return 0L;
        }
        return ByteBuffer.wrap(messageDigest.digest(bArr)).getLong();
    }

    public static long hash(String str) {
        if (MD5_MESSAGE_DIGEST == null || str == null || str.isEmpty()) {
            return 0L;
        }
        return hash(str.getBytes(StandardCharsets.UTF_8));
    }
}
