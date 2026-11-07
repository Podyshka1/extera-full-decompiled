package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.util.Log;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
final class zzxb extends SuspendLambda implements Function2 {
    /* synthetic */ Object zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzxi zzc;
    final /* synthetic */ zzxg zzd;
    final /* synthetic */ Context zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzxb(String str, zzxi zzxiVar, zzxg zzxgVar, Context context, Continuation continuation) {
        super(2, continuation);
        this.zzb = str;
        this.zzc = zzxiVar;
        this.zzd = zzxgVar;
        this.zze = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzxb zzxbVar = new zzxb(this.zzb, this.zzc, this.zzd, this.zze, continuation);
        zzxbVar.zza = obj;
        return zzxbVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzxb) create((Map) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        Map map = (Map) this.zza;
        String str = this.zzb;
        zzxi zzxiVar = (zzxi) map.get(str);
        if (zzxiVar != null) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 31);
            sb.append("Overwriting cache with name '");
            sb.append(str);
            sb.append("'.");
            Log.i("CacheFileManager", sb.toString());
            if (!Intrinsics.areEqual(zzxiVar.zzb(), this.zzc.zzb())) {
                zzxg.zzh(this.zzd, this.zze, zzxiVar);
            }
        }
        map.put(str, this.zzc);
        return Unit.INSTANCE;
    }
}
