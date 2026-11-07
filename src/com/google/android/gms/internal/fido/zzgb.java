package com.google.android.gms.internal.fido;

import java.math.RoundingMode;
import java.util.Arrays;
import okio.Segment$$ExternalSyntheticBUOutline1;

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
    public zzgb(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i = 0; i < cArr.length; i++) {
            char c2 = cArr[i];
            boolean z = true;
            zzbm.zzd(c2 < 128, "Non-ASCII character: %s", c2);
            if (bArr[c2] != -1) {
                z = false;
            }
            zzbm.zzd(z, "Duplicate character: %s", c2);
            bArr[c2] = (byte) i;
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

    public final char zza(int i) {
        return this.zzf[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v8 */
    public final zzgb zzb() {
        int i;
        boolean z;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            char[] cArr = this.zzf;
            if (i3 >= cArr.length) {
                return this;
            }
            if (zzba.zza(cArr[i3])) {
                int i4 = 0;
                while (true) {
                    if (i4 >= cArr.length) {
                        z = false;
                        break;
                    }
                    char c2 = cArr[i4];
                    if (c2 >= 'A' && c2 <= 'Z') {
                        z = true;
                        break;
                    }
                    i4++;
                }
                zzbm.zzf(!z, "Cannot call upperCase() on a mixed-case alphabet");
                char[] cArr2 = new char[this.zzf.length];
                while (true) {
                    char[] cArr3 = this.zzf;
                    if (i2 >= cArr3.length) {
                        break;
                    }
                    char c3 = cArr3[i2];
                    if (zzba.zza(c3)) {
                        c3 ^= 32;
                    }
                    cArr2[i2] = (char) c3;
                    i2++;
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
                    byte b2 = bArr2[i];
                    byte b3 = bArr2[i5];
                    if (b2 == -1) {
                        bArrCopyOf[i] = b3;
                    } else {
                        char c4 = (char) i;
                        char c5 = (char) i5;
                        if (b3 != -1) {
                            Segment$$ExternalSyntheticBUOutline1.m925m(zzbo.zza("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c4), Character.valueOf(c5)));
                            return null;
                        }
                        bArrCopyOf[i5] = b2;
                    }
                }
                return new zzgb(zzgbVar.zze.concat(".ignoreCase()"), zzgbVar.zzf, bArrCopyOf, true);
            }
            i3++;
        }
    }

    public final boolean zzc(char c2) {
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
