package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzaau {
    static {
        int i = zzxf.zza;
        try {
            zza();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    public static void zza() throws GeneralSecurityException {
        zzzp.zzb();
        zzzr.zzb();
        zzyf.zza(true);
        zzaad.zza(true);
        zzaap.zza(true);
        if (zztf.zza()) {
            return;
        }
        zzyn.zza(true);
    }
}
