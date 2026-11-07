package com.google.android.recaptcha.internal;

import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zznn implements zzoo {
    private final zzno zza;

    public zznn(zzno zznoVar) {
        this.zza = zznoVar;
    }

    @Override // com.google.android.recaptcha.internal.zzoo
    public final Object zzb(String str, String str2, Continuation continuation) {
        Object objZza = this.zza.zza(MapsKt.mapOf(TuplesKt.to(str, str2)), continuation);
        return objZza == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZza : Unit.INSTANCE;
    }

    @Override // com.google.android.recaptcha.internal.zzoo
    public final Object zzc(String str, Continuation continuation) {
        return this.zza.zzb(str, continuation);
    }
}
