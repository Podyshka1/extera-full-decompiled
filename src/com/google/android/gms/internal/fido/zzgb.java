package com.google.android.gms.internal.fido;

import java.math.RoundingMode;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class zzgb {
    final int zza;
    final int zzb;
    final int zzc;
    final int zzd;
    private final String zze;
    private final char[] zzf;
    private final byte[] zzg;
    private final boolean zzh;

    /* JADX WARN: Illegal instructions before constructor call */
    zzgb(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i = 0; i < cArr.length; i++) {
            char c = cArr[i];
            boolean z = true;
            zzbm.zzd(c < 128, "Non-ASCII character: %s", c);
            if (bArr[c] != -1) {
                z = false;
            }
            zzbm.zzd(z, "Duplicate character: %s", c);
            bArr[c] = (byte) i;
        }
        this(str, cArr, bArr, false);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgb) {
            zzgb zzgbVar = (zzgb) obj;
            if (this.zzh == zzgbVar.zzh && Arrays.equals(this.zzf, zzgbVar.zzf)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zzf) + (true != this.zzh ? 1237 : 1231);
    }

    public final String toString() {
        return this.zze;
    }

    final char zza(int i) {
        return this.zzf[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11 */
    final zzgb zzb() {
        int i;
        boolean z;
        int i2 = 0;
        while (true) {
            char[] cArr = this.zzf;
            if (i2 >= cArr.length) {
                return this;
            }
            if (zzba.zza(cArr[i2])) {
                int i3 = 0;
                while (true) {
                    if (i3 >= cArr.length) {
                        z = false;
                        break;
                    }
                    char c = cArr[i3];
                    if (c >= 'A' && c <= 'Z') {
                        z = true;
                        break;
                    }
                    i3++;
                }
                zzbm.zzf(!z, "Cannot call upperCase() on a mixed-case alphabet");
                char[] cArr2 = new char[this.zzf.length];
                int i4 = 0;
                while (true) {
                    char[] cArr3 = this.zzf;
                    if (i4 >= cArr3.length) {
                        break;
                    }
                    char c2 = cArr3[i4];
                    if (zzba.zza(c2)) {
                        c2 ^= 32;
                    }
                    cArr2[i4] = (char) c2;
                    i4++;
                }
                zzgb zzgbVar = new zzgb(this.zze.concat(".upperCase()"), cArr2);
                if (!this.zzh || zzgbVar.zzh) {
                    return zzgbVar;
                }
                byte[] bArr = zzgbVar.zzg;
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                for (i = 65; i <= 90; i++) {
                    int i5 = i | 32;
                    byte[] bArr2 = zzgbVar.zzg;
                    byte b = bArr2[i];
                    byte b2 = bArr2[i5];
                    if (b == -1) {
                        bArrCopyOf[i] = b2;
                    } else {
                        char c3 = (char) i;
                        char c4 = (char) i5;
                        if (b2 != -1) {
                            throw new IllegalStateException(zzbo.zza("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c3), Character.valueOf(c4)));
                        }
                        bArrCopyOf[i5] = b;
                    }
                }
                return new zzgb(zzgbVar.zze.concat(".ignoreCase()"), zzgbVar.zzf, bArrCopyOf, true);
            }
            i2++;
        }
    }

    public final boolean zzc(char c) {
        byte[] bArr = this.zzg;
        return bArr.length > 61 && bArr[61] != -1;
    }

    private zzgb(String str, char[] cArr, byte[] bArr, boolean z) {
        this.zze = str;
        cArr.getClass();
        this.zzf = cArr;
        try {
            int length = cArr.length;
            int iZzb = zzgh.zzb(length, RoundingMode.UNNECESSARY);
            this.zzb = iZzb;
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iZzb);
            int i = 1 << (3 - iNumberOfTrailingZeros);
            this.zzc = i;
            this.zzd = iZzb >> iNumberOfTrailingZeros;
            this.zza = length - 1;
            this.zzg = bArr;
            boolean[] zArr = new boolean[i];
            for (int i2 = 0; i2 < this.zzd; i2++) {
                zArr[zzgh.zza(i2 * 8, this.zzb, RoundingMode.CEILING)] = true;
            }
            this.zzh = z;
        } catch (ArithmeticException e) {
            throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e);
        }
    }
}
