package com.google.android.recaptcha.internal;

import android.os.Build;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzey extends SuspendLambda implements Function2 {
    final /* synthetic */ zzez zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzey(zzez zzezVar, Continuation continuation) {
        super(2, continuation);
        this.zza = zzezVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzey(this.zza, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzey) create((zzmg) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzez zzezVar = this.zza;
        int i = Build.VERSION.SDK_INT;
        zzaly zzalyVarZzb = zzamb.zzb();
        zzalz zzalzVarZza = zzama.zza();
        zzalzVarZza.zzc(String.valueOf(i));
        zzalyVarZzb.zzc(CollectionsKt.listOf(zzalzVarZza.zzp()));
        return zzew.zza(zzezVar, (zzamb) zzalyVarZzb.zzp());
    }
}
