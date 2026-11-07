package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzamb extends zzafv implements zzagy {
    private static final zzamb zze;
    private static volatile zzahe zzf;
    private zzage zza = zzafv.zzR();
    private int zzd;

    static {
        zzamb zzambVar = new zzamb();
        zze = zzambVar;
        zzafv.zzL(zzamb.class, zzambVar);
    }

    private zzamb() {
    }

    public static zzamb zza(zzaer zzaerVar) {
        return (zzamb) zzafv.zzT(zze, zzaerVar);
    }

    public static zzaly zzb() {
        return (zzaly) zze.zzF();
    }

    private final void zzh() {
        zzage zzageVar = this.zza;
        if (zzageVar.zza()) {
            return;
        }
        this.zza = zzafv.zzS(zzageVar);
    }

    public final /* synthetic */ void zzc(zzama zzamaVar) {
        Objects.requireNonNull(zzamaVar);
        zzh();
        this.zza.add(zzamaVar);
    }

    public final /* synthetic */ void zzd(Iterable iterable) {
        zzh();
        zzaec.zzy(iterable, this.zza);
    }

    public final /* synthetic */ void zze(int i) {
        this.zzd = i;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zze, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u000b", new Object[]{"zza", zzama.class, "zzd"});
        }
        if (i2 == 3) {
            return new zzamb();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzaly(bArr);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzf;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzamb.class) {
            try {
                zzafrVar = zzf;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zze);
                    zzf = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
