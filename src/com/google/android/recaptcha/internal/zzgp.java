package com.google.android.recaptcha.internal;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes5.dex */
public final class zzgp {
    private final zzd zza;

    public zzgp(zzd zzdVar) {
        this.zza = zzdVar;
    }

    public static final String zzb() {
        zzrv zzrvVarZzi = zzrv.zzi();
        int i = (((((~350322227) & 1152172203) | 1825506674) + ((350322227 & 18993305) | 769070672)) - 1815051211) ^ (1982275856 % 1275373743);
        int i2 = (((((~269455306) & 1628467779) | 508432336) + ((269455306 & 1769894151) | 149815628)) - 2089097405) ^ (524872353 % 327254586);
        int[] iArr = {491705403, 818579176, 1201981447, 810223592, 1243973908, -593404049, 554701476, 1889947178, 1780695788};
        int i3 = iArr[0];
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = iArr[3];
        int i7 = iArr[4];
        int i8 = iArr[5];
        int i9 = iArr[6];
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((iArr[7] % 1780695788) ^ (i9 + ((((i4 & (~i3)) | i5) + ((i3 & i6) | i7)) - i8)));
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putShort((short) i2);
        byteBufferAllocate.putInt(i);
        byte[] bArrArray = byteBufferAllocate.array();
        return zzrvVarZzi.zzg(bArrArray, 0, bArrArray.length);
    }

    public final zzd zza() {
        return this.zza;
    }
}
