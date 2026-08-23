package com.google.android.recaptcha.internal;

import java.math.RoundingMode;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes5.dex */
final class zzft {
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
    public zzft(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i = 0; i < cArr.length; i++) {
            char c2 = cArr[i];
            boolean z = true;
            zzff.zzc(c2 < 128, "Non-ASCII character: %s", c2);
            if (bArr[c2] != -1) {
                z = false;
            }
            zzff.zzc(z, "Duplicate character: %s", c2);
            bArr[c2] = (byte) i;
        }
        this(str, cArr, bArr, false);
    }

    public final boolean equals(@CheckForNull Object obj) {
        return (obj instanceof zzft) && Arrays.equals(this.zzf, ((zzft) obj).zzf);
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

    public final int zzb(char c2) throws zzfw {
        if (c2 > 127) {
            throw new zzfw("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c2))));
        }
        byte b2 = this.zzg[c2];
        if (b2 != -1) {
            return b2;
        }
        if (c2 <= ' ' || c2 == 127) {
            throw new zzfw("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c2))));
        }
        throw new zzfw("Unrecognized character: " + c2);
    }

    public final boolean zzc(int i) {
        return this.zzh[i % this.zzc];
    }

    public final boolean zzd(char c2) {
        return this.zzg[61] != -1;
    }

    private zzft(String str, char[] cArr, byte[] bArr, boolean z) {
        this.zze = str;
        cArr.getClass();
        this.zzf = cArr;
        try {
            int length = cArr.length;
            int iZzb = zzga.zzb(length, RoundingMode.UNNECESSARY);
            this.zzb = iZzb;
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iZzb);
            int i = 1 << (3 - iNumberOfTrailingZeros);
            this.zzc = i;
            this.zzd = iZzb >> iNumberOfTrailingZeros;
            this.zza = length - 1;
            this.zzg = bArr;
            boolean[] zArr = new boolean[i];
            for (int i2 = 0; i2 < this.zzd; i2++) {
                zArr[zzga.zza(i2 * 8, this.zzb, RoundingMode.CEILING)] = true;
            }
            this.zzh = zArr;
            this.zzi = false;
        } catch (ArithmeticException e) {
            throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e);
        }
    }
}
