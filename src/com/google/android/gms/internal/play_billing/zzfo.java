package com.google.android.gms.internal.play_billing;

import androidx.core.app.NavUtils$$ExternalSyntheticBUOutline0;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzfo {
    static final Charset zza;
    public static final byte[] zzb;

    static {
        Charset.forName("US-ASCII");
        zza = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        zzb = bArr;
        ByteBuffer.wrap(bArr);
        int i = zzel.$r8$clinit;
        try {
            new zzej(bArr, 0, 0, false, null).zza(0);
        } catch (zzfq e) {
            NavUtils$$ExternalSyntheticBUOutline0.m89m(e);
        }
    }

    public static int zza(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int zzb(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    public static Object zzc(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        f$$ExternalSyntheticBUOutline2.m213m("messageType");
        return null;
    }
}
