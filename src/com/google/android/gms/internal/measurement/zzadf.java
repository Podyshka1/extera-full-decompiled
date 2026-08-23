package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzadf {
    static final zzadf zza = new zzadf(true);
    private static volatile zzadf zzd;
    private final Map zze = Collections.EMPTY_MAP;

    public static zzadf zza() {
        int i = zzacf.$r8$clinit;
        return zza;
    }

    public static zzadf zzb() {
        zzadf zzadfVar = zzd;
        if (zzadfVar != null) {
            return zzadfVar;
        }
        synchronized (zzadf.class) {
            try {
                zzadf zzadfVar2 = zzd;
                if (zzadfVar2 != null) {
                    return zzadfVar2;
                }
                int i = zzacf.$r8$clinit;
                zzadf zzadfVarZzb = zzadn.zzb(zzadf.class);
                zzd = zzadfVarZzb;
                return zzadfVarZzb;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzadt zzc(zzafc zzafcVar, int i) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.zze.get(new zzade(zzafcVar, i)));
        return null;
    }

    public zzadf(boolean z) {
    }
}
