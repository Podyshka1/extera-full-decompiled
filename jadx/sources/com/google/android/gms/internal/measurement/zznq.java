package com.google.android.gms.internal.measurement;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;

/* JADX INFO: loaded from: classes4.dex */
final class zznq implements zznx {
    private final zznm zza;
    private final zzoi zzb;
    private final boolean zzc = false;
    private final zzls zzd;

    private zznq(zzoi zzoiVar, zzls zzlsVar, zznm zznmVar) {
        this.zzb = zzoiVar;
        this.zzd = zzlsVar;
        this.zza = zznmVar;
    }

    static zznq zzg(zzoi zzoiVar, zzls zzlsVar, zznm zznmVar) {
        return new zznq(zzoiVar, zzlsVar, zznmVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final Object zza() {
        zznm zznmVar = this.zza;
        return zznmVar instanceof zzmf ? ((zzmf) zznmVar).zzch() : zznmVar.zzcC().zzbf();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzb(Object obj, Object obj2) {
        if (!((zzmf) obj).zzc.equals(((zzmf) obj2).zzc)) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final int zzc(Object obj) {
        int iHashCode = ((zzmf) obj).zzc.hashCode();
        if (!this.zzc) {
            return iHashCode;
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final void zzd(Object obj, Object obj2) {
        zznz.zzD(this.zzb, obj, obj2);
        if (this.zzc) {
            zznz.zzC(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final int zze(Object obj) {
        int iZzh = ((zzmf) obj).zzc.zzh();
        if (!this.zzc) {
            return iZzh;
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final void zzf(Object obj, zzov zzovVar) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzkw zzkwVar) {
        zzmf zzmfVar = (zzmf) obj;
        if (zzmfVar.zzc == zzoj.zza()) {
            zzmfVar.zzc = zzoj.zzb();
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final void zzj(Object obj) {
        this.zzb.zzb(obj);
        this.zzd.zza(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzk(Object obj) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }
}
