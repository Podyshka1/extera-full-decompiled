package com.google.android.recaptcha.internal;

import java.util.List;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzalt extends zzafv implements zzagy {
    private static final zzalt zzf;
    private static volatile zzahe zzg;
    private int zza;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzage zze = zzafv.zzR();

    static {
        zzalt zzaltVar = new zzalt();
        zzf = zzaltVar;
        zzafv.zzL(zzalt.class, zzaltVar);
    }

    private zzalt() {
    }

    public static zzalt zzb(zzaer zzaerVar) {
        return (zzalt) zzafv.zzT(zzf, zzaerVar);
    }

    public static zzalt zzc(byte[] bArr) {
        return (zzalt) zzafv.zzV(zzf, bArr);
    }

    public static zzals zzd() {
        return (zzals) zzf.zzF();
    }

    private final void zzk() {
        zzage zzageVar = this.zze;
        if (zzageVar.zza()) {
            return;
        }
        this.zze = zzafv.zzS(zzageVar);
    }

    public final List zza() {
        return this.zze;
    }

    public final /* synthetic */ void zze(String str) {
        Objects.requireNonNull(str);
        this.zza |= 1;
        this.zzd = str;
    }

    public final /* synthetic */ void zzg(zzalr zzalrVar) {
        Objects.requireNonNull(zzalrVar);
        zzk();
        this.zze.add(zzalrVar);
    }

    public final /* synthetic */ void zzh(Iterable iterable) {
        zzk();
        zzaec.zzy(iterable, this.zze);
    }

    public final /* synthetic */ void zzi() {
        this.zze = zzafv.zzR();
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000", new Object[]{"zza", "zze", zzalr.class, "zzd"});
        }
        if (i2 == 3) {
            return new zzalt();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzals(bArr);
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
        synchronized (zzalt.class) {
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
