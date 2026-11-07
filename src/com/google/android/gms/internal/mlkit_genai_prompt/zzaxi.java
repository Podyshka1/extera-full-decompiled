package com.google.android.gms.internal.mlkit_genai_prompt;

import androidx.core.app.NavUtils$$ExternalSyntheticBUOutline0;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaxi {
    public static final byte[] zza;

    static {
        byte[] bArr = new byte[0];
        zza = bArr;
        ByteBuffer.wrap(bArr);
        int i = zzawe.$r8$clinit;
        try {
            new zzawd(bArr, 0, 0, false, null).zza(0);
        } catch (zzaxm e) {
            NavUtils$$ExternalSyntheticBUOutline0.m89m(e);
        }
    }

    public static int zza(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int zzb(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }
}
