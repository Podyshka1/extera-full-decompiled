package com.google.android.gms.internal.cast;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzwa {
    private static final zzwa zza = new zzwa(0, new int[0], new Object[0], false);
    private int[] zzc;
    private Object[] zzd;
    private boolean zzf;
    private int zze = -1;
    private int zzb = 0;

    private zzwa(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzwa zzc() {
        return zza;
    }

    static zzwa zze(zzwa zzwaVar, zzwa zzwaVar2) {
        int i = zzwaVar.zzb;
        int i2 = zzwaVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzwaVar.zzc, 0);
        System.arraycopy(zzwaVar2.zzc, 0, iArrCopyOf, 0, 0);
        Object[] objArrCopyOf = Arrays.copyOf(zzwaVar.zzd, 0);
        System.arraycopy(zzwaVar2.zzd, 0, objArrCopyOf, 0, 0);
        return new zzwa(0, iArrCopyOf, objArrCopyOf, true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzwa)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return 506991;
    }

    public final int zza() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        this.zze = 0;
        return 0;
    }

    public final int zzb() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        this.zze = 0;
        return 0;
    }

    final zzwa zzd(zzwa zzwaVar) {
        if (zzwaVar.equals(zza)) {
            return this;
        }
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
        int[] iArr = this.zzc;
        int length = iArr.length;
        System.arraycopy(zzwaVar.zzc, 0, iArr, 0, 0);
        System.arraycopy(zzwaVar.zzd, 0, this.zzd, 0, 0);
        this.zzb = 0;
        return this;
    }

    public final void zzf() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    final void zzg(StringBuilder sb, int i) {
    }
}
