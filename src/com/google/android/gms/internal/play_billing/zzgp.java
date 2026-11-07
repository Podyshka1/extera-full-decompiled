package com.google.android.gms.internal.play_billing;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;

/* JADX INFO: loaded from: classes5.dex */
final class zzgp implements zzgv {
    private final zzgl zza;
    private final zzhh zzb;
    private final boolean zzc = false;
    private final zzev zzd;

    private zzgp(zzhh zzhhVar, zzev zzevVar, zzgl zzglVar) {
        this.zzb = zzhhVar;
        this.zzd = zzevVar;
        this.zza = zzglVar;
    }

    public static zzgp zzc(zzhh zzhhVar, zzev zzevVar, zzgl zzglVar) {
        return new zzgp(zzhhVar, zzevVar, zzglVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final int zza(Object obj) {
        int iZzb = ((zzfi) obj).zzc.zzb();
        if (!this.zzc) {
            return iZzb;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final int zzb(Object obj) {
        int iHashCode = ((zzfi) obj).zzc.hashCode();
        if (!this.zzc) {
            return iHashCode;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final Object zze() {
        zzgl zzglVar = this.zza;
        return zzglVar instanceof zzfi ? ((zzfi) zzglVar).zzo() : zzglVar.zzK().zzg();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final void zzf(Object obj) {
        this.zzb.zzb(obj);
        this.zzd.zza(obj);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final void zzg(Object obj, Object obj2) {
        zzgx.zzp(this.zzb, obj, obj2);
        if (this.zzc) {
            zzgx.zzo(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzdw zzdwVar) {
        zzfi zzfiVar = (zzfi) obj;
        if (zzfiVar.zzc == zzhi.zzc()) {
            zzfiVar.zzc = zzhi.zzf();
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final void zzi(Object obj, zzhu zzhuVar) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final boolean zzj(Object obj, Object obj2) {
        if (!((zzfi) obj).zzc.equals(((zzfi) obj2).zzc)) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final boolean zzk(Object obj) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }
}
