package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzakm extends zzafv implements zzagy {
    private static final zzakm zzg;
    private static volatile zzahe zzh;
    private int zza;
    private zzalt zze;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzaer zzf = zzaer.zza;

    static {
        zzakm zzakmVar = new zzakm();
        zzg = zzakmVar;
        zzafv.zzL(zzakm.class, zzakmVar);
    }

    private zzakm() {
    }

    public static zzakl zza() {
        return (zzakl) zzg.zzF();
    }

    public final /* synthetic */ void zzb(zzalt zzaltVar) {
        Objects.requireNonNull(zzaltVar);
        this.zze = zzaltVar;
        this.zza |= 2;
    }

    public final /* synthetic */ void zzc(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zza |= 4;
        this.zzf = zzaerVar;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ለ\u0000\u0002ဉ\u0001\u0003ည\u0002", new Object[]{"zza", "zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzakm();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzakl(bArr);
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
        synchronized (zzakm.class) {
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
