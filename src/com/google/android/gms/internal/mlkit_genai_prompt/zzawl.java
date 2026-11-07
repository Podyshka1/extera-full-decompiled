package com.google.android.gms.internal.mlkit_genai_prompt;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class zzawl {
    static final zzawl zza = new zzawl(true);
    private static volatile zzawl zzd;
    private final Map zze = Collections.EMPTY_MAP;

    public static zzawl zzb() {
        int i = zzavq.$r8$clinit;
        return zza;
    }

    public static zzawl zzc() {
        zzawl zzawlVar = zzd;
        if (zzawlVar != null) {
            return zzawlVar;
        }
        synchronized (zzawl.class) {
            try {
                zzawl zzawlVar2 = zzd;
                if (zzawlVar2 != null) {
                    return zzawlVar2;
                }
                int i = zzavq.$r8$clinit;
                zzawl zzawlVarZzb = zzaws.zzb(zzawl.class);
                zzd = zzawlVarZzb;
                return zzawlVarZzb;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzawx zzd(zzaxw zzaxwVar, int i) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.zze.get(new zzawk(zzaxwVar, i)));
        return null;
    }

    public zzawl(boolean z) {
    }
}
