package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
final class zzwp extends SuspendLambda implements Function2 {
    int zza;
    final /* synthetic */ zzxg zzb;
    final /* synthetic */ Context zzc;
    final /* synthetic */ String zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzwp(zzxg zzxgVar, Context context, String str, Continuation continuation) {
        super(2, continuation);
        this.zzb = zzxgVar;
        this.zzc = context;
        this.zzd = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zzwp(this.zzb, this.zzc, this.zzd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzwp) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.zza;
        ResultKt.throwOnFailure(obj);
        if (i != 0) {
            return obj;
        }
        zzxg zzxgVar = this.zzb;
        Context context = this.zzc;
        zzwo zzwoVar = new zzwo(this.zzd, zzxgVar, context, null);
        this.zza = 1;
        Object objZzu = zzxgVar.zzu(context, zzwoVar, this);
        return objZzu == coroutine_suspended ? coroutine_suspended : objZzu;
    }
}
