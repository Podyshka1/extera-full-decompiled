package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
final class zzwt extends SuspendLambda implements Function2 {
    /* synthetic */ Object zza;
    final /* synthetic */ Map zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzwt(Map map, Continuation continuation) {
        super(2, continuation);
        this.zzb = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzwt zzwtVar = new zzwt(this.zzb, continuation);
        zzwtVar.zza = obj;
        return zzwtVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzwt) create((Map) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        Map map = (Map) this.zza;
        map.clear();
        map.putAll(this.zzb);
        return Unit.INSTANCE;
    }
}
