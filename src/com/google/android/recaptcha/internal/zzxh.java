package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxh extends zzafv implements zzagy {
    private static final zzxh zzd;
    private static volatile zzahe zze;
    private int zza;

    static {
        zzxh zzxhVar = new zzxh();
        zzd = zzxhVar;
        zzafv.zzL(zzxh.class, zzxhVar);
    }

    private zzxh() {
    }

    public static zzxg zzb() {
        return (zzxg) zzd.zzF();
    }

    public static zzxh zzc() {
        return zzd;
    }

    public final zzwp zza() {
        zzwp zzwpVarZzb = zzwp.zzb(this.zza);
        return zzwpVarZzb == null ? zzwp.UNRECOGNIZED : zzwpVarZzb;
    }

    public final /* synthetic */ void zzd(zzwp zzwpVar) {
        this.zza = zzwpVar.zza();
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzd, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\f", new Object[]{"zza"});
        }
        if (i2 == 3) {
            return new zzxh();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzxg(bArr);
        }
        if (i2 == 5) {
            return zzd;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zze;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzxh.class) {
            try {
                zzafrVar = zze;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzd);
                    zze = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
