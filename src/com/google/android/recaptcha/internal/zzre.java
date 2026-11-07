package com.google.android.recaptcha.internal;

import kotlin.UByte;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzre {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final char[] zza = "0123456789abcdef".toCharArray();

    public final boolean equals(Object obj) {
        if (obj instanceof zzre) {
            zzre zzreVar = (zzre) obj;
            if (zza() == zzreVar.zza() && zzf(zzreVar)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (zza() >= 32) {
            return zzc();
        }
        byte[] bArrZze = zze();
        int i = bArrZze[0] & UByte.MAX_VALUE;
        for (int i2 = 1; i2 < bArrZze.length; i2++) {
            i |= (bArrZze[i2] & UByte.MAX_VALUE) << (i2 * 8);
        }
        return i;
    }

    public final String toString() {
        byte[] bArrZze = zze();
        int length = bArrZze.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b2 : bArrZze) {
            char[] cArr = zza;
            sb.append(cArr[(b2 >> 4) & 15]);
            sb.append(cArr[b2 & 15]);
        }
        return sb.toString();
    }

    public abstract int zza();

    public abstract byte[] zzb();

    public abstract int zzc();

    public abstract long zzd();

    public byte[] zze() {
        return zzb();
    }

    public abstract boolean zzf(zzre zzreVar);
}
