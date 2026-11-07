package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxc extends zzafv implements zzagy {
    private static final zzxc zze;
    private static volatile zzahe zzf;
    private int zza;
    private zzage zzd = zzafv.zzR();

    static {
        zzxc zzxcVar = new zzxc();
        zze = zzxcVar;
        zzafv.zzL(zzxc.class, zzxcVar);
    }

    private zzxc() {
    }

    public static zzwz zza() {
        return (zzwz) zze.zzF();
    }

    public final /* synthetic */ void zzb(int i) {
        this.zza = i;
    }

    public final /* synthetic */ void zzc(zzxb zzxbVar) {
        Objects.requireNonNull(zzxbVar);
        zzage zzageVar = this.zzd;
        if (!zzageVar.zza()) {
            this.zzd = zzafv.zzS(zzageVar);
        }
        this.zzd.add(zzxbVar);
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zze, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zza", "zzd", zzxb.class});
        }
        if (i2 == 3) {
            return new zzxc();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzwz(bArr);
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
        synchronized (zzxc.class) {
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
