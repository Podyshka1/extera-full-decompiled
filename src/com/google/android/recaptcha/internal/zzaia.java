package com.google.android.recaptcha.internal;

import com.google.protobuf.UnsafeUtil$$ExternalSyntheticBUOutline0;
import java.util.Arrays;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;
import org.mvel2.asm.Type$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaia {
    private static final zzaia zza = new zzaia(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze = -1;
    private boolean zzf;

    private zzaia(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzaia zza() {
        return zza;
    }

    public static zzaia zzb() {
        return new zzaia(0, new int[8], new Object[8], true);
    }

    public static zzaia zzc(zzaia zzaiaVar, zzaia zzaiaVar2) {
        int i = zzaiaVar.zzb + zzaiaVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzaiaVar.zzc, i);
        System.arraycopy(zzaiaVar2.zzc, 0, iArrCopyOf, zzaiaVar.zzb, zzaiaVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzaiaVar.zzd, i);
        System.arraycopy(zzaiaVar2.zzd, 0, objArrCopyOf, zzaiaVar.zzb, zzaiaVar2.zzb);
        return new zzaia(i, iArrCopyOf, objArrCopyOf, true);
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
        if (obj == null || !(obj instanceof zzaia)) {
            return false;
        }
        zzaia zzaiaVar = (zzaia) obj;
        int i = this.zzb;
        if (i == zzaiaVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzaiaVar.zzc;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzaiaVar.zzd;
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
        Type$$ExternalSyntheticBUOutline0.m960m();
    }

    public final void zzg(zzafb zzafbVar) {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    zzafbVar.zzc(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    zzafbVar.zzj(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    zzafbVar.zzn(i3, (zzaer) obj);
                } else if (i4 == 3) {
                    zzafbVar.zzt(i3);
                    ((zzaia) obj).zzg(zzafbVar);
                    zzafbVar.zzu(i3);
                } else {
                    if (i4 != 5) {
                        HttpUrl$$ExternalSyntheticBUOutline0.m899m(new zzagj("Protocol message tag had invalid wire type."));
                        return;
                    }
                    zzafbVar.zzk(i3, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final int zzh() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int iZzu = 0;
        for (int i2 = 0; i2 < this.zzb; i2++) {
            int i3 = this.zzc[i2] >>> 3;
            zzaer zzaerVar = (zzaer) this.zzd[i2];
            int iZzu2 = zzafa.zzu(8);
            int iZzu3 = zzafa.zzu(16) + zzafa.zzu(i3);
            int iZzu4 = zzafa.zzu(24);
            int iZzb = zzaerVar.zzb();
            iZzu += iZzu2 + iZzu2 + iZzu3 + iZzu4 + zzafa.zzu(iZzb) + iZzb;
        }
        this.zze = iZzu;
        return iZzu;
    }

    public final int zzi() {
        int iZzu;
        int iZzv;
        int iZzu2;
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
                    iZzu2 = zzafa.zzu(i5 << 3) + 8;
                } else if (i6 == 2) {
                    int i7 = i5 << 3;
                    zzaer zzaerVar = (zzaer) this.zzd[i3];
                    int iZzu3 = zzafa.zzu(i7);
                    int iZzb = zzaerVar.zzb();
                    iZzu2 = iZzu3 + zzafa.zzu(iZzb) + iZzb;
                } else if (i6 == 3) {
                    int iZzu4 = zzafa.zzu(i5 << 3);
                    iZzu = iZzu4 + iZzu4;
                    iZzv = ((zzaia) this.zzd[i3]).zzi();
                } else {
                    if (i6 != 5) {
                        UnsafeUtil$$ExternalSyntheticBUOutline0.m483m(new zzagj("Protocol message tag had invalid wire type."));
                        return 0;
                    }
                    ((Integer) this.zzd[i3]).getClass();
                    iZzu2 = zzafa.zzu(i5 << 3) + 4;
                }
                i2 += iZzu2;
            } else {
                int i8 = i5 << 3;
                long jLongValue = ((Long) this.zzd[i3]).longValue();
                iZzu = zzafa.zzu(i8);
                iZzv = zzafa.zzv(jLongValue);
            }
            iZzu2 = iZzu + iZzv;
            i2 += iZzu2;
        }
        this.zze = i2;
        return i2;
    }

    public final void zzj(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzagz.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
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

    public final zzaia zzl(zzaia zzaiaVar) {
        if (zzaiaVar.equals(zza)) {
            return this;
        }
        zze();
        int i = this.zzb + zzaiaVar.zzb;
        zzm(i);
        System.arraycopy(zzaiaVar.zzc, 0, this.zzc, this.zzb, zzaiaVar.zzb);
        System.arraycopy(zzaiaVar.zzd, 0, this.zzd, this.zzb, zzaiaVar.zzb);
        this.zzb = i;
        return this;
    }
}
