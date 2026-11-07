package com.google.android.recaptcha.internal;

import java.math.RoundingMode;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
final class zzrq {
    final int zza;
    final int zzb;
    final int zzc;
    final int zzd;
    private final String zze;
    private final char[] zzf;
    private final byte[] zzg;
    private final boolean[] zzh;
    private final boolean zzi;

    /* JADX WARN: Illegal instructions before constructor call */
    public zzrq(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i = 0; i < cArr.length; i++) {
            char c2 = cArr[i];
            boolean z = true;
            zzoq.zzb(c2 < 128, "Non-ASCII character: %s", c2);
            if (bArr[c2] != -1) {
                z = false;
            }
            zzoq.zzb(z, "Duplicate character: %s", c2);
            bArr[c2] = (byte) i;
        }
        this(str, cArr, bArr, false);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzrq) && Arrays.equals(this.zzf, ((zzrq) obj).zzf);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzf) + 1237;
    }

    public final String toString() {
        return this.zze;
    }

    public final char zza(int i) {
        return this.zzf[i];
    }

    public final boolean zzb(int i) {
        return this.zzh[i % this.zzc];
    }

    public final int zzc(char c2) throws zzrt {
        if (c2 > 127) {
            throw new zzrt("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c2))));
        }
        byte b2 = this.zzg[c2];
        if (b2 != -1) {
            return b2;
        }
        if (c2 <= ' ' || c2 == 127) {
            throw new zzrt("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c2))));
        }
        StringBuilder sb = new StringBuilder(String.valueOf(c2).length() + 24);
        sb.append("Unrecognized character: ");
        sb.append(c2);
        throw new zzrt(sb.toString());
    }

    public final boolean zzd(char c2) {
        return this.zzg[61] != -1;
    }

    public final /* synthetic */ char[] zze() {
        return this.zzf;
    }

    private zzrq(String str, char[] cArr, byte[] bArr, boolean z) {
        this.zze = str;
        cArr.getClass();
        this.zzf = cArr;
        try {
            int length = cArr.length;
            int iZza = zzrx.zza(length, RoundingMode.UNNECESSARY);
            this.zzb = iZza;
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iZza);
            int i = 1 << (3 - iNumberOfTrailingZeros);
            this.zzc = i;
            this.zzd = iZza >> iNumberOfTrailingZeros;
            this.zza = length - 1;
            this.zzg = bArr;
            boolean[] zArr = new boolean[i];
            for (int i2 = 0; i2 < this.zzd; i2++) {
                zArr[zzrx.zzb(i2 * 8, this.zzb, RoundingMode.CEILING)] = true;
            }
            this.zzh = zArr;
            this.zzi = false;
        } catch (ArithmeticException e) {
            int length2 = cArr.length;
            StringBuilder sb = new StringBuilder(String.valueOf(length2).length() + 24);
            sb.append("Illegal alphabet length ");
            sb.append(length2);
            throw new IllegalArgumentException(sb.toString(), e);
        }
    }
}
