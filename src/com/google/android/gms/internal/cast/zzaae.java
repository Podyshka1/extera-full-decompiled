package com.google.android.gms.internal.cast;

import java.util.Arrays;
import org.mvel2.asm.Type$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaae {
    private static final zzaae zza = new zzaae(0, new int[0], new Object[0], false);
    private int[] zzc;
    private Object[] zzd;
    private boolean zzf;
    private int zze = -1;
    private int zzb = 0;

    private zzaae(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzaae zza() {
        return zza;
    }

    public static zzaae zzb(zzaae zzaaeVar, zzaae zzaaeVar2) {
        int i = zzaaeVar.zzb;
        int i2 = zzaaeVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzaaeVar.zzc, 0);
        System.arraycopy(zzaaeVar2.zzc, 0, iArrCopyOf, 0, 0);
        Object[] objArrCopyOf = Arrays.copyOf(zzaaeVar.zzd, 0);
        System.arraycopy(zzaaeVar2.zzd, 0, objArrCopyOf, 0, 0);
        return new zzaae(0, iArrCopyOf, objArrCopyOf, true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzaae)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return 506991;
    }

    public final void zzc() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    public final int zze() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        this.zze = 0;
        return 0;
    }

    public final int zzf() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        this.zze = 0;
        return 0;
    }

    public final void zzg(StringBuilder sb, int i) {
    }

    public final zzaae zzh(zzaae zzaaeVar) {
        if (zzaaeVar.equals(zza)) {
            return this;
        }
        if (!this.zzf) {
            Type$$ExternalSyntheticBUOutline0.m864m();
            return null;
        }
        int[] iArr = this.zzc;
        int length = iArr.length;
        System.arraycopy(zzaaeVar.zzc, 0, iArr, 0, 0);
        System.arraycopy(zzaaeVar.zzd, 0, this.zzd, 0, 0);
        this.zzb = 0;
        return this;
    }
}
