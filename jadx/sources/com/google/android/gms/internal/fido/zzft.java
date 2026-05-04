package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzft {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final char[] zza = "0123456789abcdef".toCharArray();

    zzft() {
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzft) {
            zzft zzftVar = (zzft) obj;
            if (zzb() == zzftVar.zzb() && zzc(zzftVar)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (zzb() >= 32) {
            return zza();
        }
        byte[] bArrZze = zze();
        int i = bArrZze[0] & 255;
        for (int i2 = 1; i2 < bArrZze.length; i2++) {
            i |= (bArrZze[i2] & 255) << (i2 * 8);
        }
        return i;
    }

    public final String toString() {
        byte[] bArrZze = zze();
        int length = bArrZze.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b : bArrZze) {
            char[] cArr = zza;
            sb.append(cArr[(b >> 4) & 15]);
            sb.append(cArr[b & 15]);
        }
        return sb.toString();
    }

    public abstract int zza();

    public abstract int zzb();

    abstract boolean zzc(zzft zzftVar);

    public abstract byte[] zzd();

    abstract byte[] zze();
}
