package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzey {
    private static final zzey zzoz = new zzey(0, new int[0], new Object[0], false);
    private int count;
    private boolean zzfa;
    private int zzjq;
    private Object[] zzmj;
    private int[] zzpa;

    private zzey() {
        this(0, new int[8], new Object[8], true);
    }

    private zzey(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzjq = -1;
        this.count = i;
        this.zzpa = iArr;
        this.zzmj = objArr;
        this.zzfa = z;
    }

    static zzey zza(zzey zzeyVar, zzey zzeyVar2) {
        int i = zzeyVar.count + zzeyVar2.count;
        int[] iArrCopyOf = Arrays.copyOf(zzeyVar.zzpa, i);
        System.arraycopy(zzeyVar2.zzpa, 0, iArrCopyOf, zzeyVar.count, zzeyVar2.count);
        Object[] objArrCopyOf = Arrays.copyOf(zzeyVar.zzmj, i);
        System.arraycopy(zzeyVar2.zzmj, 0, objArrCopyOf, zzeyVar.count, zzeyVar2.count);
        return new zzey(i, iArrCopyOf, objArrCopyOf, true);
    }

    private static void zzb(int i, Object obj, zzfr zzfrVar) {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzfrVar.zzi(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 1) {
            zzfrVar.zzc(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 2) {
            zzfrVar.zza(i2, (zzbb) obj);
            return;
        }
        if (i3 != 3) {
            if (i3 != 5) {
                throw new RuntimeException(zzco.zzbn());
            }
            zzfrVar.zzf(i2, ((Integer) obj).intValue());
        } else if (zzfrVar.zzaj() == zzcg.zzg.zzko) {
            zzfrVar.zzaa(i2);
            ((zzey) obj).zzb(zzfrVar);
            zzfrVar.zzab(i2);
        } else {
            zzfrVar.zzab(i2);
            ((zzey) obj).zzb(zzfrVar);
            zzfrVar.zzaa(i2);
        }
    }

    public static zzey zzea() {
        return zzoz;
    }

    static zzey zzeb() {
        return new zzey();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzey)) {
            return false;
        }
        zzey zzeyVar = (zzey) obj;
        int i = this.count;
        if (i == zzeyVar.count) {
            int[] iArr = this.zzpa;
            int[] iArr2 = zzeyVar.zzpa;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.zzmj;
                    Object[] objArr2 = zzeyVar.zzmj;
                    int i3 = this.count;
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
        int i = this.count;
        int i2 = (i + 527) * 31;
        int[] iArr = this.zzpa;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = (i2 + i3) * 31;
        Object[] objArr = this.zzmj;
        int i6 = this.count;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }

    final void zza(zzfr zzfrVar) {
        if (zzfrVar.zzaj() == zzcg.zzg.zzkp) {
            for (int i = this.count - 1; i >= 0; i--) {
                zzfrVar.zza(this.zzpa[i] >>> 3, this.zzmj[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            zzfrVar.zza(this.zzpa[i2] >>> 3, this.zzmj[i2]);
        }
    }

    final void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.count; i2++) {
            zzdr.zza(sb, i, String.valueOf(this.zzpa[i2] >>> 3), this.zzmj[i2]);
        }
    }

    public final int zzas() {
        int iZze;
        int i = this.zzjq;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            int i4 = this.zzpa[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 == 0) {
                iZze = zzbn.zze(i5, ((Long) this.zzmj[i3]).longValue());
            } else if (i6 == 1) {
                iZze = zzbn.zzg(i5, ((Long) this.zzmj[i3]).longValue());
            } else if (i6 == 2) {
                iZze = zzbn.zzc(i5, (zzbb) this.zzmj[i3]);
            } else if (i6 == 3) {
                iZze = (zzbn.zzr(i5) << 1) + ((zzey) this.zzmj[i3]).zzas();
            } else {
                if (i6 != 5) {
                    throw new IllegalStateException(zzco.zzbn());
                }
                iZze = zzbn.zzj(i5, ((Integer) this.zzmj[i3]).intValue());
            }
            i2 += iZze;
        }
        this.zzjq = i2;
        return i2;
    }

    final void zzb(int i, Object obj) {
        if (!this.zzfa) {
            throw new UnsupportedOperationException();
        }
        int i2 = this.count;
        int[] iArr = this.zzpa;
        if (i2 == iArr.length) {
            int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
            this.zzpa = Arrays.copyOf(iArr, i3);
            this.zzmj = Arrays.copyOf(this.zzmj, i3);
        }
        int[] iArr2 = this.zzpa;
        int i4 = this.count;
        iArr2[i4] = i;
        this.zzmj[i4] = obj;
        this.count = i4 + 1;
    }

    public final void zzb(zzfr zzfrVar) {
        if (this.count == 0) {
            return;
        }
        if (zzfrVar.zzaj() == zzcg.zzg.zzko) {
            for (int i = 0; i < this.count; i++) {
                zzb(this.zzpa[i], this.zzmj[i], zzfrVar);
            }
            return;
        }
        for (int i2 = this.count - 1; i2 >= 0; i2--) {
            zzb(this.zzpa[i2], this.zzmj[i2], zzfrVar);
        }
    }

    public final int zzec() {
        int i = this.zzjq;
        if (i != -1) {
            return i;
        }
        int iZzd = 0;
        for (int i2 = 0; i2 < this.count; i2++) {
            iZzd += zzbn.zzd(this.zzpa[i2] >>> 3, (zzbb) this.zzmj[i2]);
        }
        this.zzjq = iZzd;
        return iZzd;
    }

    public final void zzv() {
        this.zzfa = false;
    }
}
