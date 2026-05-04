package com.google.android.gms.internal.measurement;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlr {
    static final zzlr zza = new zzlr(true);
    private static volatile zzlr zzd;
    private final Map zze = Collections.EMPTY_MAP;

    public static zzlr zza() {
        zzlr zzlrVar = zzd;
        if (zzlrVar != null) {
            return zzlrVar;
        }
        synchronized (zzlr.class) {
            try {
                zzlr zzlrVar2 = zzd;
                if (zzlrVar2 != null) {
                    return zzlrVar2;
                }
                int i = zznu.$r8$clinit;
                zzlr zzlrVarZzb = zzlz.zzb(zzlr.class);
                zzd = zzlrVarZzb;
                return zzlrVarZzb;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzme zzb(zznm zznmVar, int i) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(this.zze.get(new zzlq(zznmVar, i)));
        return null;
    }

    zzlr(boolean z) {
    }
}
