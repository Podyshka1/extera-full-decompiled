package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzhg extends zzfu {
    protected zzhk zza;
    private final zzhk zzb;

    protected zzhg(zzhk zzhkVar) {
        this.zzb = zzhkVar;
        if (zzhkVar.zzA()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.zza = zzhkVar.zzp();
    }

    private static void zza(Object obj, Object obj2) {
        zziu.zza().zzb(obj.getClass()).zzg(obj, obj2);
    }

    /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final zzhg clone() {
        zzhg zzhgVar = (zzhg) this.zzb.zzd(5, null, null);
        zzhgVar.zza = zzh();
        return zzhgVar;
    }

    public final zzhg zze(zzhk zzhkVar) {
        if (!this.zzb.equals(zzhkVar)) {
            if (!this.zza.zzA()) {
                zzk();
            }
            zza(this.zza, zzhkVar);
        }
        return this;
    }

    public final zzhk zzf() {
        zzhk zzhkVarZzh = zzh();
        if (zzhk.zzz(zzhkVarZzh, true)) {
            return zzhkVarZzh;
        }
        throw new zzji(zzhkVarZzh);
    }

    @Override // com.google.android.gms.internal.play_billing.zzil
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public zzhk zzh() {
        if (!this.zza.zzA()) {
            return this.zza;
        }
        this.zza.zzv();
        return this.zza;
    }

    protected final void zzj() {
        if (this.zza.zzA()) {
            return;
        }
        zzk();
    }

    protected void zzk() {
        zzhk zzhkVarZzp = this.zzb.zzp();
        zza(zzhkVarZzp, this.zza);
        this.zza = zzhkVarZzp;
    }
}
