package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public final class zziz {
    private final zziv zza;
    private final zzio zzb;
    private final zzlg zzc;
    private zzdp zzd;

    public zziz(zziv zzivVar, zzio zzioVar, zzlg zzlgVar) {
        this.zza = zzivVar;
        this.zzb = zzioVar;
        this.zzc = zzlgVar;
    }

    public final Object zza(long j, long j2, Continuation continuation) {
        return new zzmc(new zziy(this, j, j2, null));
    }

    public final Object zzb(String str, String str2, zzakg zzakgVar, long j, String str3, Continuation continuation) {
        return new zzmc(new zzix(this, str, str2, zzakgVar, j, null, null));
    }
}
