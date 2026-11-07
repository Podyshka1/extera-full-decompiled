package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzakq extends zzafv implements zzagy {
    private static final zzakq zzf;
    private static volatile zzahe zzg;
    private int zza;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzalt zze;

    static {
        zzakq zzakqVar = new zzakq();
        zzf = zzakqVar;
        zzafv.zzL(zzakq.class, zzakqVar);
    }

    private zzakq() {
    }

    public static zzakp zza() {
        return (zzakp) zzf.zzF();
    }

    public final /* synthetic */ void zzb(zzalt zzaltVar) {
        Objects.requireNonNull(zzaltVar);
        this.zze = zzaltVar;
        this.zza |= 2;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ለ\u0000\u0002ဉ\u0001", new Object[]{"zza", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzakq();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzakp(bArr);
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
        synchronized (zzakq.class) {
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
