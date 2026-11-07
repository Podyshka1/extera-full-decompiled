package com.google.android.gms.internal.play_billing;

import com.google.protobuf.UnsafeUtil$$ExternalSyntheticBUOutline0;
import java.util.Arrays;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import org.mvel2.asm.Type$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class zzhi {
    private static final zzhi zza = new zzhi(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze = -1;
    private boolean zzf;

    private zzhi(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzhi zzc() {
        return zza;
    }

    public static zzhi zze(zzhi zzhiVar, zzhi zzhiVar2) {
        int i = zzhiVar.zzb + zzhiVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzhiVar.zzc, i);
        System.arraycopy(zzhiVar2.zzc, 0, iArrCopyOf, zzhiVar.zzb, zzhiVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzhiVar.zzd, i);
        System.arraycopy(zzhiVar2.zzd, 0, objArrCopyOf, zzhiVar.zzb, zzhiVar2.zzb);
        return new zzhi(i, iArrCopyOf, objArrCopyOf, true);
    }

    public static zzhi zzf() {
        return new zzhi(0, new int[8], new Object[8], true);
    }

    private final void zzm(int i) {
        int[] iArr = this.zzc;
        if (i > iArr.length) {
            int i2 = this.zzb;
            int i3 = i2 + (i2 / 2);
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i);
            this.zzd = Arrays.copyOf(this.zzd, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzhi)) {
            return false;
        }
        zzhi zzhiVar = (zzhi) obj;
        int i = this.zzb;
        if (i == zzhiVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzhiVar.zzc;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzhiVar.zzd;
                    int i3 = this.zzb;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
                if (iArr[i2] != iArr2[i2]) {
                    break;
                }
                i2++;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        int i2 = i + 527;
        int[] iArr = this.zzc;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = ((i2 * 31) + i3) * 31;
        Object[] objArr = this.zzd;
        int i6 = this.zzb;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }

    public final int zza() {
        int iZzC;
        int iZzD;
        int iZzC2;
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            int i4 = this.zzc[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 == 1) {
                    ((Long) this.zzd[i3]).getClass();
                    iZzC2 = zzep.zzC(i5 << 3) + 8;
                } else if (i6 == 2) {
                    int i7 = i5 << 3;
                    zzei zzeiVar = (zzei) this.zzd[i3];
                    int iZzC3 = zzep.zzC(i7);
                    int iZzd = zzeiVar.zzd();
                    iZzC2 = iZzC3 + zzep.zzC(iZzd) + iZzd;
                } else if (i6 == 3) {
                    int iZzC4 = zzep.zzC(i5 << 3);
                    iZzC = iZzC4 + iZzC4;
                    iZzD = ((zzhi) this.zzd[i3]).zza();
                } else {
                    if (i6 != 5) {
                        UnsafeUtil$$ExternalSyntheticBUOutline0.m507m(new zzfp("Protocol message tag had invalid wire type."));
                        return 0;
                    }
                    ((Integer) this.zzd[i3]).getClass();
                    iZzC2 = zzep.zzC(i5 << 3) + 4;
                }
                i2 += iZzC2;
            } else {
                int i8 = i5 << 3;
                long jLongValue = ((Long) this.zzd[i3]).longValue();
                iZzC = zzep.zzC(i8);
                iZzD = zzep.zzD(jLongValue);
            }
            iZzC2 = iZzC + iZzD;
            i2 += iZzC2;
        }
        this.zze = i2;
        return i2;
    }

    public final int zzb() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int iZzC = 0;
        for (int i2 = 0; i2 < this.zzb; i2++) {
            int i3 = this.zzc[i2] >>> 3;
            zzei zzeiVar = (zzei) this.zzd[i2];
            int iZzC2 = zzep.zzC(8);
            int iZzC3 = zzep.zzC(16) + zzep.zzC(i3);
            int iZzC4 = zzep.zzC(24);
            int iZzd = zzeiVar.zzd();
            iZzC += iZzC2 + iZzC2 + iZzC3 + iZzC4 + zzep.zzC(iZzd) + iZzd;
        }
        this.zze = iZzC;
        return iZzC;
    }

    public final zzhi zzd(zzhi zzhiVar) {
        if (zzhiVar.equals(zza)) {
            return this;
        }
        zzg();
        int i = this.zzb + zzhiVar.zzb;
        zzm(i);
        System.arraycopy(zzhiVar.zzc, 0, this.zzc, this.zzb, zzhiVar.zzb);
        System.arraycopy(zzhiVar.zzd, 0, this.zzd, this.zzb, zzhiVar.zzb);
        this.zzb = i;
        return this;
    }

    public final void zzg() {
        if (this.zzf) {
            return;
        }
        Type$$ExternalSyntheticBUOutline0.m1008m();
    }

    public final void zzh() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    public final void zzi(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzgn.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    public final void zzj(int i, Object obj) {
        zzg();
        zzm(this.zzb + 1);
        int[] iArr = this.zzc;
        int i2 = this.zzb;
        iArr[i2] = i;
        this.zzd[i2] = obj;
        this.zzb = i2 + 1;
    }

    public final void zzl(zzhu zzhuVar) {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    zzhuVar.zzt(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    zzhuVar.zzm(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    zzhuVar.zzd(i4, (zzei) obj);
                } else if (i3 == 3) {
                    zzhuVar.zzF(i4);
                    ((zzhi) obj).zzl(zzhuVar);
                    zzhuVar.zzh(i4);
                } else {
                    if (i3 != 5) {
                        HttpUrl$$ExternalSyntheticBUOutline0.m947m(new zzfp("Protocol message tag had invalid wire type."));
                        return;
                    }
                    zzhuVar.zzk(i4, ((Integer) obj).intValue());
                }
            }
        }
    }
}
