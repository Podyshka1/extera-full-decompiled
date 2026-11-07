package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzajl extends zzafv implements zzagy {
    private static final zzajl zzg;
    private static volatile zzahe zzh;
    private int zza;
    private zzage zzd = zzafv.zzR();
    private zzage zze = zzafv.zzR();
    private zzaiy zzf;

    static {
        zzajl zzajlVar = new zzajl();
        zzg = zzajlVar;
        zzafv.zzL(zzajl.class, zzajlVar);
    }

    private zzajl() {
    }

    public static zzajk zzc() {
        return (zzajk) zzg.zzF();
    }

    public final int zza() {
        return this.zzd.size();
    }

    public final int zzb() {
        return this.zze.size();
    }

    public final /* synthetic */ void zzd(zzajj zzajjVar) {
        Objects.requireNonNull(zzajjVar);
        zzage zzageVar = this.zzd;
        if (!zzageVar.zza()) {
            this.zzd = zzafv.zzS(zzageVar);
        }
        this.zzd.add(zzajjVar);
    }

    public final /* synthetic */ void zze(zzajt zzajtVar) {
        Objects.requireNonNull(zzajtVar);
        zzage zzageVar = this.zze;
        if (!zzageVar.zza()) {
            this.zze = zzafv.zzS(zzageVar);
        }
        this.zze.add(zzajtVar);
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzg, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003ဉ\u0000", new Object[]{"zza", "zzd", zzajj.class, "zze", zzajt.class, "zzf"});
        }
        if (i2 == 3) {
            return new zzajl();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzajk(bArr);
        }
        if (i2 == 5) {
            return zzg;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzh;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzajl.class) {
            try {
                zzafrVar = zzh;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzg);
                    zzh = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
