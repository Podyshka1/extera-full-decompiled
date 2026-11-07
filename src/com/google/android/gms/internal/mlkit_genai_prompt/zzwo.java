package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
final class zzwo extends SuspendLambda implements Function2 {
    /* synthetic */ Object zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzxg zzc;
    final /* synthetic */ Context zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzwo(String str, zzxg zzxgVar, Context context, Continuation continuation) {
        super(2, continuation);
        this.zzb = str;
        this.zzc = zzxgVar;
        this.zzd = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzwo zzwoVar = new zzwo(this.zzb, this.zzc, this.zzd, continuation);
        zzwoVar.zza = obj;
        return zzwoVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzwo) create((Map) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        zzxi zzxiVar = (zzxi) ((Map) this.zza).remove(this.zzb);
        return zzxiVar != null ? Boxing.boxBoolean(zzxg.zzh(this.zzc, this.zzd, zzxiVar)) : Boxing.boxBoolean(false);
    }
}
