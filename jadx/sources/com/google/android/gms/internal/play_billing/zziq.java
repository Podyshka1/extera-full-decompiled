package com.google.android.gms.internal.play_billing;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;

/* JADX INFO: loaded from: classes4.dex */
final class zziq implements zzix {
    private final zzim zza;
    private final zzjj zzb;
    private final boolean zzc = false;
    private final zzgx zzd;

    private zziq(zzjj zzjjVar, zzgx zzgxVar, zzim zzimVar) {
        this.zzb = zzjjVar;
        this.zzd = zzgxVar;
        this.zza = zzimVar;
    }

    static zziq zzc(zzjj zzjjVar, zzgx zzgxVar, zzim zzimVar) {
        return new zziq(zzjjVar, zzgxVar, zzimVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final int zza(Object obj) {
        int iZzb = ((zzhk) obj).zzc.zzb();
        if (!this.zzc) {
            return iZzb;
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final int zzb(Object obj) {
        int iHashCode = ((zzhk) obj).zzc.hashCode();
        if (!this.zzc) {
            return iHashCode;
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final Object zze() {
        zzim zzimVar = this.zza;
        return zzimVar instanceof zzhk ? ((zzhk) zzimVar).zzp() : zzimVar.zzI().zzh();
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzf(Object obj) {
        this.zzb.zza(obj);
        this.zzd.zza(obj);
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzg(Object obj, Object obj2) {
        zziz.zzp(this.zzb, obj, obj2);
        if (this.zzc) {
            zziz.zzo(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzfz zzfzVar) {
        zzhk zzhkVar = (zzhk) obj;
        if (zzhkVar.zzc == zzjk.zzc()) {
            zzhkVar.zzc = zzjk.zzf();
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final void zzi(Object obj, zzjw zzjwVar) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final boolean zzj(Object obj, Object obj2) {
        if (!((zzhk) obj).zzc.equals(((zzhk) obj2).zzc)) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzix
    public final boolean zzk(Object obj) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        throw null;
    }
}
