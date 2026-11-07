package com.google.android.gms.internal.measurement;

import com.google.protobuf.UnsafeUtil$$ExternalSyntheticBUOutline0;
import java.util.Arrays;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import org.mvel2.asm.Type$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaga {
    private static final zzaga zza = new zzaga(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze = -1;
    private boolean zzf;

    private zzaga(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzaga zza() {
        return zza;
    }

    public static zzaga zzb() {
        return new zzaga(0, new int[8], new Object[8], true);
    }

    public static zzaga zzc(zzaga zzagaVar, zzaga zzagaVar2) {
        int i = zzagaVar.zzb + zzagaVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzagaVar.zzc, i);
        System.arraycopy(zzagaVar2.zzc, 0, iArrCopyOf, zzagaVar.zzb, zzagaVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzagaVar.zzd, i);
        System.arraycopy(zzagaVar2.zzd, 0, objArrCopyOf, zzagaVar.zzb, zzagaVar2.zzb);
        return new zzaga(i, iArrCopyOf, objArrCopyOf, true);
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
        if (obj == null || !(obj instanceof zzaga)) {
            return false;
        }
        zzaga zzagaVar = (zzaga) obj;
        int i = this.zzb;
        if (i == zzagaVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzagaVar.zzc;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzagaVar.zzd;
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

    public final void zzd() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    public final void zze() {
        if (this.zzf) {
            return;
        }
        Type$$ExternalSyntheticBUOutline0.m1008m();
    }

    public final void zzg(zzago zzagoVar) {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    zzagoVar.zzc(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    zzagoVar.zzj(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    zzagoVar.zzn(i4, (zzacr) obj);
                } else if (i3 == 3) {
                    zzagoVar.zzt(i4);
                    ((zzaga) obj).zzg(zzagoVar);
                    zzagoVar.zzu(i4);
                } else {
                    if (i3 != 5) {
                        HttpUrl$$ExternalSyntheticBUOutline0.m947m(new zzaeg("Protocol message tag had invalid wire type."));
                        return;
                    }
                    zzagoVar.zzk(i4, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final int zzh() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int iZzE = 0;
        for (int i2 = 0; i2 < this.zzb; i2++) {
            int i3 = this.zzc[i2] >>> 3;
            zzacr zzacrVar = (zzacr) this.zzd[i2];
            int iZzE2 = zzada.zzE(8);
            int iZzE3 = zzada.zzE(16) + zzada.zzE(i3);
            int iZzE4 = zzada.zzE(24);
            int iZzb = zzacrVar.zzb();
            iZzE += iZzE2 + iZzE2 + iZzE3 + iZzE4 + zzada.zzE(iZzb) + iZzb;
        }
        this.zze = iZzE;
        return iZzE;
    }

    public final int zzi() {
        int iZzE;
        int iZzF;
        int iZzE2;
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
                    iZzE2 = zzada.zzE(i5 << 3) + 8;
                } else if (i6 == 2) {
                    int i7 = i5 << 3;
                    zzacr zzacrVar = (zzacr) this.zzd[i3];
                    int iZzE3 = zzada.zzE(i7);
                    int iZzb = zzacrVar.zzb();
                    iZzE2 = iZzE3 + zzada.zzE(iZzb) + iZzb;
                } else if (i6 == 3) {
                    int iZzE4 = zzada.zzE(i5 << 3);
                    iZzE = iZzE4 + iZzE4;
                    iZzF = ((zzaga) this.zzd[i3]).zzi();
                } else {
                    if (i6 != 5) {
                        UnsafeUtil$$ExternalSyntheticBUOutline0.m507m(new zzaeg("Protocol message tag had invalid wire type."));
                        return 0;
                    }
                    ((Integer) this.zzd[i3]).getClass();
                    iZzE2 = zzada.zzE(i5 << 3) + 4;
                }
                i2 += iZzE2;
            } else {
                int i8 = i5 << 3;
                long jLongValue = ((Long) this.zzd[i3]).longValue();
                iZzE = zzada.zzE(i8);
                iZzF = zzada.zzF(jLongValue);
            }
            iZzE2 = iZzE + iZzF;
            i2 += iZzE2;
        }
        this.zze = i2;
        return i2;
    }

    public final void zzj(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzafe.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    public final void zzk(int i, Object obj) {
        zze();
        zzm(this.zzb + 1);
        int[] iArr = this.zzc;
        int i2 = this.zzb;
        iArr[i2] = i;
        this.zzd[i2] = obj;
        this.zzb = i2 + 1;
    }

    public final zzaga zzl(zzaga zzagaVar) {
        if (zzagaVar.equals(zza)) {
            return this;
        }
        zze();
        int i = this.zzb + zzagaVar.zzb;
        zzm(i);
        System.arraycopy(zzagaVar.zzc, 0, this.zzc, this.zzb, zzagaVar.zzb);
        System.arraycopy(zzagaVar.zzd, 0, this.zzd, this.zzb, zzagaVar.zzb);
        this.zzb = i;
        return this;
    }
}
