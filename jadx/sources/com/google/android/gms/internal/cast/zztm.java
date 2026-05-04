package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zztm extends zzsg {
    protected zztp zza;
    private final zztp zzb;

    protected zztm(zztp zztpVar) {
        this.zzb = zztpVar;
        if (zztpVar.zzK()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.zza = zztpVar.zzx();
    }

    private static void zza(Object obj, Object obj2) {
        zzvf.zza().zzb(obj.getClass()).zze(obj, obj2);
    }

    /* JADX INFO: renamed from: zzo, reason: merged with bridge method [inline-methods] */
    public final zztm clone() {
        zztm zztmVar = (zztm) this.zzb.zzb(5, null, null);
        zztmVar.zza = zzs();
        return zztmVar;
    }

    public final zztm zzp(zztp zztpVar) {
        if (!this.zzb.equals(zztpVar)) {
            if (!this.zza.zzK()) {
                zzv();
            }
            zza(this.zza, zztpVar);
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
    
        if (r3 != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zztp zzq() {
        zztp zztpVarZzs = zzs();
        byte bByteValue = ((Byte) zztpVarZzs.zzb(1, null, null)).byteValue();
        if (bByteValue != 1) {
            if (bByteValue != 0) {
                boolean zZzh = zzvf.zza().zzb(zztpVarZzs.getClass()).zzh(zztpVarZzs);
                zztpVarZzs.zzb(2, true != zZzh ? null : zztpVarZzs, null);
            }
            throw new zzvy(zztpVarZzs);
        }
        return zztpVarZzs;
    }

    @Override // com.google.android.gms.internal.cast.zzuw
    /* JADX INFO: renamed from: zzr, reason: merged with bridge method [inline-methods] */
    public zztp zzs() {
        if (!this.zza.zzK()) {
            return this.zza;
        }
        this.zza.zzF();
        return this.zza;
    }

    protected final void zzu() {
        if (this.zza.zzK()) {
            return;
        }
        zzv();
    }

    protected void zzv() {
        zztp zztpVarZzx = this.zzb.zzx();
        zza(zztpVarZzx, this.zza);
        this.zza = zztpVarZzx;
    }
}
