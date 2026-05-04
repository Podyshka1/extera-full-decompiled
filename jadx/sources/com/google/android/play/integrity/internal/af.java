package com.google.android.play.integrity.internal;

import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class af {
    /* JADX INFO: renamed from: a */
    public static String m356a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            return Base64.encodeToString(messageDigest.digest(), 11);
        } catch (NoSuchAlgorithmException unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }
}
