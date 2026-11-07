package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxr extends zzafv implements zzagy {
    private static final zzxr zzh;
    private static volatile zzahe zzi;
    private int zza;
    private int zzd;
    private zzxn zze;
    private zzaer zzf;
    private zzaer zzg;

    static {
        zzxr zzxrVar = new zzxr();
        zzh = zzxrVar;
        zzafv.zzL(zzxr.class, zzxrVar);
    }

    private zzxr() {
        zzaer zzaerVar = zzaer.zza;
        this.zzf = zzaerVar;
        this.zzg = zzaerVar;
    }

    public static zzxr zze(zzaer zzaerVar, zzafh zzafhVar) {
        return (zzxr) zzafv.zzU(zzh, zzaerVar, zzafhVar);
    }

    public static zzxq zzg() {
        return (zzxq) zzh.zzF();
    }

    public static zzxr zzh() {
        return zzh;
    }

    public static zzahe zzi() {
        return (zzahe) zzh.zzf(7, null, null);
    }

    public final int zza() {
        return this.zzd;
    }

    public final zzxn zzb() {
        zzxn zzxnVar = this.zze;
        return zzxnVar == null ? zzxn.zze() : zzxnVar;
    }

    public final zzaer zzc() {
        return this.zzf;
    }

    public final zzaer zzd() {
        return this.zzg;
    }

    public final /* synthetic */ void zzj(int i) {
        this.zzd = 0;
    }

    public final /* synthetic */ void zzk(zzxn zzxnVar) {
        Objects.requireNonNull(zzxnVar);
        this.zze = zzxnVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void zzl(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzf = zzaerVar;
    }

    public final /* synthetic */ void zzm(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zzg = zzaerVar;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzh, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n\u0004\n", new Object[]{"zza", "zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzxr();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzxq(bArr);
        }
        if (i2 == 5) {
            return zzh;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzi;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzxr.class) {
            try {
                zzafrVar = zzi;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzh);
                    zzi = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
