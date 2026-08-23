package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzvb implements zzvi {
    private final zzux zza;
    private final zzvz zzb;
    private final boolean zzc;
    private final zztf zzd;

    private zzvb(zzvz zzvzVar, zztf zztfVar, zzux zzuxVar) {
        this.zzb = zzvzVar;
        this.zzc = zztfVar.zzc(zzuxVar);
        this.zzd = zztfVar;
        this.zza = zzuxVar;
    }

    static zzvb zzi(zzvz zzvzVar, zztf zztfVar, zzux zzuxVar) {
        return new zzvb(zzvzVar, zztfVar, zzuxVar);
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final int zza(Object obj) {
        zzvz zzvzVar = this.zzb;
        int iZzb = zzvzVar.zzb(zzvzVar.zzc(obj));
        if (!this.zzc) {
            return iZzb;
        }
        this.zzd.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final int zzb(Object obj) {
        int iHashCode = this.zzb.zzc(obj).hashCode();
        if (!this.zzc) {
            return iHashCode;
        }
        this.zzd.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final Object zzc() {
        zzux zzuxVar = this.zza;
        return zzuxVar instanceof zztp ? ((zztp) zzuxVar).zzx() : zzuxVar.zzC().zzs();
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final void zzd(Object obj) {
        this.zzb.zze(obj);
        this.zzd.zzb(obj);
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final void zze(Object obj, Object obj2) {
        zzvk.zzo(this.zzb, obj, obj2);
        if (this.zzc) {
            this.zzd.zza(obj2);
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final void zzf(Object obj, zzwq zzwqVar) {
        this.zzd.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final boolean zzg(Object obj, Object obj2) {
        zzvz zzvzVar = this.zzb;
        if (!zzvzVar.zzc(obj).equals(zzvzVar.zzc(obj2))) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        this.zzd.zza(obj);
        this.zzd.zza(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzvi
    public final boolean zzh(Object obj) {
        this.zzd.zza(obj);
        throw null;
    }
}
