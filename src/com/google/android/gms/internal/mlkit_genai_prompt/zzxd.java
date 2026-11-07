package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
final class zzxd extends SuspendLambda implements Function2 {
    int zza;
    /* synthetic */ Object zzb;
    final /* synthetic */ Function2 zzc;
    final /* synthetic */ zzxg zzd;
    final /* synthetic */ Context zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzxd(Function2 function2, zzxg zzxgVar, Context context, Continuation continuation) {
        super(2, continuation);
        this.zzc = function2;
        this.zzd = zzxgVar;
        this.zze = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzxd zzxdVar = new zzxd(this.zzc, this.zzd, this.zze, continuation);
        zzxdVar.zzb = obj;
        return zzxdVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzxd) create((Map) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Map map;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            map = (Map) this.zzb;
            Function2 function2 = this.zzc;
            this.zzb = map;
            this.zza = 1;
            obj = function2.invoke(map, this);
            if (obj != coroutine_suspended) {
            }
        }
        Object obj2 = this.zzb;
        if (i != 1) {
            ResultKt.throwOnFailure(obj);
            return obj2;
        }
        map = (Map) obj2;
        ResultKt.throwOnFailure(obj);
        zzxg zzxgVar = this.zzd;
        Context context = this.zze;
        this.zzb = obj;
        this.zza = 2;
        return zzxgVar.zzy(context, map, this) != coroutine_suspended ? obj : coroutine_suspended;
    }
}
