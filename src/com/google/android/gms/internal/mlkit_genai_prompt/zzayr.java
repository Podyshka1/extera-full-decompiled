package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Arrays;
import org.mvel2.asm.Type$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public final class zzayr {
    private static final zzayr zza = new zzayr(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private boolean zze;

    private zzayr(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = z;
    }

    public static zzayr zza() {
        return zza;
    }

    public static zzayr zzb() {
        return new zzayr(0, new int[8], new Object[8], true);
    }

    public static zzayr zzc(zzayr zzayrVar, zzayr zzayrVar2) {
        int i = zzayrVar.zzb + zzayrVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzayrVar.zzc, i);
        System.arraycopy(zzayrVar2.zzc, 0, iArrCopyOf, zzayrVar.zzb, zzayrVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzayrVar.zzd, i);
        System.arraycopy(zzayrVar2.zzd, 0, objArrCopyOf, zzayrVar.zzb, zzayrVar2.zzb);
        return new zzayr(i, iArrCopyOf, objArrCopyOf, true);
    }

    private final void zzi(int i) {
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
        if (obj == null || !(obj instanceof zzayr)) {
            return false;
        }
        zzayr zzayrVar = (zzayr) obj;
        int i = this.zzb;
        if (i == zzayrVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzayrVar.zzc;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzayrVar.zzd;
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
        if (this.zze) {
            this.zze = false;
        }
    }

    public final void zze() {
        if (this.zze) {
            return;
        }
        Type$$ExternalSyntheticBUOutline0.m960m();
    }

    public final void zzf(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzaxy.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    public final void zzg(int i, Object obj) {
        zze();
        zzi(this.zzb + 1);
        int[] iArr = this.zzc;
        int i2 = this.zzb;
        iArr[i2] = i;
        this.zzd[i2] = obj;
        this.zzb = i2 + 1;
    }

    public final zzayr zzh(zzayr zzayrVar) {
        if (zzayrVar.equals(zza)) {
            return this;
        }
        zze();
        int i = this.zzb + zzayrVar.zzb;
        zzi(i);
        System.arraycopy(zzayrVar.zzc, 0, this.zzc, this.zzb, zzayrVar.zzb);
        System.arraycopy(zzayrVar.zzd, 0, this.zzd, this.zzb, zzayrVar.zzb);
        this.zzb = i;
        return this;
    }
}
