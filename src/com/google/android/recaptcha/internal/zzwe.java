package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzwe extends zzafv implements zzagy {
    private static final zzwe zzf;
    private static volatile zzahe zzg;
    private int zza;
    private int zzd;
    private int zze;

    static {
        zzwe zzweVar = new zzwe();
        zzf = zzweVar;
        zzafv.zzL(zzwe.class, zzweVar);
    }

    private zzwe() {
    }

    public static zzwd zzb() {
        return (zzwd) zzf.zzF();
    }

    public static zzwe zzc() {
        return zzf;
    }

    public final zzwp zza() {
        zzwp zzwpVarZzb = zzwp.zzb(this.zza);
        return zzwpVarZzb == null ? zzwp.UNRECOGNIZED : zzwpVarZzb;
    }

    public final /* synthetic */ void zzd(zzwp zzwpVar) {
        this.zza = zzwpVar.zza();
    }

    public final int zzg() {
        int i = this.zzd;
        int i2 = i != 0 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? 0 : 7 : 6 : 5 : 4 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final int zzh() {
        int i = this.zze;
        int i2 = i != 0 ? i != 1 ? i != 2 ? 0 : 4 : 3 : 2;
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public final /* synthetic */ void zzi(int i) {
        this.zzd = zzwo.zza(i);
    }

    public final /* synthetic */ void zzj(int i) {
        this.zze = zzwj.zza(i);
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzf, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u0003\f", new Object[]{"zza", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzwe();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzwd(bArr);
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
        synchronized (zzwe.class) {
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
