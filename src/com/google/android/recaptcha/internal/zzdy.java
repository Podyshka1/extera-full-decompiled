package com.google.android.recaptcha.internal;

import android.app.Application;
import com.google.android.gms.recaptchabase.RecaptchaBaseClient;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes5.dex */
public final class zzdy extends zzcl {
    private final Application zza;
    private Deferred zzb;
    private final zzhr zzc;

    public zzdy(Application application, zzhr zzhrVar, RecaptchaBaseClient recaptchaBaseClient) {
        this.zza = application;
        this.zzc = zzhrVar;
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final Object zzb(zzakg zzakgVar, Continuation continuation) {
        return new zzmc(new zzdx(this, zzakgVar, null));
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final Object zzc(String str, zzaka zzakaVar, Continuation continuation) {
        return new zzmc(new zzdw(this, zzakaVar, str, null));
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final Object zzd(String str, Continuation continuation) {
        zzakt zzaktVarZza = zzaku.zza();
        zzaktVarZza.zza(str);
        return zzaktVarZza.zzp();
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final int zzf() {
        return 39;
    }

    @Override // com.google.android.recaptcha.internal.zzcl
    public final int zzg() {
        return 40;
    }
}
