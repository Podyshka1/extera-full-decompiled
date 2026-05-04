package com.google.android.gms.internal.vision;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlx {
    private static final zzlx zza = new zzlx(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    public static zzlx zza() {
        return zza;
    }

    static zzlx zzb() {
        return new zzlx();
    }

    static zzlx zza(zzlx zzlxVar, zzlx zzlxVar2) {
        int i = zzlxVar.zzb + zzlxVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzlxVar.zzc, i);
        System.arraycopy(zzlxVar2.zzc, 0, iArrCopyOf, zzlxVar.zzb, zzlxVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzlxVar.zzd, i);
        System.arraycopy(zzlxVar2.zzd, 0, objArrCopyOf, zzlxVar.zzb, zzlxVar2.zzb);
        return new zzlx(i, iArrCopyOf, objArrCopyOf, true);
    }

    private zzlx() {
        this(0, new int[8], new Object[8], true);
    }

    private zzlx(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public final void zzc() {
        this.zzf = false;
    }

    final void zza(zzmr zzmrVar) {
        if (zzmrVar.zza() == zzmq.zzb) {
            for (int i = this.zzb - 1; i >= 0; i--) {
                zzmrVar.zza(this.zzc[i] >>> 3, this.zzd[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzmrVar.zza(this.zzc[i2] >>> 3, this.zzd[i2]);
        }
    }

    public final void zzb(zzmr zzmrVar) {
        if (this.zzb == 0) {
            return;
        }
        if (zzmrVar.zza() == zzmq.zza) {
            for (int i = 0; i < this.zzb; i++) {
                zza(this.zzc[i], this.zzd[i], zzmrVar);
            }
            return;
        }
        for (int i2 = this.zzb - 1; i2 >= 0; i2--) {
            zza(this.zzc[i2], this.zzd[i2], zzmrVar);
        }
    }

    private static void zza(int i, Object obj, zzmr zzmrVar) {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzmrVar.zza(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 1) {
            zzmrVar.zzd(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 2) {
            zzmrVar.zza(i2, (zzht) obj);
            return;
        }
        if (i3 != 3) {
            if (i3 == 5) {
                zzmrVar.zzd(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzjk.zzf());
        }
        if (zzmrVar.zza() == zzmq.zza) {
            zzmrVar.zza(i2);
            ((zzlx) obj).zzb(zzmrVar);
            zzmrVar.zzb(i2);
        } else {
            zzmrVar.zzb(i2);
            ((zzlx) obj).zzb(zzmrVar);
            zzmrVar.zza(i2);
        }
    }

    public final int zzd() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int iZzd = 0;
        for (int i2 = 0; i2 < this.zzb; i2++) {
            iZzd += zzii.zzd(this.zzc[i2] >>> 3, (zzht) this.zzd[i2]);
        }
        this.zze = iZzd;
        return iZzd;
    }

    public final int zze() {
        int iZze;
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            int i4 = this.zzc[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 == 0) {
                iZze = zzii.zze(i5, ((Long) this.zzd[i3]).longValue());
            } else if (i6 == 1) {
                iZze = zzii.zzg(i5, ((Long) this.zzd[i3]).longValue());
            } else if (i6 == 2) {
                iZze = zzii.zzc(i5, (zzht) this.zzd[i3]);
            } else if (i6 == 3) {
                iZze = (zzii.zze(i5) << 1) + ((zzlx) this.zzd[i3]).zze();
            } else if (i6 == 5) {
                iZze = zzii.zzi(i5, ((Integer) this.zzd[i3]).intValue());
            } else {
                throw new IllegalStateException(zzjk.zzf());
            }
            i2 += iZze;
        }
        this.zze = i2;
        return i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzlx)) {
            return false;
        }
        zzlx zzlxVar = (zzlx) obj;
        int i = this.zzb;
        if (i == zzlxVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzlxVar.zzc;
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    if (iArr[i2] != iArr2[i2]) {
                        break;
                    }
                    i2++;
                } else {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzlxVar.zzd;
                    int i3 = this.zzb;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        int i2 = (i + 527) * 31;
        int[] iArr = this.zzc;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = (i2 + i3) * 31;
        Object[] objArr = this.zzd;
        int i6 = this.zzb;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }

    final void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzkp.zza(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    final void zza(int i, Object obj) {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
        int i2 = this.zzb;
        int[] iArr = this.zzc;
        if (i2 == iArr.length) {
            int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
            this.zzc = Arrays.copyOf(iArr, i3);
            this.zzd = Arrays.copyOf(this.zzd, i3);
        }
        int[] iArr2 = this.zzc;
        int i4 = this.zzb;
        iArr2[i4] = i;
        this.zzd[i4] = obj;
        this.zzb = i4 + 1;
    }
}
