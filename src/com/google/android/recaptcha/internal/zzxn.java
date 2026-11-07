package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxn extends zzafv implements zzagy {
    private static final zzxn zzf;
    private static volatile zzahe zzg;
    private int zza;
    private int zzd;
    private int zze;

    static {
        zzxn zzxnVar = new zzxn();
        zzf = zzxnVar;
        zzafv.zzL(zzxn.class, zzxnVar);
    }

    private zzxn() {
    }

    public static zzxm zzd() {
        return (zzxm) zzf.zzF();
    }

    public static zzxn zze() {
        return zzf;
    }

    public final zzwp zza() {
        zzwp zzwpVarZzb = zzwp.zzb(this.zza);
        return zzwpVarZzb == null ? zzwp.UNRECOGNIZED : zzwpVarZzb;
    }

    public final zzwp zzb() {
        zzwp zzwpVarZzb = zzwp.zzb(this.zzd);
        return zzwpVarZzb == null ? zzwp.UNRECOGNIZED : zzwpVarZzb;
    }

    public final int zzc() {
        return this.zze;
    }

    public final /* synthetic */ void zzg(zzwp zzwpVar) {
        this.zza = zzwpVar.zza();
    }

    public final /* synthetic */ void zzh(zzwp zzwpVar) {
        this.zzd = zzwpVar.zza();
    }

    public final /* synthetic */ void zzi(int i) {
        this.zze = i;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzf, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u0003\u0004", new Object[]{"zza", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzxn();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzxm(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzg;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzxn.class) {
            try {
                zzafrVar = zzg;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzf);
                    zzg = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
