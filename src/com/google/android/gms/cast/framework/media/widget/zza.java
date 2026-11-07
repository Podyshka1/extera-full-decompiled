package com.google.android.gms.cast.framework.media.widget;

/* JADX INFO: loaded from: classes4.dex */
public final class zza {
    public final int zza;
    public final int zzb;
    public final boolean zzc;

    public zza(int i, int i2, boolean z) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zza) && this.zza == ((zza) obj).zza;
    }

    public final int hashCode() {
        return Integer.valueOf(this.zza).hashCode();
    }
}
