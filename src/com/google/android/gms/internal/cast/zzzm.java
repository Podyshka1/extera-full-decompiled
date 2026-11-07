package com.google.android.gms.internal.cast;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;

/* JADX INFO: loaded from: classes4.dex */
final class zzzm implements zzzs {
    private final zzzi zza;
    private final zzaad zzb;
    private final boolean zzc = false;
    private final zzxs zzd;

    private zzzm(zzaad zzaadVar, zzxs zzxsVar, zzzi zzziVar) {
        this.zzb = zzaadVar;
        this.zzd = zzxsVar;
        this.zza = zzziVar;
    }

    public static zzzm zzi(zzaad zzaadVar, zzxs zzxsVar, zzzi zzziVar) {
        return new zzzm(zzaadVar, zzxsVar, zzziVar);
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final Object zza() {
        zzzi zzziVar = this.zza;
        return zzziVar instanceof zzyd ? ((zzyd) zzziVar).zzy() : zzziVar.zzO().zzw();
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final boolean zzb(Object obj, Object obj2) {
        if (!((zzyd) obj).zzc.equals(((zzyd) obj2).zzc)) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final int zzc(Object obj) {
        int iHashCode = ((zzyd) obj).zzc.hashCode();
        if (!this.zzc) {
            return iHashCode;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final void zzd(Object obj, Object obj2) {
        zzzu.zzE(this.zzb, obj, obj2);
        if (this.zzc) {
            zzzu.zzD(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final int zze(Object obj) {
        int iZze = ((zzyd) obj).zzc.zze();
        if (!this.zzc) {
            return iZze;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final void zzf(Object obj, zzaar zzaarVar) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final void zzg(Object obj) {
        this.zzb.zza(obj);
        this.zzd.zza(obj);
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final boolean zzh(Object obj) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }
}
