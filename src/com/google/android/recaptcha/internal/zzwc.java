package com.google.android.recaptcha.internal;

import android.os.Build;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzwc {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        Charset.forName("UTF-8");
    }

    public static boolean zza() {
        return Objects.equals(System.getProperty("java.vendor"), "The Android Project");
    }

    public static Integer zzb() {
        if (zza()) {
            return Integer.valueOf(Build.VERSION.SDK_INT);
        }
        return null;
    }

    public static boolean zzc(byte[] bArr, byte[] bArr2) {
        if (bArr2.length < bArr.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr2[i] != bArr[i]) {
                return false;
            }
        }
        return true;
    }
}
