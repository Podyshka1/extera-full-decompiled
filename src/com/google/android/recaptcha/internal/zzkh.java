package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaAction;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes5.dex */
public final class zzkh implements zzkn {
    private zzkm zza = zzkm.zza;
    private zzakg zzb;
    private final zziz zzc;

    public zzkh(zziz zzizVar) {
        this.zzc = zzizVar;
    }

    @Override // com.google.android.recaptcha.internal.zzkn
    public final Object zzb(long j, Continuation continuation) {
        return new zzmc(new zzkg(this, j, null));
    }

    @Override // com.google.android.recaptcha.internal.zzkn
    public final Object zzc(String str, RecaptchaAction recaptchaAction, long j, String str2, Continuation continuation) {
        return new zzmc(new zzkf(this, str, recaptchaAction, j, null, null));
    }
}
