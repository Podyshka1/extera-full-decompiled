package com.google.android.recaptcha.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcz {
    final /* synthetic */ zzdo zza;
    private final String zzb;
    private final Deferred zzc;
    private final zzaka zzd;
    private zzaka zze;
    private boolean zzf = true;

    public zzcz(zzdo zzdoVar, String str, Deferred deferred, zzaka zzakaVar) {
        this.zza = zzdoVar;
        this.zzb = str;
        this.zzc = deferred;
        this.zzd = zzakaVar;
        this.zze = zzakaVar;
    }

    public final boolean zza(String str) {
        zzaka zzakaVar = this.zze;
        return Intrinsics.areEqual(zzakaVar != null ? zzakaVar.zza() : null, str);
    }
}
