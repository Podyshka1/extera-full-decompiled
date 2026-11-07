package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import android.util.Log;
import java.util.Collection;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
final class zzwv extends SuspendLambda implements Function2 {
    /* synthetic */ Object zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzxg zzc;
    final /* synthetic */ Context zzd;
    final /* synthetic */ zzxi zze;
    final /* synthetic */ Function1 zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzwv(String str, zzxg zzxgVar, Context context, zzxi zzxiVar, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.zzb = str;
        this.zzc = zzxgVar;
        this.zzd = context;
        this.zze = zzxiVar;
        this.zzf = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        zzwv zzwvVar = new zzwv(this.zzb, this.zzc, this.zzd, this.zze, this.zzf, continuation);
        zzwvVar.zza = obj;
        return zzwvVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzwv) create((Map) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            zzxg.zzh(this.zzc, this.zzd, zzxiVar);
        }
        zzxi zzxiVar2 = this.zze;
        map.put(str, zzxiVar2);
        Function1 function1 = this.zzf;
        if (function1 != null) {
            for (zzxi zzxiVar3 : (Collection) function1.invoke(map)) {
                if (Intrinsics.areEqual(zzxiVar3.zza(), zzxiVar2.zza())) {
                    Log.w("CacheFileManager", "Eviction policy attempts to delete cache being written: ".concat(String.valueOf(zzxiVar3.zza())));
                } else {
                    zzxi zzxiVar4 = (zzxi) map.remove(zzxiVar3.zza());
                    if (zzxiVar4 != null) {
                        zzxg.zzh(this.zzc, this.zzd, zzxiVar4);
                    }
                }
            }
        }
        return Unit.INSTANCE;
    }
}
