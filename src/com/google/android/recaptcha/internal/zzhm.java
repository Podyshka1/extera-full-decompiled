package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes5.dex */
final class zzhm extends ContinuationImpl {
    long zza;
    double zzb;
    Object zzc;
    int zzd;
    int zze;
    /* synthetic */ Object zzf;
    final /* synthetic */ zzhp zzg;
    int zzh;
    Ref.LongRef zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzhm(zzhp zzhpVar, Continuation continuation) {
        super(continuation);
        this.zzg = zzhpVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.zzf = obj;
        this.zzh |= Integer.MIN_VALUE;
        return this.zzg.zza(0, 0L, 0L, 0.0d, null, this);
    }
}
